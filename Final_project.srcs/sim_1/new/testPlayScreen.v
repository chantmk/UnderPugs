`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2020 06:50:24 PM
// Design Name: 
// Module Name: testPlayScreen
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


module testPlayScreen();
reg clk,p_tick;
reg [2:0] screen_state;
reg [9:0] x,y;
reg [9:0] xPlayer,yPlayer;
reg [1:0] pugType;
reg [6:0] hpPlayer;
reg [6:0] hpMonster;
reg [59:0] pos;
wire [7:0] data;
playScreen ps(
     clk
    , p_tick
    , screen_state
    ,  x
    ,  y
    ,  xPlayer
    ,  yPlayer
    ,  pugType
    ,  hpPlayer
    ,  hpMonster 
    ,  pos
    , data
    );
    always #5 clk =~clk;
    always #20 p_tick=~p_tick;
    always @(p_tick)
    begin
        x = x+1;
        if(x>480)
        begin 
            x = 0; 
            y = y+ 1;end
        if(y>640) $finish;
    end
    initial
    begin
    screen_state = 5;
    pugType = 0;
    x = 0;
    y = 0;
    xPlayer = 313;
    yPlayer = 393;
    hpPlayer = 100;
    hpMonster = 100;
    pos = 0;
    clk = 0;
    p_tick = 0;
    end
endmodule
