`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Chulalongkorn University
// Engineer: Thammakorn Kobkuachaiyapong
// 
// Create Date: 05/17/2020 11:00:52 AM
// Design Name: 
// Module Name: sevenSeg
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


module sevenSeg(
    input clk
    ,input [15:0] num
    ,output [6:0] seg
    ,output [3:0] an
    ,output dp
    );
    /*--7 seg display--*/
    wire [18:0] tclk;
    wire [3:0] num3, num2, num1, num0;
    assign {num0,num1,num2,num3} = num ;
    assign tclk[0] = clk ;
    
    genvar c;
    generate for(c=0;c<18;c=c+1)
        begin
            //clock divider is a DFF that will divide clock frequency a half for each divider
            clockDivider fdiv(tclk[c+1],tclk[c]);
        end 
    endgenerate
    quad2SevenSeg q7seg(seg,dp,an,num0,num1,num2,num3,0,0,tclk[18]);
endmodule
