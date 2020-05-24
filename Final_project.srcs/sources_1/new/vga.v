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
	,input screen_state
    ,output Hsync
    ,output Vsync
    ,output [3:0] vgaRed
    ,output [3:0] vgaGreen
    ,output [3:0] vgaBlue
	); 
	
    localparam BG_COLOR = 12'b000000000000 ;
    
    reg [11:0] rgb_reg = BG_COLOR;
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

    wire [11:0] rgb_start = BG_COLOR;
    startScreen ss(
        .clk(clk),
        .p_tick(p_tick),
        .x(x),
        .y(y),
        .rgb(rgb_start)
    );
    
    wire [11:0] rgb_mode = BG_COLOR;
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

    wire [11:0] rgb_map = BG_COLOR;
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

    wire [11:0] rgb_atk = BG_COLOR;
//    atkscreen as(
//        .clk(clk),
//        .p_tick(p_tick),
//        .x(x),
//        .y(y),
//        .hpPlayer(hpPlayer),
//        .xPlayer(xPlayer),
//        .yPlayer(yPlayer),
//        .hpMonster(hpMonster),
//        .rgb(rgb_atk)
//    );

    wire [11:0] rgb_def = BG_COLOR;
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
        always @(screen_state)
        begin
            case(screen_state)
            0: rgb_reg <= rgb_start;
            1: rgb_reg <= rgb_mode;
            2: rgb_reg <= rgb_map;
            3: rgb_reg <= rgb_atk;
            4: rgb_reg <= rgb_def;
            endcase
        end
        // output
        assign {vgaRed,vgaGreen,vgaBlue} = (video_on) ? rgb_reg : BG_COLOR; //black
endmodule