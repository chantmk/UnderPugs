`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2020 07:04:31 PM
// Design Name: 
// Module Name: atkScreen
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


module atkScreen(
    input clk
    ,input p_tick
    ,input [9:0] x
    ,input [9:0] y
    ,input [9:0] xPlayer
    ,input [9:0] yPlayer
    ,input hpMonster
    ,output reg [11:0] rgb
    );
    always @(p_tick)
    begin
    if( (x-xPlayer)**2+(y-yPlayer)**2 <=100**2) begin rgb <= 12'b000011110000; end//green
    else begin rgb <= 12'b000000000000 ; end
    end
endmodule
