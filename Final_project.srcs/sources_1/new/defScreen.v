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
    ,input [6:0] hpMonster
    ,input [5:0] bulletType //type of a,b,c bulelt *if state has only 1 monster,bulletType of a,b,c are same with monsterType
    ,input [59:0]pos //pos of {bulletX,bulletY} 
    ,output reg [11:0] rgb
    );
    
    localparam BurgerPugT = 278;
    localparam BurgerPugL = 39;
    localparam BurgerPugD = 366;
    localparam BurgerPugR = 166;
    localparam Box1T = 192;
    localparam Box1L = 196;
    localparam Box1D = 447;
    localparam Box1R = 403;
    localparam Milk1T = 207;
    localparam Milk1L = 420;
    localparam Milk1D = 226;
    localparam Milk1R = 439;
    localparam Blood1T = 234;
    localparam Blood1L = 420;
    localparam Blood1D = 433;
    localparam Blood1R = 437;
    localparam Bone1 = 16;
    localparam Burger = 16;
    
    localparam PizzaPugT = 256;
    localparam PizzaPugL = 41;
    localparam PizzaPugD = 383;
    localparam PizzaPugR = 168;
    localparam Box2T = 208;
    localparam Box2L = 179;
    localparam Box2D = 431;
    localparam Box2R = 402;
    localparam Milk2T = 203;
    localparam Milk2L = 420;
    localparam Milk2D = 222;
    localparam Milk2R = 439;
    localparam Blood2T = 234;
    localparam Blood2L = 422;
    localparam Blood2D = 432;
    localparam Blood2R = 437;
    localparam Bone2 = 16;
    localparam Pizza = 32;
    
    localparam KebabPugT = 267;
    localparam KebabPugL = 37;
    localparam KebabPugD = 373;
    localparam KebabPugR = 148;
    localparam Box3T = 209;
    localparam Box3L = 181;
    localparam Box3D = 432;
    localparam Box3R = 404;
    localparam Milk3T = 206;
    localparam Milk3L = 420;
    localparam Milk3D = 225;
    localparam Milk3R = 439;
    localparam Blood3T = 232;
    localparam Blood3L = 422;
    localparam Blood3D = 431;
    localparam Blood3R = 437;
    localparam Bone3 = 16;
    localparam KebabH = 32;
    localparam KebabW = 140;
    
    localparam LolipopPugT = 268;
    localparam LolipopPugL = 64;
    localparam LolipopPugD = 378;
    localparam LolipopPugR = 191;
    localparam Box4T = 99;
    localparam Box4L = 227;
    localparam Box4D = 546;
    localparam Box4R = 386;
    localparam Milk4T = 211;
    localparam Milk4L = 403;
    localparam Milk4D = 230;
    localparam Milk4R = 422;
    localparam Blood4T = 237;
    localparam Blood4L = 405;
    localparam Blood4D = 436;
    localparam Blood4R = 420;
    localparam Bone4 = 16;
    localparam LolipopH = 16;
    localparam LolipopW = 140;
    
    parameter ENABLE = 0;
    
        
    wire [9:0] abx = pos[59:50]; //bullet a is @ (x,y) = (abx,aby)
    wire [9:0] aby = pos[29:20];
    wire [9:0] bbx = pos[49:40]; //bullet b is @ (x,y) = (bbx,bby)
    wire [9:0] bby = pos[19:10];
    wire [9:0] cbx = pos[39:30];//bullet c is @ (x,y) = (cbx,cby)
    wire [9:0] cby = pos[9:0];
    
    always @(p_tick)
    begin
    if(ENABLE)
    begin
        if(ENABLE)
        begin
        end
        else rgb <= 12'b000000000000;
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
