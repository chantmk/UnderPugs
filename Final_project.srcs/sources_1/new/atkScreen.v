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
    localparam BloodT = 234;
    localparam BloodL = 66;
    localparam BloodD = 433;
    localparam BloodR = 81;
    // -1 DR
    localparam BurgerPugT = 275;
    localparam BurgerPugL = 102;
    localparam BurgerPugD = 362;
    localparam BurgerPugR = 228;
    localparam PizzaPugT = 256;
    localparam PizzaPugL = 106;
    localparam PizzaPugD = 371;
    localparam PizzaPugR = 216;
    localparam KebabPugT = 266;
    localparam KebabPugL = 102;
    localparam KebabPugD = 374;
    localparam KebabPugR = 228;
    localparam LolipopPugT = 265;
    localparam LolipopPugL = 102;
    localparam LolipopPugD = 374;
    localparam LolipopPugR = 228;
//    localparam BoxT = 96;
//    localparam BoxL = 266;
//    localparam BoxD = 543;
//    localparam BoxR = 385;
//    localparam Triangle = 20;
//    localparam TriangleY = 393;
    
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
        .MEMFILE("lolipop-pug.mem")
        ) lolipopP (
        .clk(clk),
        .addr(addr_lolipopP),
        .data(data_lolipopP)
        );
    
    always @(p_tick)
    begin
    
    if (x>=HeartT && x<=HeartD && y>=HeartL && y<=HeartR)
    begin
        addr_heart = 16*(y-HeartL) + (x-HeartT);
        data = data_heart;
    end
    
        //border atkBox  x_area = [96,543] ,y_area = [266,385] in decimal size 448x120
    else if( (x==96 | x==543) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
    else if( (x>=96 && x<=543) && (y==266 | y==385)) begin data <= 8'h3F; end //white
        //hpMonster bar size 200x16 x_area = [234,433] ,y_area = [66,81]
    else if( x>=234 && x<=(234+hpMonster*2) && y>=66 && y<=81) 
    begin 
        addr_heart = 8'b10000000; //heart color
        data <= data_heart;
    end
        //border 1px hpMonster bar
    else if( (x==234 | x==433) && (y>=66 && y<=81))
    begin 
        addr_heart = 8'b10000000; //heart color
        data <= data_heart;
    end
    else if( (x>=234 && x<=433) && (y==66 | y==81)) 
    begin 
        addr_heart = 8'b10000000; //heart color
        data <= data_heart;
    end
        //anything else
//    else begin data <= 8'b0 ; end
    
    else if (pugType==0) 
    begin
        if(x>=BurgerPugT && x<=BurgerPugD && y>=BurgerPugL && y<=BurgerPugR)
        begin
            addr_burgerP = 89*(y-BurgerPugL) + (x-BurgerPugT);
            data = data_burgerP;
        end
        // x_area = [137,138] ,y_area = [266,385] size 2
        else if ( (x>=137 && x<=138) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [156,158] ,y_area = [266,385] size 2
        else if ( (x>=156 && x<=158) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [162,166] ,y_area = [266,385] size 5
        else if ( (x>=162 && x<=166) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [210,219] ,y_area = [266,385] size 10
        else if ( (x>=210 && x<=219) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [263,282] ,y_area = [266,385] size 20
        else if ( (x>=263 && x<=282) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [300,339] ,y_area = [266,385] size 40
        else if ( (x>=300 && x<=339) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [364,388] ,y_area = [266,385] size 25
        else if ( (x>=364 && x<=388) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [432,441] ,y_area = [266,385] size 10
        else if ( (x>=432 && x<=441) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white    
        // x_area = [446,450] ,y_area = [266,385] size 5
        else if ( (x>=446 && x<=450) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [494,496] ,y_area = [266,385] size 3
        else if ( (x>=494 && x<=496) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
    end
    else if (pugType==1) 
    begin
        if(x>=PizzaPugT && x<=PizzaPugD && y>=PizzaPugL && y<=PizzaPugR)
        begin
            addr_pizzaP = 128*(y-PizzaPugL) + (x-PizzaPugT);
            data = data_pizzaP;
        end
        // x_area = [137,138] ,y_area = [266,385] size 2
        else if ( (x>=137 && x<=138) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [162,167] ,y_area = [266,385] size 2
        else if ( (x>=162 && x<=167) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [210,219] ,y_area = [266,385] size 10
        else if ( (x>=210 && x<=219) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [272,281] ,y_area = [266,385] size 10
        else if ( (x>=272 && x<=281) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [298,317] ,y_area = [266,385] size 20
        else if ( (x>=298 && x<=371) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [361,371] ,y_area = [266,385] size 12
        else if ( (x>=300 && x<=339) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [388,422] ,y_area = [266,385] size 35
        else if ( (x>=364 && x<=388) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [448,472] ,y_area = [266,385] size 25
        else if ( (x>=432 && x<=441) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white 
        // x_area = [502,506] ,y_area = [266,385] size 5
        else if ( (x>=446 && x<=450) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [532,534] ,y_area = [266,385] size 3
        else if ( (x>=494 && x<=496) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
    end
    else if (pugType==2) 
    begin
        if(x>=KebabPugT && x<=KebabPugD && y>=KebabPugL && y<=KebabPugR)
        begin
            addr_kebabP = 107*(y-KebabPugL) + (x-KebabPugT);
            data = data_kebabP;
        end
        // x_area = [137,138] ,y_area = [266,385] size 2
        else if ( (x>=137 && x<=138) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [183,185] ,y_area = [266,385] size 3
        else if ( (x>=183 && x<=185) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [210,217] ,y_area = [266,385] size 8
        else if ( (x>=210 && x<=217) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [263,274] ,y_area = [266,385] size 12
        else if ( (x>=298 && x<=371) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [289,308] ,y_area = [266,385] size 20
        else if ( (x>=289 && x<=308) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [364,373] ,y_area = [266,385] size 10
        else if ( (x>=364 && x<=373) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [432,436] ,y_area = [266,385] size 5
        else if ( (x>=432 && x<=436) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [494,496] ,y_area = [266,385] size 3
        else if ( (x>=494 && x<=496) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white 
    end
    else if (pugType==3)
    begin
        if(x>=LolipopPugT && x<=LolipopPugD && y>=LolipopPugL && y<=LolipopPugR)
        begin
            addr_lolipopP = 89*(y-LolipopPugL) + (x-LolipopPugT);
            data = data_lolipopP;
        end
        // x_area = [137,138] ,y_area = [266,385] size 2
        else if ( (x>=137 && x<=138) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [156,157] ,y_area = [266,385] size 2
        else if ( (x>=156 && x<=157) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [162,166] ,y_area = [266,385] size 5
        else if ( (x>=162 && x<=166) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [179,183] ,y_area = [266,385] size 5
        else if ( (x>=179 && x<=183) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [218,227] ,y_area = [266,385] size 10
        else if ( (x>=218 && x<=227) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [278,282] ,y_area = [266,385] size 5
        else if ( (x>=278 && x<=282) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [364,368] ,y_area = [266,385] size 5
        else if ( (x>=364 && x<=368) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [384,388] ,y_area = [266,385] size 5
        else if ( (x>=384 && x<=388) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [446,450] ,y_area = [266,385] size 5
        else if ( (x>=446 && x<=450) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
        // x_area = [494,496] ,y_area = [266,385] size 3
        else if ( (x>=494 && x<=496) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
    end
    
    else begin data <= 8'b0 ; end
    
//    else
//    begin
//        //insert constant value instead of localparam to recude render lag
////        if( (x-xPlayer)**2+(y-yPlayer)**2 <=100) begin rgb <= 12'b000011110000; end//green
//        if( y>= yPlayer+15 && (y-yPlayer) <= 2*(x - xPlayer) && (y-yPlayer) <= -2*(x-xPlayer)) begin rgb <= 12'b000011110000; end
//        //border 1px hp bar
//        else if( (x==233 | x==435) && (y>=65 && y<=87)) begin rgb <= 12'b111100000000; end//red
//        else if( (x>=233 && x<=435) && (y==65 | y==87)) begin rgb <= 12'b111100000000; end//red
//        //hp bar
//        else if( x>=234 && x<=(234+hpMonster*2) && y>=66 && y<=88) begin rgb <= 12'b111100000000; end//red
//        else begin rgb <= 12'b000000000000 ; end
        
//        //barcode 1px atkBox
//        if ((x>=300 && x<=340) && (y>=230 && y<=350)) begin rgb <= 12'b111111111111; end
//        if (((x>=263 && x<=283) | (x>=364 && x<=389)) && (y>=230 && y<=350)) begin rgb <= 12'b011101110111; end
//        if (((x>=210 && x<=220) | (x>=432 && x<=442)) && (y>=230 && y<=350)) begin rgb <= 12'b001100110011; end
//        if (((x>=162 && x<=167) | (x>=446 && x<=451)) && (y>=230 && y<=350)) begin rgb <= 12'b000100010001; end
//        //border atkBox
//        if( (x==95 | x==545) && (y>=229 && y<=351)) begin rgb <= 12'b111111111111; end
//        if( (x>=95 && x<=545) && (y==229 | y==351)) begin rgb <= 12'b111111111111; end
//    end
    end
endmodule
