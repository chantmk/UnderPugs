`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2020 07:04:31 PM
// Design Name: 
// Module Name: atkScreen
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


module atkScreen(
    input clk
    ,input p_tick
    ,input [9:0] x
    ,input [9:0] y
    ,input [9:0] xPlayer
    ,input [9:0] yPlayer
    ,input [6:0] hpMonster //min 0 max 100
    ,input [1:0] pugType
    ,output reg [11:0] rgb
    ,output reg [7:0] data
    );
    
    localparam STANDARD_SIZE = 16;
    localparam HEART_POSX = 206; // Heart pos for left-top corner
    localparam HEART_POSY = 66;  // Heart use standard size(ss)
    localparam HEALTHBAR_POSX = 234;
    localparam HEALTHBAR_POSy = 66;
    localparam HEALTHBAR_WIDTH = 200; // H=ss
    localparam HEALTHBAR_HEIGHT = 20; // H=ss
    localparam MONSTER_POSX = 275;
    localparam MONSTER_POSY = 102;
    localparam MONSTER_WIDTH = 89;
    localparam MONSTER_HEGIHT = 128;
    localparam ATKBOX_POSX = 96; //border = 3
    localparam ATKBOX_POSY = 266;
    localparam ATKBOX_WIDTH = 448;
    localparam ATKBOX_HEGIHT = 120;
    localparam POINTER_HEIGHT = 0;
    localparam POINTER_CORNEROFFSET = 0;
    localparam BAR1X = 0;
    localparam BAR1OFFSET = 0;
    localparam BAR2X = 0;
    localparam BAR2OFFSET = 0;
    localparam BAR3X = 0;
    localparam BAR3OFFSET = 0;
    localparam BAR4X = 0;
    localparam BAR4OFFSET = 0;
    
    localparam HeartT = 206;
    localparam HeartL = 66;
    localparam HeartD = 221;
    localparam HeartR = 81;
    localparam BloodT = 206;
    localparam BloodL = 66;
    localparam BloodD = 221;
    localparam BloodR = 81;
    localparam BurgerPugT = 275;
    localparam BurgerPugL = 102;
    localparam BurgerPugD = 363;
    localparam BurgerPugR = 229;
    localparam PizzaPugT = 256;
    localparam PizzaPugL = 106;
    localparam PizzaPugD = 372;
    localparam PizzaPugR = 217;
    localparam KebabPugT = 266;
    localparam KebabPugL = 102;
    localparam KebabPugD = 375;
    localparam KebabPugR = 229;
    localparam LolipopPugT = 265;
    localparam LolipopPugL = 102;
    localparam LolipopPugD = 375;
    localparam LolipopPugR = 229;
//    localparam BoxT = 96;
//    localparam BoxL = 266;
//    localparam BoxD = 543;
//    localparam BoxR = 385;
//    localparam Triangle = 20;
//    localparam TriangleY = 393;

    parameter ENABLE = 0;
    
    reg [7:0] addr_heart;
    wire [7:0] data_heart;
    spriteROM #(
        .DEPTH(256),
        .DEPTH_BIT(8),
        .MEMFILE("heart.mem")
        ) heart (
        .clk(clk),
        .addr(addr_heart),
        .data(data_heart)
        );
        
    reg [13:0] addr_burgerP;
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
        
    reg [13:0] addr_pizzaP;
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
        
    reg [13:0] addr_kebabP;
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
        
    reg [13:0] addr_lolipopP;
    wire [7:0] data_lolipopP;
    spriteROM #(
        .DEPTH(11984),
        .DEPTH_BIT(14),
        .MEMFILE("lolipop-pug2.mem")
        ) lolipopP (
        .clk(clk),
        .addr(addr_lolipopP),
        .data(data_lolipopP)
        );
    
    always @(p_tick)
    begin
    if(ENABLE)
    begin
        if(ENABLE)
        begin
        end
        else rgb <= 12'b000000000000;
    end
    
    else if (x>=HeartT && x<=HeartD && y>=HeartL && y<=HeartR)
    begin
        addr_heart = 16*(y-HeartL) + (x-HeartT);
        data = data_heart;
    end
    else if (pugType==0) 
    begin
        if(x>=BurgerPugT && x<=BurgerPugD && y>=BurgerPugL && y<=BurgerPugR)
        begin
            addr_burgerP = 89*(y-BurgerPugL) + (x-BurgerPugT);
            data = data_burgerP;
        end
    end
    else if (pugType==1) 
    begin
        if(x>=PizzaPugT && x<=PizzaPugD && y>=PizzaPugL && y<=PizzaPugR)
        begin
            addr_pizzaP = 128*(y-PizzaPugL) + (x-PizzaPugT);
            data = data_pizzaP;
        end
    end
    else if (pugType==2) 
    begin
        if(x>=KebabPugT && x<=KebabPugD && y>=KebabPugL && y<=KebabPugR)
        begin
            addr_kebabP = 107*(y-KebabPugL) + (x-KebabPugT);
            data = data_kebabP;
        end
    end
    else if (pugType==3)
    begin
        if(x>=LolipopPugT && x<=LolipopPugD && y>=LolipopPugL && y<=LolipopPugR)
        begin
            addr_lolipopP = 89*(y-LolipopPugL) + (x-LolipopPugT);
            data = data_lolipopP;
        end
    end
    
    else
    begin
        //insert constant value instead of localparam to recude render lag
//        if( (x-xPlayer)**2+(y-yPlayer)**2 <=100) begin rgb <= 12'b000011110000; end//green
        if( y>= yPlayer+15 && (y-yPlayer) <= 2*(x - xPlayer) && (y-yPlayer) <= -2*(x-xPlayer)) begin rgb <= 12'b000011110000; end
        //border 1px hp bar
        else if( (x==233 | x==435) && (y>=65 && y<=87)) begin rgb <= 12'b111100000000; end//red
        else if( (x>=233 && x<=435) && (y==65 | y==87)) begin rgb <= 12'b111100000000; end//red
        //hp bar
        else if( x>=234 && x<=(234+hpMonster*2) && y>=66 && y<=88) begin rgb <= 12'b111100000000; end//red
        else begin rgb <= 12'b000000000000 ; end
        
        //barcode 1px atkBox
        if ((x>=300 && x<=340) && (y>=230 && y<=350)) begin rgb <= 12'b111111111111; end
        if (((x>=263 && x<=283) | (x>=364 && x<=389)) && (y>=230 && y<=350)) begin rgb <= 12'b011101110111; end
        if (((x>=210 && x<=220) | (x>=432 && x<=442)) && (y>=230 && y<=350)) begin rgb <= 12'b001100110011; end
        if (((x>=162 && x<=167) | (x>=446 && x<=451)) && (y>=230 && y<=350)) begin rgb <= 12'b000100010001; end
        //border atkBox
        if( (x==95 | x==545) && (y>=229 && y<=351)) begin rgb <= 12'b111111111111; end
        if( (x>=95 && x<=545) && (y==229 | y==351)) begin rgb <= 12'b111111111111; end
    end
    end
endmodule
