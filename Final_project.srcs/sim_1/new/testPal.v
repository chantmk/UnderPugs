`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2020 08:44:08 PM
// Design Name: 
// Module Name: testPal
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


module testPal();
    reg clk;
    reg [7:0] data;
    wire [11:0] rgb ;
     paletteROM #(
        .PALETTEFILE("pal24bit.mem"),
        .DEPTH(192)
        ) pal (
        .clk(clk),
        .data(data),
        .color(rgb)
        );
    always #1 clk=!clk;
    always 
    begin
        #4;
        data <= data+1;
    end
    initial
    begin
    clk = 0;
    data = 0;
    end
    
endmodule
