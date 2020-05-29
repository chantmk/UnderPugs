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
    localparam TITLE_POS1X = 0;
    localparam TITLE_POS1Y = 0;
    localparam TITLE_POS2X = 0;
    localparam TITLE_POS2Y = 0;
    localparam START_POS1X = 0;
    localparam START_POS1Y = 0;
    localparam START_POS2X = 0;
    localparam START_POS2Y = 0;
    
    spriteROM #(.MEMFILE("")) underpug(
        .clk(clk),
        .x(x),
        .y(y),
        .data(data)
        );
    paletteROM #(.PALETTEFILE("")) pal(
        .clk(clk),
        .data(data),
        .color(color)
        );
        //will have 2 mux to choose which input,output will be using in different state
    always @(p_tick)
    begin
    end
endmodule
