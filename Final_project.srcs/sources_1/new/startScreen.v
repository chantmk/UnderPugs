`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Chulalongkorn University
// Organization: This pug is on fire!
// Engineer: Thammakorn Kobkuachaiyapong
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
    localparam TITLE_POS1X = 98;
    localparam TITLE_POS1Y = 155;
    localparam TITLE_POS2X = 543;
    localparam TITLE_POS2Y = 200;
    localparam TITLE_WIDTH = 445;
    localparam START_POS1X = 245;
    localparam START_POS1Y = 306;
    localparam START_POS2X = 395;
    localparam START_POS2Y = 326;
    localparam START_WIDTH = 150;
    localparam DIVISOR = 28'd50000000;
    
    reg [14:0] addr_title;
    wire [7:0] data_title;
    spriteROM #(
        .DEPTH(20025),
        .DEPTH_BIT(15),
        .MEMFILE("underpugs.mem")
        ) underpug (
        .clk(clk),
        .addr(addr_title),
        .data(data_title)
        );
    
    reg [11:0] addr_start;
    wire [7:0] data_start;
    spriteROM #(
        .DEPTH(3000),
        .DEPTH_BIT(12),
        .MEMFILE("start.mem")
        ) start (
        .clk(clk),
        .addr(addr_start),
        .data(data_start)
        );
    
    reg [27:0] counter;
    reg clk_blink;
    always @(posedge clk)
    begin
        counter <= counter + 28'd1;
        if(counter>=(DIVISOR-1))
        begin
        counter <= 28'd0;
        clk_blink <= ~clk_blink;
        end
    end
    
    always @(p_tick)
    begin
        if(x>=TITLE_POS1X && x<=TITLE_POS2X && y>=TITLE_POS1Y && y<=TITLE_POS2Y)
        begin
            addr_title = TITLE_WIDTH*(y-TITLE_POS1Y) + (x-TITLE_POS1X);
            data = data_title;
        end
        else if(x>=START_POS1X && x<=START_POS2X && y>=START_POS1Y && y<=START_POS2Y)
        begin
        if(clk_blink)
        begin
            addr_start = START_WIDTH*(y-START_POS1Y) + (x-START_POS1X);
            data = data_start;
        end
        else data = 0;
        end
        else
        begin
            data = 0;
        end
    end
endmodule
