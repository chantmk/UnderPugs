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
	
	localparam TITLE_POS_X = 0;
    localparam TITLE_POS_Y = 0;
    localparam TITLE_WIDTH = 0;
    localparam TITLE_HEIGHT = 0;
    localparam NAME_BLOCK_POS_X = 0;
    localparam NAME_BLOCK_POS_Y = 0;
    localparam NAME_WIDTH = 0;
    localparam NAME_HEIGHT = 0;
    localparam ID_BLOCK_POS_X = 0;
    localparam ID_BLOCK_POS_Y = 0;
    localparam ID_WIDTH = 0;
    localparam ID_HEIGHT = 0;
    localparam GROUP_BLOCK_POS_X = 0;
    localparam GROUP_BLOCK_POS_Y = 0;
    localparam GROUP_WIDTH = 0;
    localparam GROUP_HEIGHT = 0;
    localparam BG_COLOR = 0 ;
    
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
    
    reg [9:0] text_pos_x, text_pos_y;
    reg [1:0] data_flag;
    wire color_flag;
    startScreenROM ssROM(
        .clk(clk),
        .addr_x(text_pos_x),
        .addr_y(text_pos_y),
        .data_flag(data_flag),
        .data(color_flag)
    );
        
        // rgb buffer
        always @(posedge p_tick)
        begin
            if (screen_state == 0) //start screen
            begin
                if(x>=TITLE_POS_X & x<=TITLE_POS_X+TITLE_WIDTH & y>=TITLE_POS_Y & y<=TITLE_POS_Y+TITLE_HEIGHT)
                begin
                data_flag = 2'b00;
                text_pos_x = x-TITLE_POS_X ;
                text_pos_y = y-TITLE_POS_Y ; 
                case(color_flag)
                0: rgb_reg <= BG_COLOR;
                1: rgb_reg <= 12'b000011110000; //green
                endcase
                end
                else if(x>=NAME_BLOCK_POS_X & x<=NAME_WIDTH & y>=NAME_BLOCK_POS_Y & y<=NAME_BLOCK_POS_Y+NAME_HEIGHT)
                begin
                data_flag = 2'b01;
                text_pos_x = x-NAME_BLOCK_POS_X ;
                text_pos_y = y-NAME_BLOCK_POS_Y ; 
                case(color_flag)
                0: rgb_reg <= BG_COLOR;
                1: rgb_reg <= 12'b000011111111; //cyan
                endcase
                end
                else if(x>=ID_BLOCK_POS_X & x<=ID_WIDTH & y>=ID_BLOCK_POS_Y & y<=ID_BLOCK_POS_Y+ID_HEIGHT)
                begin
                data_flag=2'b10;
                text_pos_x = x-ID_BLOCK_POS_X ;
                text_pos_y = y-ID_BLOCK_POS_Y ; 
                case(color_flag)
                0: rgb_reg <= BG_COLOR;
                1: rgb_reg <= 12'b111100001111; //magenta
                endcase
                end
                else if(x>=GROUP_BLOCK_POS_X & x<=GROUP_WIDTH & y>=GROUP_BLOCK_POS_Y & y<=GROUP_BLOCK_POS_Y+GROUP_HEIGHT)
                begin
                data_flag=2'b10;
                text_pos_x = x-GROUP_BLOCK_POS_X ;
                text_pos_y = y-GROUP_BLOCK_POS_Y ; 
                case(color_flag)
                0: rgb_reg <= BG_COLOR;
                1: rgb_reg <= 12'b000011111111; //yellow
                endcase
                end
                else
                begin
                rgb_reg <= BG_COLOR;
                end
            end
        end
        // output
        assign {vgaRed,vgaGreen,vgaBlue} = (video_on) ? rgb_reg : 12'b000000001111; //blue
endmodule