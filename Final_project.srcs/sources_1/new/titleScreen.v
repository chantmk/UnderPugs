`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Chulalongkorn University
// Organization: This pug is on fire!
// Engineer: Thammakorn Kobkuachaiyapong
// 
// Create Date: 05/29/2020 10:29:55 PM
// Design Name: 
// Module Name: titleScreen
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


module titleScreen(
    input clk
    ,input p_tick
    ,input [9:0] x
    ,input [9:0] y
    ,output reg [7:0] data
    );
    
    localparam UnderpugsT = 96;
    localparam UnderpugsL = 127;
    localparam UnderpugsD = 542;
    localparam UnderpugsR = 171;
    localparam UnderpugsWidth = 445;
    localparam NameT = 126;
    localparam NameL = 240;
    localparam NameD = 513;
    localparam NameR = 349;
    localparam NameWidth = 388;
    
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
    
    reg [15:0] addr_name;
    wire [7:0] data_name;
    spriteROM #(
        .DEPTH(42680),
        .DEPTH_BIT(16),
        .MEMFILE("name.mem")
        ) name (
        .clk(clk),
        .addr(addr_name),
        .data(data_name)
        );
        
    always @(p_tick)
    begin
        if(x>=UnderpugsT && x<=UnderpugsD && y>=UnderpugsL && y<=UnderpugsR)
        begin
            addr_title = UnderpugsWidth*(y-UnderpugsL) + (x-UnderpugsT);
            data = data_title;
        end
        else if(x>=NameT && x<= NameD && y>=NameL && y<=NameR)
        begin
            addr_name = NameWidth*(y-NameL) + (x-NameT);
            data = data_name;
        end
        else
        begin
            data = 0;
        end
    end
endmodule
