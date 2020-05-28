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
        ,input game_clk
        ,input [4:0]direction
        ,input [2:0]state
        ,input [2:0]monsterType
        ,output reset
        ,output [9:0] xPlayer
        ,output [9:0] yPlayer
        ,output [6:0] hpPlayer
	    ,output [6:0] hpMonster //min 0 max 100
	    ,output [5:0] bulletType
	    ,output [29:0] bulletPosX
	    ,output [29:0] bulletPosY
	    ,output [2:0] bulletRender
    );
    
    reg [9:0] xCurrent;
    reg [9:0] yCurrent;
    reg [6:0] VhpMonster;
    reg [6:0] VhpPlayer;
    reg [9:0] abx,aby,bbx,bby,cbx,cby; //where a,b,c bullet should render , only support 3 bullet/state
    reg [1:0] abt,bbt,cbt; //[a,b,c] bullet type : 0 for enermy0, 1 for enermy1 ,...
    reg abr,bbr,cbr; // [a,b,c] bullet render or not , 0 no render, 1 render
    
    assign bulletPosX = {abx,bbx,cbx};
    assign bulletPosY = {aby,bby,cby};
    assign bulletType = {abt,bbt,cbt};
    assign bulletRender = {abr,bbr,cbr};
    
    initial begin 
        xCurrent = 320;
        yCurrent = 314;
        {abx,bbx,cbx} = {10'd0000000001,10'd0000000004,10'd0000000007};
        {aby,bby,cby} = {10'd0000000002,10'd0000000005,10'd0000000008};
        {abt,bbt,cbt} = {6{1'b0}};
        {abr,bbr,cbr} = {3{1'b0}};
    end
    
    assign xPlayer = xCurrent;
    assign yPlayer = yCurrent;
    
    
   
    always @(posedge game_clk)
        begin
        case(direction)// assume play area 256x208 from (192,210)to(448,418) and MC 16x16
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
                    if(xCurrent < 402)yCurrent <= yCurrent+1;//D
                end
            5'b01000: 
                begin
                    if(yCurrent < 432)xCurrent <= xCurrent+1;//D
                end
//            5'b10000: 
//                begin
//                    xCurrent <= xCurrent;//Spacebar 
//                end 
        endcase
    end
     // todo bullet movement
     
     // check collision
endmodule
