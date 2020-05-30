`timescale 1ns/1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: Chulalongkorn university
// Engineer: Thammakorn Kobkuachaiyapong
//
// Create Date: long time ago
// Design Name: 
// Module Name: clockDivider
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
module clockDivider(
    output clkDiv,
    input clk
    );

reg clkDiv;

initial
begin
    clkDiv=0;
end
//half of clk
always @(posedge clk)
begin
    clkDiv = ~clkDiv;
end

endmodule 