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
    ,output Hsync
    ,output Vsync
    ,output [3:0] vgaRed
    ,output [3:0] vgaGreen
    ,output [3:0] vgaBlue
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
    
    /*-Seven segment display-*/
    sevenSeg segDisp(
        .clk(clk),
        .num(key),
        .seg(seg),
        .an(an),
        .dp(dp)
    );
    
    reg [2:0] state=3'b011;
    wire reset;
    /*--vga--*/
    vga image_handler(
        .clk(clk),
        .reset(reset),
	    .screen_state(state),
        .Hsync(Hsync),
        .Vsync(Vsync),
        .vgaRed(vgaRed),
        .vgaGreen(vgaGreen),
        .vgaBlue(vgaBlue)
    );
    /*--logic--*/
//    game_logic logic(
//        .clk(clk),
//        .key(key),
//        .state(state),
//        .reset(reset)
//    );
    
endmodule
