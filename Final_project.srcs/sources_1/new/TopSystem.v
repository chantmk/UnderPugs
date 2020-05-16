`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Chulalongkorn university
// Engineer: Thammakorn Kobkuachaiyapong
// 
// Create Date: 05/08/2020 10:57:14 AM
// Design Name: 
// Module Name: TopSystem
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


module TopSystem(
    input clk
    ,input PS2Clk
    ,input PS2Data
//    ,input RsRx
//    ,output RsTx
//    ,output Hsync
//    ,output Vsync
//    ,output vgaRed
//    ,output vgaGreen
//    ,output vgaBlue
    ,output [6:0] seg
    ,output [3:0] an
    ,output dp
    );
    wire [31:0] key;
    /*--Keyboard--*/
    kb_top keyboard_handler(
        .clk(clk),
        .PS2Clk(PS2Clk),
        .PS2Data(PS2Data),
        .keycodev(key)
    );
    /*--7 seg display--*/
    wire [18:0] tclk;
    wire [3:0] num3, num2, num1, num0;
    assign {num0,num1,num2,num3} = key ;
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
