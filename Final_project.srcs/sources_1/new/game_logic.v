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
    ,output reg [2:0] state
    ,output reg reset
    ,output reg [11:0] xPlayer
    ,output reg [11:0] yPlayer
    ,output reg [6:0] hpPlayer
	,output reg [6:0] hpMonster
    );
    
    reg [4:0] direction;
    reg [2:0] Vstate;
    reg [1:0] Vreset;
    
    
    //assign state = Vstate;
    
    initial begin
        state <= 3;
        direction <= 5'b00000;
    end
    
    wire Ostate = Vstate;
    wire game_clk;
    clockDiv clkDiv(
        .clock_in(clk),
        .clock_out(game_clk)
    );
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
     wire a_reset;
     wire [6:0] a_hpPlayer,a_hpMonster;
     wire [11:0] a_xPlayer,a_yPlayer;
     atkState superatk( .clk(clk),
                    .game_clk(game_clk),
                    .direction(direction),
                    .reset(a_reset),
                    .xPlayer(a_xPlayer),
                    .yPlayer(a_yPlayer),
                    .hpPlayer(a_hpPlayer),
                    .hpMonster(a_hpMonster));
     wire d_reset;
     wire [6:0] d_hpPlayer,d_hpMonster;
     wire [11:0] d_xPlayer,d_yPlayer;
     defState superdef( .clk(clk),
                    .game_clk(game_clk),
                    .direction(direction),
                    .reset(d_reset),
                    .xPlayer(d_xPlayer),
                    .yPlayer(d_yPlayer),
                    .hpPlayer(d_hpPlayer),
                    .hpMonster(d_hpMonster));
                    
     always @ (state)
        begin
            case(state)
                0: ;
                1: ;
                2: ;
                3: {reset,xPlayer,yPlayer,hpPlayer,hpMonster} = {a_reset,a_xPlayer,a_yPlayer,a_hpPlayer,a_hpMonster};
                4: {reset,xPlayer,yPlayer,hpPlayer,hpMonster} = {d_reset,d_xPlayer,d_yPlayer,d_hpPlayer,d_hpMonster};
            endcase
        end
     
endmodule
