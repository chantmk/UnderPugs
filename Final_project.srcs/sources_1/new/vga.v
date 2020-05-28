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
// 
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
	,input pos
    ,output Hsync
    ,output Vsync
    ,output [3:0] vgaRed
    ,output [3:0] vgaGreen
    ,output [3:0] vgaBlue
	); 
	
    localparam BG_COLOR = 12'b000000000000 ;
    
    reg [11:0] rgb_reg;
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

    wire [11:0] rgb_start;
//    startScreen ss(
//        .clk(clk),
//        .p_tick(p_tick),
//        .x(x),
//        .y(y),
//        .rgb(rgb_start)
//    );
    
    wire [11:0] rgb_mode;
//    modeScreen mds(
//        .clk(clk),
//        .p_tick(p_tick),
//        .x(x),
//        .y(y),
//        .hpPlayer(hpPlayer),
//        .xPlayer(xPlayer),
//        .yPlayer(yPlayer),
//        .rgb(rgb_mode)
//    );

    wire [11:0] rgb_map;
//    mapScreen ms(
//        .clk(clk),
//        .p_tick(p_tick),
//        .x(x),
//        .y(y),
//        .hpPlayer(hpPlayer),
//        .xPlayer(xPlayer),
//        .yPlayer(yPlayer),
//        .pos(posMon),
//        .rgb(rgb_map)
//    );

    wire [11:0] rgb_atk;
    atkScreen as(
        .clk(clk),
        .p_tick(p_tick),
        .x(x),
        .y(y),
        .xPlayer(xPlayer),
        .yPlayer(yPlayer),
        .hpMonster(hpMonster),
        .rgb(rgb_atk)
    );

    wire [11:0] rgb_def;
//    defScreen ds(
//        .clk(clk),
//        .p_tick(p_tick),
//        .x(x),
//        .y(y),
//        .hpPlayer(hpPlayer),
//        .xPlayer(xPlayer),
//        .yPlayer(yPlayer),
//        .hpMonster(hpMonster),
//        .rgb(rgb_def)
//    );

        // rgb buffer
        always @(posedge clk)
        begin
            case(screen_state)
            3'b000: rgb_reg <= rgb_start;
            3'b001: rgb_reg <= rgb_mode;
            3'b010: rgb_reg <= rgb_map;
            3'b011: rgb_reg <= rgb_atk;
            3'b100: rgb_reg <= rgb_def;
            endcase
        end
        // output
        assign {vgaRed,vgaGreen,vgaBlue} = (video_on) ? rgb_reg : BG_COLOR; //black
endmodule