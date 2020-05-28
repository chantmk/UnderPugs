`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2020 08:30:40 PM
// Design Name: 
// Module Name: testGameLogic
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


module testGameLogic();
    wire reset;
    wire [6:0] hpPlayer,hpMonster;
    wire [9:0] xPlayer,yPlayer;
    wire [2:0] state;
    reg clk,game_clk;
    reg [4:0] direction;
    reg {15:0] key;
    game_logic logic(
        .clk(clk),
        .key(key),
        .state(state),
        .reset(reset),
        .xPlayer(xPlayer),
        .yPlayer(yPlayer),
        .hpPlayer(hpPlayer),
        .hpMonster(hpMonster)
    );

    always
        #5 clk=~clk;
    initial
    begin
        #0
        clk=0;
        key=16'hF029;
        #200
        //…...
        $finish;
    end
    //$dumpfile("time.dump");
    //$dumpvars(2,a1);
    //$monitor("time %t: {%b %b} <- {%d %d %d}", $time,cout,borrow,D,C,B,A,up,down,set9,set0,clk);
endmodule
