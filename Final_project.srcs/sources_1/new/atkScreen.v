`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2020 07:04:31 PM
// Design Name: 
// Module Name: atkScreen
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


module atkScreen(
    input clk
    ,input p_tick
    ,input [9:0] x
    ,input [9:0] y
    ,input [9:0] xPlayer
    ,input [9:0] yPlayer
    ,input hpMonster
    ,output reg [11:0] rgb
    );
    
    localparam STANDARD_SIZE = 16;
    localparam HEART_POSX = 206; // Heart pos for left-top corner
    localparam HEART_POSY = 66;  // Heart use standard size(ss)
    localparam HEALTHBAR_POSX = 234;
    localparam HEALTHBAR_POSy = 66;
    localparam HEALTHBAR_WIDTH = 200; // H=ss
    localparam MONSTER_POSX = 275;
    localparam MONSTER_POSY = 102;
    localparam MONSTER_WIDTH = 89;
    localparam MONSTER_HEGIHT = 128;
    localparam ATKBOX_POSX = 96; //border = 3
    localparam ATKBOX_POSY = 266;
    localparam ATKBOX_WIDTH = 448;
    localparam ATKBOX_HEGIHT = 120;
    localparam POINTER_HEIGHT = 0;
    localparam POINTER_CORNEROFFSET = 0;
    localparam BAR1X = 0;
    localparam BAR1OFFSET = 0;
    localparam BAR2X = 0;
    localparam BAR2OFFSET = 0;
    localparam BAR3X = 0;
    localparam BAR3OFFSET = 0;
    localparam BAR4X = 0;
    localparam BAR4OFFSET = 0;
    

    parameter ENABLE = 0;
    
    always @(p_tick)
    begin
    if(ENABLE)
    begin
        if(ENABLE)
        begin
        end
        else rgb <= 12'b000000000000;
    end
    else
    begin
        if( (x-xPlayer)**2+(y-yPlayer)**2 <=100**2) begin rgb <= 12'b000011110000; end//green
        else begin rgb <= 12'b000000000000 ; end
    end
    end
endmodule
