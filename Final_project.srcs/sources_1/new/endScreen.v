`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2020 10:32:42 PM
// Design Name: 
// Module Name: endScreen
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


module endScreen(
    input clk
    ,input p_tick
    ,input [9:0] x
    ,input [9:0] y
    ,output reg [11:0] rgb
    );
    
    localparam CongratsT = 28;
    localparam CongratsL = 141;
    localparam CongratsD = 612;
    localparam CongratsR = 178;
    localparam Bone2T = 280;
    localparam Bone2L = 259;
    localparam Bone2D = 359;
    localparam Bone2R = 338;
    
endmodule
