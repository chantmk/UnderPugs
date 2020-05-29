`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2020 07:56:10 PM
// Design Name: 
// Module Name: startScreen
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


module startScreen(
    input clk
    ,input p_tick
    ,input [9:0] x
    ,input [9:0] y
    ,output reg [7:0] data
    );
    localparam TITLE_POS1X = 0;
    localparam TITLE_POS1Y = 0;
    localparam TITLE_POS2X = 0;
    localparam TITLE_POS2Y = 0;
    localparam TITLE_WIDTH = TITLE_POS2X-TITLE_POS1X;
    localparam START_POS1X = 0;
    localparam START_POS1Y = 0;
    localparam START_POS2X = 0;
    localparam START_POS2Y = 0;
    localparam START_WIDTH = START_POS2X-START_POS1X;
    
    reg addr_title;
    wire data_title;
    spriteROM #(
        .DEPTH(),
        .DEPTH_BIT(),
        .MEMFILE("underpugs.mem")
        ) underpug (
        .clk(clk),
        .addr(addr_title),
        .data(data_title)
        );
    
    reg addr_start;
    wire data_start;
    spriteROM #(
        .DEPTH(),
        .DEPTH_BIT(),
        .MEMFILE("start.mem")
        ) start (
        .clk(clk),
        .addr(addr_start),
        .data(data)
        );

    always @(p_tick)
    begin
        if(x>=TITLE_POS1X && x<=TITLE_POS2X && y>=TITLE_POS1Y && y<=TITLE_POS2Y)
        begin
            addr_title = TITLE_WIDTH*(x-TITLE_POS1X) + (y-TITLE_POS1Y);
            data = data_title;
        end
        else if(x>=START_POS1X && x<=START_POS2X && y>=START_POS1Y && y<=START_POS2Y)
        begin
            addr_start = START_WIDTH*(x-START_POS1X) + (y-START_POS1Y);
            data = data_start;
        end
        else
        begin
            data = 0;
        end
    end
endmodule
