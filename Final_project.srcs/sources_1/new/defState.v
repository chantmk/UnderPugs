`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/27/2020 09:21:18 PM
// Design Name: 
// Module Name: defState
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


module defState(
        input clk
        ,input game_clk
        ,input [4:0]direction
        ,input [1:0]monsterType
        ,output reset
        ,output [9:0] xPlayer
        ,output [9:0] yPlayer
        ,output [6:0] hpPlayer
	    ,output [6:0] hpMonster //min 0 max 100
	    ,output [29:0] bulletPosX
	    ,output [29:0] bulletPosY
	    ,output [2:0] collision
	    ,output changeState 
    );
    
    reg [9:0] xCurrent;
    reg [9:0] yCurrent;
    reg [6:0] VhpMonster;
    reg [6:0] VhpPlayer;
    reg [9:0] abx,aby,bbx,bby,cbx,cby; //where a,b,c bullet should render , only support 3 bullet/state
    reg [1:0] abt,bbt,cbt; //[a,b,c] bullet type : 0 for enermy0, 1 for enermy1 ,...
    reg abr,bbr,cbr; // [a,b,c] bullet render or not , 0 no render, 1 render
    reg [3:0]left_right;
    reg [3:0]up_down;
    wire [2:0] isCollision;
    reg [2:0] checkbullet;
    reg VChangeState;
    reg [7:0]counter;
    reg [1:0]previousMonsType;
    assign bulletPosX = {abx,bbx,cbx};
    assign bulletPosY = {aby,bby,cby};
    
    assign collision = isCollision;
    
    initial begin 
        xCurrent = 250;
        yCurrent = 278;
        VhpPlayer = 60;
        left_right = 3'b000; //1right abc
        up_down = 3'b111; //1down abc
        {abx,bbx,cbx} = {10'd0000000200,10'd0000000210,10'd0000000220}; //[192,432]
        {aby,bby,cby} = {10'd0000000278,10'd0000000278,10'd0000000278};// [210,402]
        {abt,bbt,cbt} = {6{1'b0}};
        {abr,bbr,cbr} = {3{1'b0}};
        checkbullet = 3'b000;
        VChangeState = 0;
        counter = 0;
    end
    
    assign xPlayer = xCurrent;
    assign yPlayer = yCurrent;
    assign hpPlayer = VhpPlayer;
    
    colission cc(
                    .game_clk(game_clk),
                    .monsterType(monsterType),
                    .abx(abx),
                    .aby(aby),
                    .bbx(bbx),
                    .bby(bby),
                    .cbx(cbx),
                    .cby(cby),
                    .xCurrent(xCurrent),
                    .yCurrent(yCurrent),
                    .isCollision(isCollision)
                    );
    
    // MC 16x16 bullet 16x16 and 32x32 and 32x140 and dynamic
    always @(posedge game_clk)
        begin
        if(previousMonsType == monsterType)
        begin
        casez({isCollision,monsterType})// assume play area 256x208 from (192,210)to(448,418) and MC 16x16
            5'b001??:
                begin
                    VhpPlayer = VhpPlayer-10;
                    cbx = 640;
                    cby = 480;
                    checkbullet[0] = 1;
                end
            5'b010??:
                begin
                    VhpPlayer = VhpPlayer-10;
                    bbx = 640;
                    bby = 480;
                    checkbullet[1] = 1;
                end
            5'b011??:
                begin
                    VhpPlayer = VhpPlayer-20;
                    bbx = 640;
                    cbx = 640;
                    bby = 480;
                    cby = 480;
                    checkbullet[0] = 1;
                    checkbullet[1] = 1;
                end
            5'b100??:
                begin
                    VhpPlayer = VhpPlayer-10;
                    abx = 640;
                    aby = 480;
                    checkbullet[2] = 1;
                end
            5'b101??:
                begin
                    VhpPlayer = VhpPlayer-20;
                    abx = 640;
                    aby = 480;
                    cbx = 640;
                    cby = 480;
                    checkbullet[2] = 1;
                    checkbullet[0] = 1;
                end
            5'b110??:
                begin
                    VhpPlayer = VhpPlayer-20;
                    abx = 640;
                    aby = 480;
                    bbx = 640;
                    bby = 480;
                    checkbullet[2] = 1;
                    checkbullet[1] = 1;
                end
            5'b111??:
                begin
                    VhpPlayer = VhpPlayer-30;
                    abx = 640;
                    aby = 480;
                    bbx = 640;
                    bby = 480;
                    cbx = 640;
                    cby = 480;
                    checkbullet[2] = 1;
                    checkbullet[1] = 1;
                    checkbullet[0] = 1;
                end
            5'b00000://16x16 
                begin
                    case(left_right)
                        3'b000:
                            begin
                                abx = abx-1;
                                bbx = bbx-1;
                                cbx = cbx-1;
                                if(abx==192)left_right[2]=1;
                                if(bbx==192)left_right[1]=1;
                                if(cbx==192)left_right[0]=1;
                            end
                        3'b001:
                            begin
                                abx = abx-1;
                                bbx = bbx-1;
                                cbx = cbx+1;
                                if(abx==192)left_right[2]=1;
                                if(bbx==192)left_right[1]=1;
                                if(cbx==432)left_right[0]=0;
                            end
                        3'b010:
                            begin
                                abx = abx-1;
                                bbx = bbx+1;
                                cbx = cbx-1;
                                if(abx==192)left_right[2]=1;
                                if(bbx==432)left_right[1]=0;
                                if(cbx==192)left_right[0]=1;
                            end
                        3'b011:
                            begin
                                abx = abx-1;
                                bbx = bbx+1;
                                cbx = cbx+1;
                                if(abx==192)left_right[2]=1;
                                if(bbx==432)left_right[1]=0;
                                if(cbx==432)left_right[0]=0;
                            end
                        3'b100:
                            begin
                                abx = abx+1;
                                bbx = bbx-1;
                                cbx = cbx-1;
                                if(abx==432)left_right[2]=0;
                                if(bbx==192)left_right[1]=1;
                                if(cbx==192)left_right[0]=1;
                            end
                        3'b101:
                            begin
                                abx = abx+1;
                                bbx = bbx-1;
                                cbx = cbx+1;
                                if(abx==432)left_right[2]=0;
                                if(bbx==192)left_right[1]=1;
                                if(cbx==432)left_right[0]=0;
                            end
                        3'b110:
                            begin
                                abx = abx+1;
                                bbx = bbx+1;
                                cbx = cbx-1;
                                if(abx==432)left_right[2]=0;
                                if(bbx==432)left_right[1]=0;
                                if(cbx==192)left_right[0]=1;
                            end
                        3'b111:
                            begin
                                abx = abx+1;
                                bbx = bbx+1;
                                cbx = cbx+1;
                                if(abx==432)left_right[2]=0;
                                if(bbx==432)left_right[1]=0;
                                if(cbx==432)left_right[0]=0;
                            end  
                    endcase
                end
            5'b00001:// assume play area 256x208 from (192,210)to(448,418) and MC 16x16
                begin//32x32
                    case(up_down)
                        3'b000:
                            begin
                                aby = aby-1;
                                bby = bby-1;
                                cby = cby-1;
                                if(aby==196)up_down[2]=1;
                                if(bby==196)up_down[1]=1;
                                if(cby==196)up_down[0]=1;
                            end
                        3'b001:
                            begin
                                aby = aby-1;
                                bby = bby-1;
                                cby = cby+1;
                                if(aby==196)up_down[2]=1;
                                if(bby==196)up_down[1]=1;
                                if(cby==371)up_down[0]=0;
                            end
                        3'b010:
                            begin
                                aby = aby-1;
                                bby = bby+1;
                                cby = cby-1;
                                if(aby==196)up_down[2]=1;
                                if(bby==371)up_down[1]=0;
                                if(cby==196)up_down[0]=1;
                            end
                        3'b011:
                            begin
                                aby = aby-1;
                                bby = bby+1;
                                cby = cby+1;
                                if(aby==196)up_down[2]=1;
                                if(bby==371)up_down[1]=0;
                                if(cby==371)up_down[0]=0;
                            end
                        3'b100:
                            begin
                                aby = aby+1;
                                bby = bby-1;
                                cby = cby-1;
                                if(aby==371)up_down[2]=0;
                                if(bby==196)up_down[1]=1;
                                if(cby==196)up_down[0]=1;
                            end
                        3'b101:
                            begin
                                aby = aby+1;
                                bby = bby-1;
                                cby = cby+1;
                                if(aby==371)up_down[2]=0;
                                if(bby==196)up_down[1]=1;
                                if(cby==371)up_down[0]=0;
                            end
                        3'b110:
                            begin
                                aby = aby+1;
                                bby = bby+1;
                                cby = cby-1;
                                if(aby==371)up_down[2]=0;
                                if(bby==371)up_down[1]=0;
                                if(cby==196)up_down[0]=1;
                            end
                        3'b111:
                            begin
                                aby = aby+1;
                                bby = bby+1;
                                cby = cby+1;
                                if(aby==371)up_down[2]=0;
                                if(bby==371)up_down[1]=0;
                                if(cby==371)up_down[0]=0;
                            end  
                    endcase
                end
            5'b00010://32x140
                begin
                    aby = aby-1;
                    bby = bby-1;
                    cby = cby-1;
                    if(aby==196)aby= 278;
                    if(bby==196)bby= 278;
                    if(cby==196)cby= 278;
                end
            5'b00011:
                begin
                    case(left_right)
                        3'b000:
                            begin
                                abx = abx-1;
                                bbx = bbx-1;
                                cbx = cbx-1;
                                if(abx==192)left_right[2]=1;
                                if(bbx==192)left_right[1]=1;
                                if(cbx==192)left_right[0]=1;
                            end
                        3'b001:
                            begin
                                abx = abx-1;
                                bbx = bbx-1;
                                cbx = cbx+1;
                                if(abx==192)left_right[2]=1;
                                if(bbx==192)left_right[1]=1;
                                if(cbx==432)left_right[0]=0;
                            end
                        3'b010:
                            begin
                                abx = abx-1;
                                bbx = bbx+1;
                                cbx = cbx-1;
                                if(abx==192)left_right[2]=1;
                                if(bbx==432)left_right[1]=0;
                                if(cbx==192)left_right[0]=1;
                            end
                        3'b011:
                            begin
                                abx = abx-1;
                                bbx = bbx+1;
                                cbx = cbx+1;
                                if(abx==192)left_right[2]=1;
                                if(bbx==432)left_right[1]=0;
                                if(cbx==432)left_right[0]=0;
                            end
                        3'b100:
                            begin
                                abx = abx+1;
                                bbx = bbx-1;
                                cbx = cbx-1;
                                if(abx==432)left_right[2]=0;
                                if(bbx==192)left_right[1]=1;
                                if(cbx==192)left_right[0]=1;
                            end
                        3'b101:
                            begin
                                abx = abx+1;
                                bbx = bbx-1;
                                cbx = cbx+1;
                                if(abx==432)left_right[2]=0;
                                if(bbx==192)left_right[1]=1;
                                if(cbx==432)left_right[0]=0;
                            end
                        3'b110:
                            begin
                                abx = abx+1;
                                bbx = bbx+1;
                                cbx = cbx-1;
                                if(abx==432)left_right[2]=0;
                                if(bbx==432)left_right[1]=0;
                                if(cbx==192)left_right[0]=1;
                            end
                        3'b111:
                            begin
                                abx = abx+1;
                                bbx = bbx+1;
                                cbx = cbx+1;
                                if(abx==432)left_right[2]=0;
                                if(bbx==432)left_right[1]=0;
                                if(cbx==432)left_right[0]=0;
                            end  
                    endcase
                end
        endcase
        end
        else
        begin
            case(monsterType)
            2'b00:
            begin
                abx = 222;
                aby = 222;
                bbx = 348;
                bby = 333;
                cbx = 278;
                cby = 388;
                left_right = 3'b101;
            end
            2'b01:
            begin
                abx = 300;
                aby = 250;
                bbx = 400;
                bby = 380;
                cbx = 278;
                cby = 388;
                up_down = 3'b001;
            end
            2'b10:
            begin
                abx = 193;
                aby = 250;
                bbx = 193;
                bby = 380;
                cbx = 263;
                cby = 388;
            end
            2'b01:
            begin
                abx = 300;
                aby = 250;
                bbx = 400;
                bby = 380;
                cbx = 278;
                cby = 388;
            end
            2'b01:
            begin
                abx = 300;
                aby = 250;
                bbx = 400;
                bby = 380;
                cbx = 278;
                cby = 388;
                left_right = 3'b110;
            end
            endcase
            counter = 0;
            VChangeState = 0;
            previousMonsType = monsterType;
            
        end
        end
    always @(posedge game_clk)
        begin
        case(direction)// assume play area 256x208 from (192,196)to(448,403) and MC 16x16
            5'b00001: 
                begin
                    if(xCurrent > 192)xCurrent <= xCurrent-1;//A
                    if(monsterType == 2'b11)
                        begin
                            if(yCurrent<=387)yCurrent =yCurrent+1;
                        end
                end
            5'b00010: 
                begin
                    if(yCurrent > 196)yCurrent <= yCurrent-1;//W
                end
            5'b00100: 
                begin
                    if(monsterType == 2'b11)
                        begin
                            if(yCurrent<=386)yCurrent =yCurrent+2;
                        end
                    else if(yCurrent < 387)yCurrent <= yCurrent+1;//D
                end
            5'b01000: 
                begin
                    if(xCurrent < 432)xCurrent <= xCurrent+1;//D
                    if(monsterType == 2'b11)
                        begin
                            if(yCurrent<=386)yCurrent =yCurrent+1;
                        end
                end
//            5'b10000: 
//                begin
//                    xCurrent <= xCurrent;//Spacebar 
//                end
        endcase
            
    end
    
    always@(posedge game_clk)
    begin
        if(checkbullet == 3'b111 || counter>200)VChangeState = 1;
        counter = (counter +1);
    end
endmodule
