`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Chulalongkorn University
// Organization: This pug is on fire!
// Engineer: Thammakorn Kobkuachaiyapong
// 
// Create Date: 05/30/2020 03:25:57 PM
// Design Name: 
// Module Name: mapDecision
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


module mapDecision(
    input clk,
    input [9:0] x,
    input [9:0] y,
    output reg isWall
    );
    reg [0:19] map [0:14];
    initial
    begin
    $readmemb("map.mem",map);
    end
    
    always @(posedge clk)
    begin
        isWall = map[y>>5][x>>5];
    end
endmodule
