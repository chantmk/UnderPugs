`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Apple
// Engineer: Thanapat Sanguansab
// 
// Create Date: 05/26/2020 10:33:11 PM
// Design Name: 
// Module Name: atkState
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


module atkState(
     input clk
    ,input [4:0]direction
    ,input [3:0]state
    ,output reset
    ,output [11:0] xPlayer
    ,output [11:0] yPlayer
    ,output hpPlayer
	,output hpMonster
    );
    reg [11:0] xCurrent;
    reg [11:0] yCurrent;
    reg [6:0] VhpMonster;
    
    initial begin 
        xCurrent = 200;
        yCurrent = 200;
    end
    
    assign xPlayer = xCurrent;
    assign yPlayer = yCurrent;
    clockDiv cDiv(clk,tClk);
    always @(posedge tClk)
        begin
        case(direction)
            5'b00001: xCurrent <= xCurrent-1;//left A
            5'b00010: yCurrent <= yCurrent-1;//W
            5'b00100: yCurrent <= yCurrent+1;//D
            5'b01000: xCurrent <= xCurrent+1;//D
            5'b10000: xCurrent <= xCurrent;//Spacebar  
        endcase
    end
endmodule
