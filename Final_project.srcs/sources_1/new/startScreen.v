`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2020 07:56:10 PM
// Design Name: 
// Module Name: startScreen
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


module startScreen(
    input clk
    ,input p_tick
    ,input [9:0] x
    ,input [9:0] y
    ,output [11:0] rgb
    );
    reg [9:0] text_pos_x, text_pos_y;
    reg [1:0] data_flag;
    reg [11:0] rgb_reg ;
    wire color_flag;
    assign rgb = rgb_reg;
    
    localparam TITLE_POS_X = 197;
    localparam TITLE_POS_Y = 67;
    localparam TITLE_WIDTH = 245;
    localparam TITLE_HEIGHT = 45;
    localparam NAME_BLOCK_POS_X = 132;
    localparam NAME_BLOCK_POS_Y = 151;
    localparam NAME_WIDTH = 143;
    localparam NAME_HEIGHT = 120;
    localparam ID_BLOCK_POS_X = 401;
    localparam ID_BLOCK_POS_Y = 151;
    localparam ID_WIDTH = 135;
    localparam ID_HEIGHT = 120;
    localparam GROUP_BLOCK_POS_X = 198;
    localparam GROUP_BLOCK_POS_Y = 331;
    localparam GROUP_WIDTH = 244;
    localparam GROUP_HEIGHT = 28;
    localparam BG_COLOR = 12'b000000000000 ;
    
    startScreenROM ssROM(
        .clk(clk),
        .addr_x(text_pos_x),
        .addr_y(text_pos_y),
        .data_flag(data_flag),
        .data(color_flag)
    );
    
    always @(posedge clk)
    begin
    if(x>=TITLE_POS_X & x<=TITLE_POS_X+TITLE_WIDTH & y>=TITLE_POS_Y & y<=TITLE_POS_Y+TITLE_HEIGHT)
    begin
        data_flag <= 2'b00;
//      text_pos_x <= TITLE_POS_X -x ;
//      text_pos_y <= TITLE_POS_Y -y ;
        text_pos_x <= x - TITLE_POS_X ;
        text_pos_y <= y - TITLE_POS_Y ; 
        case(color_flag)
        0: rgb_reg <= BG_COLOR;
        1: rgb_reg <= 12'b000011110000; //green
        endcase
    end
    else if(x>=NAME_BLOCK_POS_X & x<= NAME_BLOCK_POS_X+NAME_WIDTH & y>=NAME_BLOCK_POS_Y & y<=NAME_BLOCK_POS_Y+NAME_HEIGHT)
    begin
        data_flag <= 2'b01;
        text_pos_x <= x - NAME_BLOCK_POS_X ;
//      text_pos_x <= NAME_BLOCK_POS_X - x ;
        text_pos_y <= y - NAME_BLOCK_POS_Y ; 
        case(color_flag)
        0: rgb_reg <= BG_COLOR;
        1: rgb_reg <= 12'b000011111111; 
        endcase
    end
    else if(x>=ID_BLOCK_POS_X & x<= ID_BLOCK_POS_X+ID_WIDTH & y>=ID_BLOCK_POS_Y & y<=ID_BLOCK_POS_Y+ID_HEIGHT)
    begin
        data_flag <= 2'b10;
        text_pos_x <= x - ID_BLOCK_POS_X ;
//      text_pos_x <= ID_BLOCK_POS_X - x;
        text_pos_y <= y - ID_BLOCK_POS_Y ; 
        case(color_flag)
        0: rgb_reg <= BG_COLOR;
        1: rgb_reg <= 12'b000011111111; 
        endcase
    end
    else if(x>=GROUP_BLOCK_POS_X & x<= GROUP_BLOCK_POS_X +GROUP_WIDTH & y>=GROUP_BLOCK_POS_Y & y<=GROUP_BLOCK_POS_Y+GROUP_HEIGHT)
    begin
        data_flag=2'b11;
        text_pos_x <= x-GROUP_BLOCK_POS_X ;
//      text_pos_x <= GROUP_BLOCK_POS_X - x ;
        text_pos_y <= y-GROUP_BLOCK_POS_Y ; 
        case(color_flag)
        0: rgb_reg <= BG_COLOR;
        1: rgb_reg <= 12'b111111001000;
        endcase
    end
    else
    begin
        rgb_reg <= BG_COLOR;
    end
    end
endmodule
