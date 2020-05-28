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
    ,input game_clk
    ,input [4:0]direction
    ,input [2:0]state
    ,output reset
    ,output [11:0] xPlayer
    ,output [11:0] yPlayer
    ,output [6:0] hpPlayer
	,output [6:0] hpMonster
    );
    reg [11:0] xCurrent;
    reg [11:0] yCurrent;
    reg [6:0] VhpMonster;
    reg left_right;
    reg stop;
    
    initial begin 
        xCurrent = 320;
        yCurrent = 393;
        stop = 0;
        left_right = 1; //right
        VhpMonster = 30;
    end
    
    assign xPlayer = xCurrent;
    assign yPlayer = yCurrent;
    assign hpMonster = VhpMonster;
    
    always @(posedge game_clk || direction)
        begin
            case(direction)
            5'b10000: begin
                xCurrent <= xCurrent;//Spacebar  
                stop = 1; end
            endcase
        end
    
    always @(posedge game_clk)
        begin
        if (!stop)
        begin
            if (left_right == 1)//right
                begin 
                    xCurrent <= xCurrent+1;
                    if (xCurrent >= 544)
                        begin
                            left_right = 0; //left
                        end
                end
            else if (left_right == 0) //left
                begin
                    xCurrent <= xCurrent-1;
                    if (xCurrent <= 96)
                        begin
                            left_right = 1; //right
                        end
                end
        end
    end
endmodule
