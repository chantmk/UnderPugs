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


module atkState_test();
    wire reset,hpPlayer,hpMonster;
    wire [11:0] xPlayer,yPlayer;
    wire [2:0] state;
    reg clk,key;
    atkState as(
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
        //�...
        $finish;
    end
    //$dumpfile("time.dump");
    //$dumpvars(2,a1);
    //$monitor("time %t: {%b %b} <- {%d %d %d}", $time,cout,borrow,D,C,B,A,up,down,set9,set0,clk);
    
endmodule
