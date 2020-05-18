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
    startScreen ss(
        .clk(clk),
        .p_tick(p_tick),
        .x(x),
        .y(y),
        .rgb(rgb_start)
    );

        
        // rgb buffer
        always @(posedge p_tick)
        begin
            if (screen_state == 0) //start screen
            begin
                rgb_reg <= rgb_start;
            end
            else if(screen_state == 1) //choose action screen
            begin
            end
        end
        // output
        assign {vgaRed,vgaGreen,vgaBlue} = (video_on) ? rgb_reg : BG_COLOR; //black
endmodule