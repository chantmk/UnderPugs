`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/03/2020 03:15:28 PM
// Design Name: 
// Module Name: playScreen
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


module playScreen(
    input clk
    ,input p_tick
    ,input [2:0] screen_state
    ,input [9:0] x
    ,input [9:0] y
    ,input [9:0] xPlayer
    ,input [9:0] yPlayer
    ,input [1:0] pugType
    ,input [6:0] hpPlayer
    ,input [6:0] hpMonster 
    ,input [59:0] pos
    ,output reg [7:0] data
    );
//  hi
    localparam HiT = 162;
    localparam HiL = 298;
    localparam HiD = 478;
    localparam HiR = 338;
    
    localparam HI_BurgerPugT = 275;
    localparam HI_BurgerPugL = 143;
    localparam HI_BurgerPugD = 364;
    localparam HI_BurgerPugR = 271;
    
    localparam HI_PizzaPugT = 256;
    localparam HI_PizzaPugL = 143;
    localparam HI_PizzaPugD = 383;
    localparam HI_PizzaPugR = 270;
    
    localparam HI_KebabPugT = 266;
    localparam HI_KebabPugL = 143;
    localparam HI_KebabPugD = 372;
    localparam HI_KebabPugR = 254;
    
    localparam HI_LolipopPugT = 265;
    localparam HI_LolipopPugL = 143;
    localparam HI_LolipopPugD = 375;
    localparam HI_LolipopPugR = 270;
//  atk

    localparam HeartT = 206;
    localparam HeartL = 66;
    localparam HeartD = 221;
    localparam HeartR = 81;
    
    localparam BloodT = 234;
    localparam BloodL = 66;
    localparam BloodD = 433;
    localparam BloodR = 81;
    
    localparam ATK_BurgerPugT = 275;
    localparam ATK_BurgerPugL = 102;
    localparam ATK_BurgerPugD = 362;
    localparam ATK_BurgerPugR = 228;
    
    localparam ATK_PizzaPugT = 256;
    localparam ATK_PizzaPugL = 106;
    localparam ATK_PizzaPugD = 371;
    localparam ATK_PizzaPugR = 216;
    
    localparam ATK_KebabPugT = 266;
    localparam ATK_KebabPugL = 102;
    localparam ATK_KebabPugD = 374;
    localparam ATK_KebabPugR = 228;
    
    localparam ATK_LolipopPugT = 265;
    localparam ATK_LolipopPugL = 102;
    localparam ATK_LolipopPugD = 375;
    localparam ATK_LolipopPugR = 229;
//  def
    localparam DEF_MilkT = 207;
    localparam DEF_MilkL = 420;
    localparam DEF_MilkD = 222;
    localparam DEF_MilkR = 435;
    localparam DEF_Bone = 16;
    localparam DEF_Burger = 16;
    
    localparam DEF_BurgerPugT = 278;
    localparam DEF_BurgerPugL = 39;
    localparam DEF_BurgerPugD = 366;
    localparam DEF_BurgerPugR = 166;
    
    localparam DEF_PizzaPugT = 256;
    localparam DEF_PizzaPugL = 41;
    localparam DEF_PizzaPugD = 383;
    localparam DEF_PizzaPugR = 168;
    localparam DEF_Pizza = 32;
    
    localparam DEF_KebabPugT = 267;
    localparam DEF_KebabPugL = 37;
    localparam DEF_KebabPugD = 373;
    localparam DEF_KebabPugR = 148;
    localparam DEF_KebabH = 32;
    localparam DEF_KebabW = 140;
    
    localparam DEF_LolipopPugT = 268;
    localparam DEF_LolipopPugL = 37;
    localparam DEF_LolipopPugD = 378;
    localparam DEF_LolipopPugR = 164;
    localparam DEF_LolipopH = 16;
    localparam DEF_LolipopW = 140;
    
    wire [9:0] abx = pos[59:50]; //bullet a is @ (x,y) = (abx,aby)
    wire [9:0] aby = pos[29:20];
    wire [9:0] bbx = pos[49:40]; //bullet b is @ (x,y) = (bbx,bby)
    wire [9:0] bby = pos[19:10];
    wire [9:0] cbx = pos[39:30];//bullet c is @ (x,y) = (cbx,cby)
    wire [9:0] cby = pos[9:0];
// rom
    reg [13:0] addr_hi;
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
    
    reg [7:0] addr_milk;
    wire [7:0] data_milk;
    spriteROM #(
        .DEPTH(256),
        .DEPTH_BIT(8),
        .MEMFILE("milk.mem")
        ) milk (
        .clk(clk),
        .addr(addr_milk),
        .data(data_milk)
        );
                
    reg [7:0] addr_bone;
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
        .DEPTH(14208),
        .DEPTH_BIT(14),
        .MEMFILE("lolipop-pug.mem")
        ) lolipopP (
        .clk(clk),
        .addr(addr_lolipopP),
        .data(data_lolipopP)
        );
        
    reg [7:0] addr_burger;
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
        
    reg [9:0] addr_pizza;
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
        
    reg [12:0] addr_kebab;
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
        
    reg [11:0] addr_lolipop;
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
        
//  data reg
    always @(posedge p_tick)
    begin
    if(screen_state==3'b011)
    begin
        if(x>=HiT && x<=HiD && y>=HiL && y<=HiR)
        begin
            addr_hi = 316*(y-HiL) + (x-HiT);
            data = data_hi;
        end
        else if (pugType==0)
        begin
            if(x>=HI_BurgerPugT && x<=HI_BurgerPugD && y>=HI_BurgerPugL && y<=HI_BurgerPugR)
            begin
                addr_burgerP = 89*(y-HI_BurgerPugL) + (x-HI_BurgerPugT);
                data = data_burgerP;
            end
            else data <=8'b0;
        end
        else if (pugType==1)
        begin
            if(x>=HI_PizzaPugT && x<=HI_PizzaPugD && y>=HI_PizzaPugL && y<=HI_PizzaPugR)
            begin
                addr_pizzaP = 128*(y-HI_PizzaPugL) + (x-HI_PizzaPugT);
                data = data_pizzaP;
            end
            else data <=8'b0;
        end
        else if (pugType==2)
        begin
            if(x>=HI_KebabPugT && x<=HI_KebabPugD && y>=HI_KebabPugL && y<=HI_KebabPugR)
            begin
                addr_kebabP = 107*(y-HI_KebabPugL) + (x-HI_KebabPugT);
                data = data_kebabP;
            end
            else data <=8'b0;
        end
        else if (pugType==3) //TODO
        begin
            if(x>=HI_LolipopPugT && x<=HI_LolipopPugD && y>=HI_LolipopPugL && y<=HI_LolipopPugR)
            begin
                addr_lolipopP = 111*(y-HI_LolipopPugL) + (x-HI_LolipopPugT);
                data = data_lolipopP;
            end
            else data <=8'b0;
        end
        else
        begin
            data = 0;
        end
    end
    else if(screen_state==3'b101)
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
        else if( x>=234 && x<(234+hpMonster*2) && y>=66 && y<=81) 
        begin 
            data <= 8'h10;
        end
            //border 1px hpMonster bar
        else if( (x==233 | x==434) && (y>=65 && y<=82))
        begin 
        data <= 8'h10;
        end
        else if( (x>=233 && x<=434) && (y==65 | y==82)) 
        begin 
            data <= 8'h10;
        end
        else if( y<= yPlayer+15 && y+(2*xPlayer) >= (2*x)+yPlayer && y+(2*x) >= (2*xPlayer)+yPlayer) begin data <= 8'h3F; end

        else if (pugType==0) 
        begin
            if(x>=ATK_BurgerPugT && x<=ATK_BurgerPugD && y>=ATK_BurgerPugL && y<=ATK_BurgerPugR)
            begin
                addr_burgerP = 89*(y-ATK_BurgerPugL) + (x-ATK_BurgerPugT);
                data = data_burgerP;
            end
            // x_area = [162,166] ,y_area = [266,385] size 5
            else if ( (x>=162 && x<=167) && (y>=266 && y<=385)) begin data <= 8'h5; end //gray3
            // x_area = [210,219] ,y_area = [266,385] size 10
            else if ( (x>=210 && x<=220) && (y>=266 && y<=385)) begin data <= 8'h19; end //gray2
            // x_area = [263,282] ,y_area = [266,385] size 20
            else if ( (x>=263 && x<=283) && (y>=266 && y<=385)) begin data <= 8'h2E; end //gray1
            // x_area = [300,339] ,y_area = [266,385] size 40
            else if ( (x>=300 && x<=340) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
            // x_area = [364,388] ,y_area = [266,385] size 25
            else if ( (x>=364 && x<=389) && (y>=266 && y<=385)) begin data <= 8'h2E; end //gray1
            // x_area = [432,441] ,y_area = [266,385] size 10
            else if ( (x>=432 && x<=442) && (y>=266 && y<=385)) begin data <= 8'h19; end //gray2    
            // x_area = [446,450] ,y_area = [266,385] size 5
            else if ( (x>=446 && x<=451) && (y>=266 && y<=385)) begin data <= 8'h5; end //gray3
            else data <=8'b0;
        end
        else if (pugType==1) 
        begin
            if(x>=ATK_PizzaPugT && x<=ATK_PizzaPugD && y>=ATK_PizzaPugL && y<=ATK_PizzaPugR)
            begin
                addr_pizzaP <= 128*(y-ATK_PizzaPugL) + (x-ATK_PizzaPugT);
                data <= data_pizzaP;
            end
            // x_area = [272,281] ,y_area = [266,385] size 10
            else if ( (x>=272 && x<=282) && (y>=266 && y<=385)) begin data <= 8'h5; end //gray3
            // x_area = [298,317] ,y_area = [266,385] size 20
            else if ( (x>=298 && x<=318) && (y>=266 && y<=385)) begin data <= 8'h19; end //gray2
            // x_area = [361,371] ,y_area = [266,385] size 12
            else if ( (x>=361 && x<=373) && (y>=266 && y<=385)) begin data <= 8'h2E; end //gray1
            // x_area = [388,422] ,y_area = [266,385] size 35
            else if ( (x>=388 && x<=423) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
            // x_area = [448,472] ,y_area = [266,385] size 25
            else if ( (x>=448 && x<=473) && (y>=266 && y<=385)) begin data <= 8'h2E; end //gray1 
            // x_area = [502,506] ,y_area = [266,385] size 5
            else if ( (x>=502 && x<=507) && (y>=266 && y<=385)) begin data <= 8'h19; end //gray2
            // x_area = [532,534] ,y_area = [266,385] size 3
            else if ( (x>=532 && x<=535) && (y>=266 && y<=385)) begin data <= 8'h5; end //gray3
            else data <=8'b0;
        end
        else if (pugType==2) 
        begin
            if(x>=ATK_KebabPugT && x<=ATK_KebabPugD && y>=ATK_KebabPugL && y<=ATK_KebabPugR)
            begin
                addr_kebabP = 107*(y-ATK_KebabPugL) + (x-ATK_KebabPugT);
                data = data_kebabP;
            end
            // x_area = [183,185] ,y_area = [266,385] size 3
            else if ( (x>=183 && x<=186) && (y>=266 && y<=385)) begin data <= 8'h5; end //white
            // x_area = [210,217] ,y_area = [266,385] size 8
            else if ( (x>=210 && x<=218) && (y>=266 && y<=385)) begin data <= 8'h19; end //white
            // x_area = [263,274] ,y_area = [266,385] size 12
            else if ( (x>=263 && x<=275) && (y>=266 && y<=385)) begin data <= 8'h2E; end //white
            // x_area = [289,308] ,y_area = [266,385] size 20
            else if ( (x>=289 && x<=309) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
            // x_area = [364,373] ,y_area = [266,385] size 10
            else if ( (x>=364 && x<=374) && (y>=266 && y<=385)) begin data <= 8'h2E; end //gray1
            // x_area = [432,436] ,y_area = [266,385] size 5
            else if ( (x>=432 && x<=437) && (y>=266 && y<=385)) begin data <= 8'h19; end //gray2
            // x_area = [494,496] ,y_area = [266,385] size 3
            else if ( (x>=494 && x<=497) && (y>=266 && y<=385)) begin data <= 8'h5; end //gray3 
            else data <=8'b0;
        end
        else if (pugType==3)
        begin
            if(x>=ATK_LolipopPugT && x<=ATK_LolipopPugD && y>=ATK_LolipopPugL && y<=ATK_LolipopPugR)
            begin
                addr_lolipopP = 111*(y-ATK_LolipopPugL) + (x-ATK_LolipopPugT);
                data = data_lolipopP;
            end
            // x_area = [156,157] ,y_area = [266,385] size 2
            else if ( (x>=156 && x<=158) && (y>=266 && y<=385)) begin data <= 8'h5; end //white
            // x_area = [162,166] ,y_area = [266,385] size 5
            else if ( (x>=162 && x<=167) && (y>=266 && y<=385)) begin data <= 8'h19; end //white
            // x_area = [179,183] ,y_area = [266,385] size 5
            else if ( (x>=179 && x<=184) && (y>=266 && y<=385)) begin data <= 8'h2E; end //white
            // x_area = [218,227] ,y_area = [266,385] size 10
            else if ( (x>=218 && x<=228) && (y>=266 && y<=385)) begin data <= 8'h3F; end //white
            // x_area = [278,282] ,y_area = [266,385] size 5
            else if ( (x>=278 && x<=283) && (y>=266 && y<=385)) begin data <= 8'h2E; end //gray1
            // x_area = [364,368] ,y_area = [266,385] size 5
            else if ( (x>=364 && x<=369) && (y>=266 && y<=385)) begin data <= 8'h19; end //gray2
            // x_area = [384,388] ,y_area = [266,385] size 5
            else if ( (x>=384 && x<=389) && (y>=266 && y<=385)) begin data <= 8'h5; end //gray3
            else begin data <= 8'b0 ; end
        end
    end
    else if(screen_state==3'b110)
    begin
        if (x>=DEF_MilkT && x<=DEF_MilkD && y>=DEF_MilkL && y<=DEF_MilkR)
        begin
            addr_milk = 16*(y-DEF_MilkL) + (x-DEF_MilkT);
            data = data_milk;
        end
        else if (x>=xPlayer && x<=(xPlayer+16) && y>=yPlayer && y<=(yPlayer+16))
        begin
            addr_bone = 16*(y-yPlayer) + (x-xPlayer);
            data = data_bone;
        end
        //border defBox  x_area = [192,432] ,y_area = [210,402] in decimal
        else if( (x==192 | x== 447) && (y>=196 && y<=403)) begin data <= 8'h3F; end //white
        else if( (x>=192 && x<=447) && (y==196 | y==403)) begin data <= 8'h3F; end //white
            //hpPlayer bar size 200x16 x_area = [234,422] ,y_area = [433,437]
        else if( x>=234 && x<(234+hpPlayer*2) && y>=422 && y<=438) begin data <= 8'h3F; end//white
            //border 1px hpPlayer bar
        else if( (x==233 | x==434) && (y>=421 && y<=439)) begin data <= 8'h3F; end//white
        else if( (x>=233 && x<=434) && (y==421 | y==439)) begin data <= 8'h3F; end//white
        else if (pugType==0) 
        begin
            if(x>=DEF_BurgerPugT && x<=DEF_BurgerPugD && y>=DEF_BurgerPugL && y<=DEF_BurgerPugR)
            begin
                addr_burgerP = 89*(y-DEF_BurgerPugL) + (x-DEF_BurgerPugT);
                data = data_burgerP;
            end
            else if (x>=abx && x<=(abx+16) && y>=aby && y<=(aby+16))
            begin
                addr_burger = 16*(y-aby) + (x-abx);
                data = data_burger;
            end
            else if (x>=bbx && x<=(bbx+16) && y>=bby && y<=(bby+16))
            begin
                addr_burger = 16*(y-bby) + (x-bbx);
                data = data_burger;
            end
            else if (x>=cbx && x<=(cbx+16) && y>=cby && y<=(cby+16))
            begin
                addr_burger = 16*(y-cby) + (x-cbx);
                data = data_burger;
            end
            else data <= 8'b0;
        end
        else if (pugType==1) 
        begin
            if(x>=DEF_PizzaPugT && x<=DEF_PizzaPugD && y>=DEF_PizzaPugL && y<=DEF_PizzaPugR)
            begin
                addr_pizzaP = 128*(y-DEF_PizzaPugL) + (x-DEF_PizzaPugT);
                data = data_pizzaP;
            end
            else if (x>=abx && x<=(abx+32) && y>=aby && y<=(aby+32))
            begin
                addr_pizza = 32*(y-aby) + (x-abx);
                data = data_pizza;
            end
            else if (x>=bbx && x<=(bbx+32) && y>=bby && y<=(bby+32))
            begin
                addr_pizza = 32*(y-bby) + (x-bbx);
                data = data_pizza;
            end
            else if (x>=cbx && x<=(cbx+32) && y>=cby && y<=(cby+32))
            begin
                addr_pizza = 32*(y-cby) + (x-cbx);
                data = data_pizza;
            end
            else data =8'b0;
        end
        else if (pugType==2) 
        begin
            if(x>=DEF_KebabPugT && x<=DEF_KebabPugD && y>=DEF_KebabPugL && y<=DEF_KebabPugR)
            begin
                addr_kebabP = 107*(y-DEF_KebabPugL) + (x-DEF_KebabPugT);
                data = data_kebabP;
            end
            else if (x>=abx && x<=(abx+140) && y>=aby && y<=(aby+32))
            begin
                addr_kebab = 140*(y-aby) + (x-abx);
                data = data_kebab;
            end
            else if (x>=bbx && x<=(bbx+140) && y>=bby && y<=(bby+32))
            begin
                addr_kebab = 140*(y-bby) + (x-bbx);
                data = data_kebab;
            end
            else if (x>=cbx && x<=(cbx+140) && y>=cby && y<=(cby+32))
            begin
                addr_kebab = 140*(y-cby) + (140-(x-cbx));
                data = data_kebab;
            end
            else data=8'b0;
        end
        else if (pugType==3) 
        begin
            if(x>=DEF_LolipopPugT && x<=DEF_LolipopPugD && y>=DEF_LolipopPugL && y<=DEF_LolipopPugR)
            begin
                addr_lolipopP = 111*(y-DEF_LolipopPugL) + (x-DEF_LolipopPugT);
                data = data_lolipopP;
            end
            else if (x>=abx && x<=(abx+16) && y>=aby && y<=(aby+140))
            begin
                addr_lolipop = 16*(y-aby) + (x-abx);
                data = data_lolipop;
            end
            else if (x>=bbx && x<=(bbx+16) && y>=bby && y<=(bby+140))
            begin
                addr_lolipop = 16*(y-bby) + (x-bbx);
                data = data_lolipop;
            end
            else if (x>=cbx && x<=(cbx+16) && y>=cby && y<=(cby+140))
            begin
                addr_lolipop = 16*(y-cby) + (x-cbx);
                data = data_lolipop;
            end
            else data =8'b0;
        end
    end
    end
endmodule
