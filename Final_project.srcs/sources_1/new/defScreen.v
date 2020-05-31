`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2020 07:06:52 PM
// Design Name: 
// Module Name: defScreen
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


module defScreen(
    input clk
    ,input p_tick
    ,input [9:0] x
    ,input [9:0] y
    ,input [6:0] hpPlayer
    ,input [9:0] xPlayer
    ,input [9:0] yPlayer
    ,input [1:0] pugType //type of a,b,c bulelt *if state has only 1 monster,bulletType of a,b,c are same with monsterType
    ,input [59:0]pos //pos of {bulletX,bulletY} 
    ,output reg [11:0] rgb
    ,output reg [7:0] data
    );
    
    localparam BurgerPugT = 278;
    localparam BurgerPugL = 39;
    localparam BurgerPugD = 366;
    localparam BurgerPugR = 166;
    localparam MilkT = 207;
    localparam MilkL = 420;
    localparam MilkD = 226;
    localparam MilkR = 439;
    localparam Bone = 16;
    localparam Burger = 16;
    
    localparam PizzaPugT = 256;
    localparam PizzaPugL = 41;
    localparam PizzaPugD = 383;
    localparam PizzaPugR = 168;
    localparam Pizza = 32;
    
    localparam KebabPugT = 267;
    localparam KebabPugL = 37;
    localparam KebabPugD = 373;
    localparam KebabPugR = 148;
    localparam KebabH = 32;
    localparam KebabW = 140;
    
    localparam LolipopPugT = 268;
    localparam LolipopPugL = 64;
    localparam LolipopPugD = 378;
    localparam LolipopPugR = 191;
    localparam LolipopH = 16;
    localparam LolipopW = 140;
    
    parameter ENABLE = 0;
        
    wire [9:0] abx = pos[59:50]; //bullet a is @ (x,y) = (abx,aby)
    wire [9:0] aby = pos[29:20];
    wire [9:0] bbx = pos[49:40]; //bullet b is @ (x,y) = (bbx,bby)
    wire [9:0] bby = pos[19:10];
    wire [9:0] cbx = pos[39:30];//bullet c is @ (x,y) = (cbx,cby)
    wire [9:0] cby = pos[9:0];
    
    reg [14:0] addr_milk;
    wire [7:0] data_milk;
    spriteROM #(
        .DEPTH(400),
        .DEPTH_BIT(9),
        .MEMFILE("milk.mem")
        ) milk (
        .clk(clk),
        .addr(addr_milk),
        .data(data_milk)
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
        .DEPTH(11984),
        .DEPTH_BIT(14),
        .MEMFILE("lolipop-pug2.mem")
        ) lolipopP (
        .clk(clk),
        .addr(addr_lolipopP),
        .data(data_lolipopP)
        );
        
    reg [14:0] addr_bone;
    wire [7:0] data_bone;
    spriteROM #(
        .DEPTH(256),
        .DEPTH_BIT(8),
        .MEMFILE("bone.mem")
        ) bone (
        .clk(clk),
        .addr(addr_bone),
        .data(data_bone)
        );
        
    reg [14:0] addr_burger;
    wire [7:0] data_burger;
    spriteROM #(
        .DEPTH(256),
        .DEPTH_BIT(8),
        .MEMFILE("burger.mem")
        ) burger (
        .clk(clk),
        .addr(addr_burger),
        .data(data_burger)
        );
        
    reg [14:0] addr_pizza;
    wire [7:0] data_pizza;
    spriteROM #(
        .DEPTH(1024),
        .DEPTH_BIT(10),
        .MEMFILE("pizza.mem")
        ) pizza (
        .clk(clk),
        .addr(addr_pizza),
        .data(data_pizza)
        );
        
    reg [14:0] addr_kebab;
    wire [7:0] data_kebab;
    spriteROM #(
        .DEPTH(4480),
        .DEPTH_BIT(13),
        .MEMFILE("kebab.mem")
        ) kebab (
        .clk(clk),
        .addr(addr_kebab),
        .data(data_kebab)
        );
        
    reg [14:0] addr_lolipop;
    wire [7:0] data_lolipop;
    spriteROM #(
        .DEPTH(2240),
        .DEPTH_BIT(12),
        .MEMFILE("lolipop.mem")
        ) lolipop (
        .clk(clk),
        .addr(addr_lolipop),
        .data(data_lolipop)
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
    
    else if (x>=MilkT && x<=MilkD && y>=MilkL && y<=MilkR)
    begin
        addr_milk = 20*(y-MilkL) + (x-MilkT);
        data = data_milk;
    end
    else if (x>=xPlayer && x<=(xPlayer+16) && y>=yPlayer && y<=(yPlayer+16))
    begin
        addr_bone = 16*(y-yPlayer) + (x-xPlayer);
        data = data_bone;
    end
    else if (pugType==0) 
    begin
        if(x>=BurgerPugT && x<=BurgerPugD && y>=BurgerPugL && y<=BurgerPugR)
        begin
            addr_burgerP = 89*(y-BurgerPugL) + (x-BurgerPugT);
            data = data_burgerP;
        end
        else if (x>=pos[59:50] && x<=(pos[59:50]+16) && y>=pos[49:40] && y<=(pos[49:40]+16))
        begin
            addr_burger = 16*(y-pos[49:40]) + (x-pos[59:50]);
            data = data_burger;
        end
        else if (x>=pos[39:30] && x<=(pos[39:30]+16) && y>=pos[29:20] && y<=(pos[29:20]+16))
        begin
            addr_burger = 16*(y-pos[29:20]) + (x-pos[39:30]);
            data = data_burger;
        end
        else if (x>=pos[19:10] && x<=(pos[19:10]+16) && y>=pos[9:0] && y<=(pos[9:0]+16))
        begin
            addr_burger = 16*(y-pos[9:0]) + (x-pos[19:10]);
            data = data_burger;
        end
    end
    else if (pugType==1) 
    begin
        if(x>=PizzaPugT && x<=PizzaPugD && y>=PizzaPugL && y<=PizzaPugR)
        begin
            addr_pizzaP = 128*(y-PizzaPugL) + (x-PizzaPugT);
            data = data_pizzaP;
        end
        else if (x>=pos[59:50] && x<=(pos[59:50]+32) && y>=pos[49:40] && y<=(pos[49:40]+32))
        begin
            addr_pizza = 32*(y-pos[49:40]) + (x-pos[59:50]);
            data = data_pizza;
        end
        else if (x>=pos[39:30] && x<=(pos[39:30]+32) && y>=pos[29:20] && y<=(pos[29:20]+32))
        begin
            addr_pizza = 32*(y-pos[29:20]) + (x-pos[39:30]);
            data = data_pizza;
        end
        else if (x>=pos[19:10] && x<=(pos[19:10]+32) && y>=pos[9:0] && y<=(pos[9:0]+32))
        begin
            addr_pizza = 32*(y-pos[9:0]) + (x-pos[19:10]);
            data = data_pizza;
        end
    end
    else if (pugType==2) 
    begin
        if(x>=KebabPugT && x<=KebabPugD && y>=KebabPugL && y<=KebabPugR)
        begin
            addr_kebabP = 107*(y-KebabPugL) + (x-KebabPugT);
            data = data_kebabP;
        end
        else if (x>=pos[59:50] && x<=(pos[59:50]+140) && y>=pos[49:40] && y<=(pos[49:40]+140))
        begin
            addr_kebab = 140*(y-pos[49:40]) + (x-pos[59:50]);
            data = data_kebab;
        end
        else if (x>=pos[39:30] && x<=(pos[39:30]+140) && y>=pos[29:20] && y<=(pos[29:20]+140))
        begin
            addr_kebab = 140*(y-pos[29:20]) + (x-pos[39:30]);
            data = data_kebab;
        end
        else if (x>=pos[19:10] && x<=(pos[19:10]+140) && y>=pos[9:0] && y<=(pos[9:0]+140))
        begin
            addr_kebab = 140*(y-pos[9:0]) + (x-pos[19:10]);
            data = data_kebab;
        end
    end
    else if (pugType==3) 
    begin
        if(x>=LolipopPugT && x<=LolipopPugD && y>=LolipopPugL && y<=LolipopPugR)
        begin
            addr_lolipopP = 89*(y-LolipopPugL) + (x-LolipopPugT);
            data = data_lolipopP;
        end
        else if (x>=pos[59:50] && x<=(pos[59:50]+16) && y>=pos[49:40] && y<=(pos[49:40]+16))
        begin
            addr_lolipop = 16*(y-pos[49:40]) + (x-pos[59:50]);
            data = data_lolipop;
        end
        else if (x>=pos[39:30] && x<=(pos[39:30]+16) && y>=pos[29:20] && y<=(pos[29:20]+16))
        begin
            addr_lolipop = 16*(y-pos[29:20]) + (x-pos[39:30]);
            data = data_lolipop;
        end
        else if (x>=pos[19:10] && x<=(pos[19:10]+16) && y>=pos[9:0] && y<=(pos[9:0]+16))
        begin
            addr_lolipop = 16*(y-pos[9:0]) + (x-pos[19:10]);
            data = data_lolipop;
        end
    end
    
    else
    begin
        //insert constant value instead of localparam to recude render lag
        //beware non-blocking assign overlab, it will make game fucking lag 
        //all 3 bullet render, position are controlled from defState in game_logic
        if( (x-abx)**2+(y-aby)**2 <=100) begin rgb <= 12'b111110100100; end//orange
        else if( (x-bbx)**2+(y-bby)**2 <=100) begin rgb <= 12'b101111110001; end //yellow
        else if( (x-cbx)**2+(y-cby)**2 <=100) begin rgb <= 12'b001100011111; end //blue
        //player render
        else if( (x-xPlayer)**2+(y-yPlayer)**2 <=100) begin rgb <= 12'b000011110000; end //green
        //border defBox  x_area = [192,432] ,y_area = [210,402] in decimal
        else if( (x==192 | x==432) && (y>=210 && y<=402)) begin rgb <= 12'b111111111111; end
        else if( (x>=192 && x<=432) && (y==210 | y==402)) begin rgb <= 12'b111111111111; end
        //hpPlayer bar
        else if( x>=234 && x<=(234+hpPlayer*2) && y>=450 && y<=470) begin rgb <= 12'b000011110000; end//green
        //border 1px hpPlayer bar
        else if( (x==233 | x==435) && (y>=449 && y<=471)) begin rgb <= 12'b111111111111; end//white
        else if( (x>=233 && x<=435) && (y==449 | y==471)) begin rgb <= 12'b111111111111; end//white
        //anything else
        else begin rgb <= 12'b000000000000 ; end
    end
    end
endmodule
