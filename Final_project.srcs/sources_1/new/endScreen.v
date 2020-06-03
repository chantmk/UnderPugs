`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2020 10:32:42 PM
// Design Name: 
// Module Name: endScreen
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


module endScreen(
    input clk
    ,input wire pixel_tick
    ,input [9:0] x
    ,input [9:0] y
    ,input endFlag
    ,output reg [7:0] data
    );
    
    localparam CongratsT = 28;
    localparam CongratsL = 141;
    localparam CongratsD = 612;
    localparam CongratsR = 178;
    localparam Bone2T = 280;
    localparam Bone2L = 259;
    localparam Bone2D = 359;
    localparam Bone2R = 338;
    localparam GameoverT = 122;
    localparam GameoverL = 148;
    localparam GameoverD = 517;
    localparam GameoverR = 192;
    localparam Bone3T = 288;
    localparam Bone3L = 268;
    localparam Bone3D = 351;
    localparam Bone3R = 331;
    
    reg [14:0] addr_con;
    wire [7:0] data_con;
    spriteROM #(
        .DEPTH(22230),
        .DEPTH_BIT(15),
        .MEMFILE("congrats.mem")
        ) con (
        .clk(clk),
        .addr(addr_con),
        .data(data_con)
        );
        
    reg [12:0] addr_bone2;
    wire [7:0] data_bone2;
    spriteROM #(
        .DEPTH(6400),
        .DEPTH_BIT(13),
        .MEMFILE("bone2.mem")
        ) bone2 (
        .clk(clk),
        .addr(addr_bone2),
        .data(data_bone2)
        );
        
    reg [14:0] addr_over;
    wire [7:0] data_over;
    spriteROM #(
        .DEPTH(17820),
        .DEPTH_BIT(15),
        .MEMFILE("gameover.mem")
        ) over (
        .clk(clk),
        .addr(addr_over),
        .data(data_over)
        );
   
    reg [11:0] addr_bone3;
    wire [7:0] data_bone3;
    spriteROM #(
        .DEPTH(4096),
        .DEPTH_BIT(12),
        .MEMFILE("bone3.mem")
        ) bone3 (
        .clk(clk),
        .addr(addr_bone3),
        .data(data_bone3)
        );
    
    always @(posedge pixel_tick)
    begin
        if (endFlag==1)
        begin
            if(x>=CongratsT && x<=CongratsD && y>=CongratsL && y<=CongratsR)
            begin
                addr_con = 585*(y-CongratsL) + (x-CongratsT);
                data = data_con;
            end
            else if(x>=Bone2T && x<=Bone2D && y>=Bone2L && y<=Bone2R)
            begin
                addr_bone2 = 80*(y-Bone2L) + (x-Bone2T);
                data = data_bone2;
            end
        end
        else if (endFlag==0)
        begin
            if(x>=GameoverT && x<=GameoverD && y>=GameoverL && y<=GameoverR)
            begin
                addr_over = 396*(y-GameoverL) + (x-GameoverT);
                data = data_over;
            end
            else if(x>=Bone3T && x<=Bone3D && y>=Bone3L && y<=Bone3R)
            begin
                addr_bone3 = 64*(y-Bone3L) + (x-Bone3T);
                data = data_bone3;
            end
        end
        begin
            data = 0;
        end
    end
    
endmodule
