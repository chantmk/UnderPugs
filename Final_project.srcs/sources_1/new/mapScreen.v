`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
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
   ,input hpPlayer
   ,input xPlayer
   ,input yPlayer
   ,input pos
   ,output reg [7:0] data
   );
    
    reg [255:0] addr_wall;
    wire [7:0] data_wall;
    spriteROM #(
        .DEPTH(256),
        .DEPTH_BIT(8),
        .MEMFILE("wall.mem")
        ) wall (
        .clk(clk),
        .addr(addr_wall),
        .data(data_wall)
        );
    
    reg [19:0] map [0:14];
    reg isWall;
    initial
    begin
    $readmemb("map.mem",map);
    end
    
    always @(posedge clk)
    begin
        isWall = map[x/16][y/16];
    end
    always @(p_tick)
    begin
        if(isWall)
        begin
            addr_wall = 16*(y%16) + (x%16);
            data = data_wall;
        end
        else
        begin
            data=0;
        end
    end
endmodule
