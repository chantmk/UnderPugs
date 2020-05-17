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
	reg [11:0] rgb_reg;
	wire video_on;
    wire p_tick;
    wire [9:0] x,y;
    
    localparam TITLE_POS_X = 0 ;
    localparam TITLE_POS_Y = 0 ;
    localparam NAME_BLOCK_POS_X = 0 ;
    localparam NAME_BLOCK_POS_Y = 0 ;
    localparam TEXT_HEIGHT = 16 ;
    localparam TEXT_WIDTH = 8 ;
    localparam TEXT_SPACE = 2 ;
    
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
   
        // rgb buffer
        always @(posedge p_tick)
        begin      
        end
        // output
        assign {vgaRed,vgaGreen,vgaBlue} = (video_on) ? rgb_reg : 12'b000000001111; //blue
endmodule