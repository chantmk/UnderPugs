`timescale 1ns / 1ns
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/02/2020 08:32:52 AM
// Design Name: 
// Module Name: quad2SevenSeg
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


module quad2SevenSeg(
    output [6:0] seg,
    output dp,
    output reg [3:0] an,
    input [3:0] num3,
    input [3:0] num2,
    input [3:0] num1,
    input [3:0] num0,
    input dpEN,
    input alwaysOn,
    input clk
    );
reg [1:0] ns ;
reg [1:0] ps ;
reg [3:0] hexIn ;
assign dp = ~dpEN ;
segmentDec segDecode(seg,hexIn);
/*--change state--*/
always @(posedge clk)
begin
    ps = ns;
end
/*--stage count--*/
always @(ps)
begin
    ns = ps+1;
end
/*--mux--*/
always @(ps)
begin
    case({alwaysOn,ps})
        2'b000 : an= 4'b1110 ;
        2'b001 : an= 4'b1101 ;
        2'b010 : an= 4'b1011 ;
        2'b011 : an= 4'b0111 ;
        default : an=4'b0000 ;
    endcase
end

always @(ps)
begin
    case(ps)
        2'b00 : hexIn = num0;
        2'b01 : hexIn = num1;
        2'b10 : hexIn = num2;
        2'b11 : hexIn = num3;
    endcase
end
endmodule