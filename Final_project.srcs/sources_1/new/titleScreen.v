`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2020 10:29:55 PM
// Design Name: 
// Module Name: titleScreen
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


module titleScreen(
    input clk
    ,input p_tick
    ,input [9:0] x
    ,input [9:0] y
    ,output reg [11:0] rgb
    );
    
    localparam UnderpugsT = 96;
    localparam UnderpugsL = 127;
    localparam UnderpugsD = 542;
    localparam UnderpugsR = 171;
    localparam NameT = 126;
    localparam NameL = 240;
    localparam NameD = 513;
    localparam NameR = 349;
    
endmodule
