`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2020 04:15:52 PM
// Design Name: 
// Module Name: game_logic
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


module game_logic(
    input clk
    ,input [15:0] key
    ,output state
    ,output reset
    ,output [11:0] xPlayer
    ,output [11:0] yPlayer
    ,output hpPlayer
	,output hpMonster
    );
    
    reg [4:0] direction;
    reg [2:0] Vstate;
    reg [1:0] Vreset;
    
    initial begin
        Vstate = 3;
        direction = 5'b00000;
    end
    
    wire Ostate = Vstate;
    
    
    always @(posedge clk)
        begin
            case(key[7:0])
            8'h1C: direction = 5'b00001;//left A
            8'h1D: direction = 5'b00010;//up W
            8'h1B: direction = 5'b00100;//down S
            8'h23: direction = 5'b01000;//right D
            8'h29: direction = 5'b10000;//spacebar   
            endcase
        end
     atkState superatk( .clk(clk),
                    .direction(direction),
                    .reset(reset),
                    .xPlayer(xPlayer),
                    .yPlayer(yPlayer),
                    .hpPlayer(hpPlayer),
                    .hpMonster(hpMonster));
     
     assign state = 3;
endmodule
