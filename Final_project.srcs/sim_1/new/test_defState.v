`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/28/2020 03:08:57 PM
// Design Name: 
// Module Name: atkState_test
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


module test_defState();
    wire reset;
    wire [6:0] hpPlayer,hpMonster;
    wire [9:0] xPlayer,yPlayer;
    reg [2:0] state,bulletType;
    reg clk,game_clk;
    reg [4:0] direction;
    defState ds(
        .clk(clk),
        .game_clk(game_clk),
        .direction(direction),
        .bulletType(bulletType),
        .state(state),
        .reset(reset),
        .xPlayer(xPlayer),
        .yPlayer(yPlayer),
        .hpPlayer(hpPlayer),
        .hpMonster(hpMonster)
    );
    always
        #5 game_clk=~game_clk;
    initial
    begin
        #0
        game_clk=0;
        
        #200
        direction = 5'b10000;
        #100
        //…...
        $finish;
    end
    //$dumpfile("time.dump");
    //$dumpvars(2,a1);
    //$monitor("time %t: {%b %b} <- {%d %d %d}", $time,cout,borrow,D,C,B,A,up,down,set9,set0,clk);
    
endmodule
