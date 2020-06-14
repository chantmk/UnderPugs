`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Chulalongkorn University
// Organization: This pug is on fire!
// Engineer: Thammakorn Kobkuachaiyapong
//
// Create Date: 05/24/2020 07:20:53 PM
// Design Name: 
// Module Name: mapScreen
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


module mapScreen(
    input clk
   ,input p_tick
   ,input [9:0] x
   ,input [9:0] y
   ,input [9:0] xPlayer
   ,input [9:0] yPlayer
   ,input [1:0] milkStatus
   ,output reg [7:0] data
   );
   
    localparam BASE = 16;
    localparam WALLSIZE = 32;
    localparam MILK1X1 = 534;
    localparam MILK1Y1 = 422;
    localparam MILK1X2 = 550;
    localparam MILK1Y2 = 438;
    localparam MILK2X1 = 38;
    localparam MILK2Y1 = 166;
    localparam MILK2X2 = 54;
    localparam MILK2Y2 = 182;
    localparam EXITX1 = 328;
    localparam EXITY1 = 8;
    localparam EXITX2 = 344;
    localparam EXITY2 = 24;
    
    reg [9:0] addr_wall;
    wire [7:0] data_wall;
    spriteROM #(
        .DEPTH(1024),
        .DEPTH_BIT(10),
        .MEMFILE("wall.mem")
        ) wall (
        .clk(clk),
        .addr(addr_wall),
        .data(data_wall)
        );
    
    reg [7:0] addr_milk;
    wire [7:0] data_milk;
    spriteROM #(
        .DEPTH(256),
        .DEPTH_BIT(8),
        .MEMFILE("milk.mem")
        ) milk (
        .clk(clk),
        .addr(addr_milk),
        .data(data_milk)
        );
        
    reg [7:0] addr_exit;
    wire [7:0] data_exit;
    spriteROM #(
        .DEPTH(256),
        .DEPTH_BIT(8),
        .MEMFILE("exit.mem")
        ) exit (
        .clk(clk),
        .addr(addr_exit),
        .data(data_exit)
        );
        
    reg [7:0] addr_bone;
    wire [7:0] data_bone;
    spriteROM #(
        .DEPTH(256),
        .DEPTH_BIT(8),
        .MEMFILE("bone.mem")
        ) bone (
        .clk(clk),
        .addr(addr_bone),
        .data(data_bone)
        );
        
    wire isWall;
    mapDecision(
        .clk(clk),
        .x(x),
        .y(y),
        .isWall(isWall)
        );
        
    always @(p_tick)
    begin
        if(x>=xPlayer && x<=xPlayer+BASE && y>=yPlayer && y<=yPlayer+BASE)
        begin
            addr_bone = BASE*(y-yPlayer)+(x-xPlayer);
            data = data_bone;
        end
        else if(x>=MILK1X1 && x<=MILK1X2 && y>=MILK1Y1 && y<=MILK1Y2 && (milkStatus==2'b01 || milkStatus == 2'b11))
        begin
            addr_milk = BASE*(y-MILK1Y1)+(x-MILK1X1);
            data = data_milk;
        end
        else if(x>=MILK2X1 && x<=MILK2X2 && y>=MILK2Y1 && y<=MILK2Y2 && (milkStatus==2'b10 || milkStatus == 2'b11))
        begin
            addr_milk = BASE*(y-MILK2Y1)+(x-MILK2X1);
            data = data_milk;
        end
        else if(x>=EXITX1 && x<=EXITX2 && y>=EXITY1 && y <= EXITY2)
        begin
            addr_exit = BASE*(y-EXITY1) + (x-EXITX1);
            data = data_exit;
        end
        else if(~isWall)
        begin
            addr_wall = WALLSIZE*(y%WALLSIZE) + (x%WALLSIZE);
            data = data_wall;
        end
        else
        begin
           data=0;
        end
    end
endmodule
