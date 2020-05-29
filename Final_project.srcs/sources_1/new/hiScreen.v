`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/29/2020 10:10:28 PM
// Design Name: 
// Module Name: hiScreen
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


module hiScreen(
    input clk
    ,input p_tick
    ,input [9:0] x
    ,input [9:0] y
    ,output reg [11:0] rgb
    );
    
    localparam HiT = 162;
    localparam HiL = 298;
    localparam HiD = 477;
    localparam HiR = 337;
    localparam BurgerPugT = 275;
    localparam BurgerPugL = 143;
    localparam BurgerPugD = 363;
    localparam BurgerPugR = 270;
    localparam PizzaPugT = 256;
    localparam PizzaPugL = 143;
    localparam PizzaPugD = 383;
    localparam PizzaPugR = 271;
    localparam KebabPugT = 266;
    localparam KebabPugL = 143;
    localparam KebabPugD = 372;
    localparam KebabPugR = 254;
    localparam LolipopPugT = 265;
    localparam LolipopPugL = 143;
    localparam LolipopPugD = 375;
    localparam LolipopPugR = 270;
    
endmodule
