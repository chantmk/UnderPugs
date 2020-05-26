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
        xCurrent = 320;
        yCurrent = 150;
    end
    
    assign xPlayer = xCurrent;
    assign yPlayer = yCurrent;
 
        always @(direction)
        begin
            case(direction)
                5'h00001: xCurrent <= xCurrent-1;//left A
                5'h00010: yCurrent <= yCurrent+1;//W
                5'h00100: yCurrent <= yCurrent-1;//D
                5'h01000: xCurrent <= xCurrent+1;//D
                5'h10000: xCurrent <= xCurrent;//Spacebar  
                endcase
        end
endmodule
