`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2020 09:21:18 PM
// Design Name: 
// Module Name: defState
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


module defState(
        input clk
        ,input [4:0]direction
        ,input [3:0]state
        ,input [2:0]bullet
        ,output reset
        ,output [11:0] xPlayer
        ,output [11:0] yPlayer
        ,output hpPlayer
	    ,output hpMonster
    );
    
    reg [11:0] xCurrent;
    reg [11:0] yCurrent;
    reg [6:0] VhpMonster;
    reg [6:0] VhpPlayer;
    
    initial begin 
        xCurrent = 320;
        yCurrent = 314;
    end
    
    assign xPlayer = xCurrent;
    assign yPlayer = yCurrent;
    clockDiv cDiv(clk,tClk);
    
    
   
    always @(posedge tClk)
        begin
        case(direction)// assume play area 256x208 from (192,210)to(448,418) and MC R=10
            5'b00001: 
                begin
                    if(xCurrent > 192)xCurrent <= xCurrent-1;//A
                end
            5'b00010: 
                begin
                    if(yCurrent > 210)yCurrent <= yCurrent-1;//W
                end
            5'b00100: 
                begin
                    if(xCurrent < 418)yCurrent <= yCurrent+1;//D
                end
            5'b01000: 
                begin
                    if(yCurrent < 448)xCurrent <= xCurrent+1;//D
                end
//            5'b10000: 
//                begin
//                    xCurrent <= xCurrent;//Spacebar 
//                end 
        endcase
    end
     // todo bullet movement
     // check collihion
endmodule
