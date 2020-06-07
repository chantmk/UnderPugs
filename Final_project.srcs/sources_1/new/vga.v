`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2020 10:55:29 AM
// Design Name: 
// Module Name: vga
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// https://embeddedthoughts.com/2016/12/09/yoshis-nightmare-fpga-based-video-game/
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module vga(
	input clk
	,input  reset
	,input [2:0] screen_state
	,input [9:0] xPlayer
	,input [9:0] yPlayer
	,input [6:0] hpPlayer
	,input [6:0] hpMonster //min 0 max 100
	,input [59:0] pos
	,input [1:0] pugType
	,input [1:0] milkStatus
    ,output Hsync
    ,output Vsync
    ,output [3:0] vgaRed
    ,output [3:0] vgaGreen
    ,output [3:0] vgaBlue
	); 
	
    localparam BG_COLOR = 12'b000000000000 ;
    
//    reg [11:0] rgb_reg;
	wire video_on;
    wire p_tick;
    wire [9:0] x,y;
        
    vga_sync vga_sync_unit (
        .clk(clk), 
        .reset(reset), 
        .hsync(Hsync), 
        .vsync(Vsync),
        .video_on(video_on), 
        .p_tick(p_tick), 
        .x(x), 
        .y(y)
    );

    wire [7:0] data_start;
//    startScreen ss(
//        .clk(clk),
//        .p_tick(p_tick),
//        .x(x),
//        .y(y),
//        .data(data_start)
//    );
        
    wire [7:0] data_title;
//    titleScreen ts(
//        .clk(clk),
//        .p_tick(p_tick),
//        .x(x),
//        .y(y),
//        .data(data_title)
//        );
        
        
    wire [7:0] data_map;
    mapScreen ms(
        .clk(clk),
        .p_tick(p_tick),
        .x(x),
        .y(y),
        .xPlayer(xPlayer),
        .yPlayer(yPlayer),
        .milkStatus(milkStatus),
        .data(data_map)
        );
    wire [7:0] data_play;
    playScreen ps(
        .clk(clk),
        .p_tick(p_tick),
        .screen_state(screen_state),
        .x(x),
        .y(y),
        .xPlayer(xPlayer),
        .yPlayer(yPlayer),
        .pugType(pugType),
        .hpPlayer(hpPlayer),
        .hpMonster(hpMonster),
        .pos(pos),
        .data(data_play)
        );
        
    reg [7:0] data;
    wire [11:0] rgb;
    paletteROM #(
        .PALETTEFILE("pal24bit.mem"),
        .DEPTH(192)
        ) pal (
        .clk(clk),
        .data(data),
        .color(rgb)
        );
    
    always @(posedge clk)
    begin
        case(screen_state)
        3'b000: data <= data_start;
        3'b001: data <= 0;
        3'b010: data <= data_title;
        3'b011: data <= data_play;
        3'b100: data <= data_map;
        3'b101: data <= data_play;
        3'b110: data <= data_play;
        default: data <= 0;
        endcase
    end
    
    // output
    assign {vgaRed,vgaGreen,vgaBlue} = (video_on) ? rgb : BG_COLOR; //black
endmodule