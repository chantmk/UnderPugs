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
    ,input [6:0] hpMonster //min 0 max 100
    ,output reg [11:0] rgb
    );
    
    localparam STANDARD_SIZE = 16;
    localparam HEART_POSX = 206; // Heart pos for left-top corner
    localparam HEART_POSY = 66;  // Heart use standard size(ss)
    localparam HEALTHBAR_POSX = 234;
    localparam HEALTHBAR_POSy = 66;
    localparam HEALTHBAR_WIDTH = 200; // H=ss
    localparam HEALTHBAR_HEIGHT = 20; // H=ss
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
        //insert constant value instead of localparam to recude render lag
        if( (x-xPlayer)**2+(y-yPlayer)**2 <=100) begin rgb <= 12'b000011110000; end//green
        else if( (x==233 | x==435) && (y>=65 && y<=87)) begin rgb <= 12'b111100000000; end//red
        else if( (x>=233 && x<=435) && (y==65 | y==87)) begin rgb <= 12'b111100000000; end//red
        else if( x>=234 && x<=(234+hpMonster*2) && y>=66 && y<=88) begin rgb <= 12'b111100000000; end//red
        else begin rgb <= 12'b000000000000 ; end
        
        if ((x>=300 && x<=340) && (y>=230 && y<=350)) begin rgb <= 12'b111111111111; end
        if (((x>=263 && x<=283) | (x>=364 && x<=389)) && (y>=230 && y<=350)) begin rgb <= 12'b011101110111; end
        if (((x>=210 && x<=220) | (x>=432 && x<=442)) && (y>=230 && y<=350)) begin rgb <= 12'b001100110011; end
        if (((x>=162 && x<=167) | (x>=446 && x<=451)) && (y>=230 && y<=350)) begin rgb <= 12'b000100010001; end
        if( (x==95 | x==545) && (y>=229 && y<=351)) begin rgb <= 12'b111111111111; end
        if( (x>=95 && x<=545) && (y==229 | y==351)) begin rgb <= 12'b111111111111; end
    end
    end
endmodule
