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
    
    localparam HEART_POSX = 0;
    localparam HEART_POSY = 0;
    localparam HEALTHBAR_POSX = 0;
    localparam HEALTHBAR_POSy = 0;
    localparam HEALTHBAR_WIDTH = 0;
    localparam HEALTHBAR_HEIGHT = 0;
    localparam ATKBOX_POSX = 0;
    localparam ATKBOX_POSY = 0;
    localparam ATKBOX_WIDTH = 0;
    localparam ATKBOX_HEGIHT = 0;
    localparam BAR1X1 = 0;
    localparam BAR1X2 = 0;
    localparam BAR2X1 = 0;
    localparam BAR2X2 = 0;
    localparam BAR3X1 = 0;
    localparam BAR3X2 = 0;
    localparam BAR4X1 = 0;
    localparam BAR4X2 = 0;
    localparam BAR5X1 = 0;
    localparam BAR5X2 = 0;

    localparam ENABLE = 0;
    
    always @(p_tick)
    begin
    if(ENABLE)
    begin
    end
    else
    begin
        if( (x-xPlayer)**2+(y-yPlayer)**2 <=100**2) begin rgb <= 12'b000011110000; end//green
        else begin rgb <= 12'b000000000000 ; end
    end
    end
endmodule
