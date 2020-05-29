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
    wire [2:0] bulletRender;
    wire [5:0] bulletType;
    wire [6:0] hpPlayer,hpMonster;
    wire [9:0] xPlayer,yPlayer;
    wire [29:0] bulletX,bulletY;
    reg clk,game_clk;
    reg [2:0] state,monsterType;
    reg [4:0] direction;
    wire [9:0] abx = bulletX[29:20];
    wire [9:0] aby = bulletY[29:20];
    wire [9:0] bbx = bulletX[19:10];
    wire [9:0] bby = bulletY[19:10];
    wire [9:0] cbx = bulletX[9:0];
    wire [9:0] cby = bulletY[9:0];
    
    defState ds(
        .clk(clk),
        .game_clk(game_clk),
        .direction(direction),
        .monsterType(monsterType),
        .state(state),
        .reset(reset),
        .xPlayer(xPlayer),
        .yPlayer(yPlayer),
        .hpPlayer(hpPlayer),
        .hpMonster(hpMonster),
        .bulletType(bulletType),
        .bulletPosX(bulletX),
        .bulletPosY(bulletY)
    );

    always
        #5 game_clk=~game_clk;
    initial
    begin
        #0
        game_clk=0;
        
        #200
        monsterType = 3'b011;
        direction = 5'b01000;
        #1000
        
        //…...
        $finish;
    end
    //$dumpfile("time.dump");
    //$dumpvars(2,a1);
    //$monitor("time %t: {%b %b} <- {%d %d %d}", $time,cout,borrow,D,C,B,A,up,down,set9,set0,clk);
    
endmodule
