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
        yCurrent = 240;
    end
    
    assign xPlayer = xCurrent;
    assign yPlayer = yCurrent;
    clockDiv cDiv(clk,tClk);
    
    always @(posedge tClk)
        begin
        case(direction)// assume play area 400*300 from (120,90)to(520,390)
            5'b00001: 
                begin
                    if(xCurrent > 120)xCurrent <= xCurrent-1;//A
                end
            5'b00010: 
                begin
                    if(yCurrent > 90)yCurrent <= yCurrent-1;//W
                end
            5'b00100: 
                begin
                    if(xCurrent < 520)yCurrent <= yCurrent+1;//D
                end
            5'b01000: 
                begin
                    if(yCurrent < 390)xCurrent <= xCurrent+1;//D
                end
//            5'b10000: 
//                begin
//                    xCurrent <= xCurrent;//Spacebar 
//                end 
        endcase
    end
endmodule
