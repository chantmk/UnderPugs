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
    ,input [1:0] pugType
    ,output reg [7:0] data
    );
    
//    localparam HiT = 162;
//    localparam HiL = 355;
//    localparam HiD = 477;
//    localparam HiR = 394;
//    localparam BurgerPugT = 236;
//    localparam BurgerPugL = 86;
//    localparam BurgerPugD = 402;
//    localparam BurgerPugR = 325;
//    localparam PizzaPugT = 196;
//    localparam PizzaPugL = 95;
//    localparam PizzaPugD = 447;
//    localparam PizzaPugR = 350;
//    localparam KebabPugT = 205;
//    localparam KebabPugL = 85;
//    localparam KebabPugD = 434;
//    localparam KebabPugR = 324;
//    localparam LolipopPugT = 216;
//    localparam LolipopPugL = 85;
//    localparam LolipopPugD = 423;
//    localparam LolipopPugR = 324;

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
    localparam PizzaPugR = 270;
    localparam KebabPugT = 266;
    localparam KebabPugL = 143;
    localparam KebabPugD = 372;
    localparam KebabPugR = 254;
    localparam LolipopPugT = 265;
    localparam LolipopPugL = 143;
    localparam LolipopPugD = 375;
    localparam LolipopPugR = 270;
    
//    reg [14:0] addr_hi;
//    wire [7:0] data_hi;
//    spriteROM #(
//        .DEPTH(12640),
//        .DEPTH_BIT(14),
//        .MEMFILE("hi.mem")
//        ) hi (
//        .clk(clk),
//        .addr(addr_hi),
//        .data(data_hi)
//        );
    
//    reg [11:0] addr_burgerP;
//    wire [7:0] data_burgerP;
//    spriteROM #(
//        .DEPTH(40080),
//        .DEPTH_BIT(16),
//        .MEMFILE("burger-pug2.mem")
//        ) burgerP (
//        .clk(clk),
//        .addr(addr_burgerP),
//        .data(data_burgerP)
//        );
        
//    reg [11:0] addr_pizzaP;
//    wire [7:0] data_pizzaP;
//    spriteROM #(
//        .DEPTH(65536),
//        .DEPTH_BIT(16),
//        .MEMFILE("pizza-pug2.mem")
//        ) pizzaP (
//        .clk(clk),
//        .addr(addr_pizzaP),
//        .data(data_pizzaP)
//        );
        
//    reg [11:0] addr_kebabP;
//    wire [7:0] data_kebabP;
//    spriteROM #(
//        .DEPTH(55200),
//        .DEPTH_BIT(16),
//        .MEMFILE("kebab-pug2.mem")
//        ) kebabP (
//        .clk(clk),
//        .addr(addr_kebabP),
//        .data(data_kebabP)
//        );
        
//    reg [11:0] addr_lolipopP;
//    wire [7:0] data_lolipopP;
//    spriteROM #(
//        .DEPTH(49920),
//        .DEPTH_BIT(16),
//        .MEMFILE("lolipop-pug2.mem")
//        ) lolipopP (
//        .clk(clk),
//        .addr(addr_lolipopP),
//        .data(data_lolipopP)
//        );

    reg [14:0] addr_hi;
    wire [7:0] data_hi;
    spriteROM #(
        .DEPTH(12640),
        .DEPTH_BIT(14),
        .MEMFILE("hi.mem")
        ) hi (
        .clk(clk),
        .addr(addr_hi),
        .data(data_hi)
        );
    
    reg [11:0] addr_burgerP;
    wire [7:0] data_burgerP;
    spriteROM #(
        .DEPTH(11392),
        .DEPTH_BIT(14),
        .MEMFILE("burger-pug.mem")
        ) burgerP (
        .clk(clk),
        .addr(addr_burgerP),
        .data(data_burgerP)
        );
        
    reg [11:0] addr_pizzaP;
    wire [7:0] data_pizzaP;
    spriteROM #(
        .DEPTH(16384),
        .DEPTH_BIT(14),
        .MEMFILE("pizza-pug.mem")
        ) pizzaP (
        .clk(clk),
        .addr(addr_pizzaP),
        .data(data_pizzaP)
        );
        
    reg [11:0] addr_kebabP;
    wire [7:0] data_kebabP;
    spriteROM #(
        .DEPTH(11984),
        .DEPTH_BIT(14),
        .MEMFILE("kebab-pug.mem")
        ) kebabP (
        .clk(clk),
        .addr(addr_kebabP),
        .data(data_kebabP)
        );
        
    reg [11:0] addr_lolipopP;
    wire [7:0] data_lolipopP;
    spriteROM #(
        .DEPTH(14208),
        .DEPTH_BIT(14),
        .MEMFILE("lolipop-pug.mem")
        ) lolipopP (
        .clk(clk),
        .addr(addr_lolipopP),
        .data(data_lolipopP)
        );

    always @(p_tick)
    begin
        if(x>=HiT && x<=HiD && y>=HiL && y<=HiR)
        begin
            addr_hi = 316*(y-HiL) + (x-HiT);
            data = data_hi;
        end
        else if (pugType==0)
        begin
//            if(x>=BurgerPugT && x<=BurgerPugD && y>=BurgerPugL && y<=BurgerPugR)
//            begin
//                addr_burgerP = 167*(y-BurgerPugL) + (x-BurgerPugT);
//                data = data_burgerP;
//            end
//Test
//            if( (x-BurgerPugT)**2+(y-BurgerPugL)**2 <=100)
//            begin
//                data = 8'b1111111;
//            end
            if(x>=BurgerPugT && x<=BurgerPugD && y>=BurgerPugL && y<=BurgerPugR)
            begin
                addr_burgerP = 89*(y-BurgerPugL) + (x-BurgerPugT);
                data = data_burgerP;
            end
        end
        else if (pugType==1)
        begin
//            if(x>=PizzaPugT && x<=PizzaPugD && y>=PizzaPugL && y<=PizzaPugR)
//            begin
//                addr_pizzaP = 256*(y-PizzaPugL) + (x-PizzaPugT);
//                data = data_pizzaP;
//            end
//Test
//            if( (x-PizzaPugT)**2+(y-PizzaPugL)**2 <=100)
//            begin
//                data = 8'b11110000;
//            end
            if(x>=PizzaPugT && x<=PizzaPugD && y>=PizzaPugL && y<=PizzaPugR)
            begin
                addr_pizzaP = 128*(y-PizzaPugL) + (x-PizzaPugT);
                data = data_pizzaP;
            end
        end
        else if (pugType==2)
        begin
//            if(x>=KebabPugT && x<=KebabPugD && y>=KebabPugL && y<=KebabPugR)
//            begin
//                addr_kebabP = 230*(y-KebabPugL) + (x-KebabPugT);
//                data = data_kebabP;
//            end
//Test
//            if( (x-KebabPugT)**2+(y-KebabPugL)**2 <=100)
//            begin
//                data = 8'b00001111;
//            end
            if(x>=KebabPugT && x<=KebabPugD && y>=KebabPugL && y<=KebabPugR)
            begin
                addr_kebabP = 107*(y-KebabPugL) + (x-KebabPugT);
                data = data_kebabP;
            end
        end
        else if (pugType==3) //TODO
        begin
//            if(x>=LolipopPugT && x<=LolipopPugD && y>=LolipopPugL && y<=LolipopPugR)
//            begin
//                addr_lolipopP = 208*(y-LolipopPugL) + (x-LolipopPugT);
//                data = data_lolipopP;
//            end
//Test
//            if( (x-LolipopPugT)**2+(y-LolipopPugL)**2 <=100)
//            begin
//                data = 8'b00110011;
//            end
            if(x>=LolipopPugT && x<=LolipopPugD && y>=LolipopPugL && y<=LolipopPugR)
            begin
                addr_lolipopP = 111*(y-LolipopPugL) + (x-LolipopPugT);
                data = data_lolipopP;
            end
        end
        else
        begin
            data = 0;
        end
    end
    
endmodule
