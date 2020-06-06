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
        ,input [2:0]state
        ,input [1:0]monsterType
        ,output reset
        ,output [9:0] xPlayer
        ,output [9:0] yPlayer
        ,output [6:0] hpPlayer
	    ,output [6:0] hpMonster //min 0 max 100
	    ,output [29:0] bulletPosX
	    ,output [29:0] bulletPosY
	    ,output [2:0] collision
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
        casez({isCollision,monsterType})// assume play area 256x208 from (192,210)to(448,418) and MC 16x16
            5'b001??:
                begin
                    VhpPlayer = VhpPlayer-10;
                    cbx = 640;
                    cby = 480;
                end
            5'b010??:
                begin
                    VhpPlayer = VhpPlayer-10;
                    bbx = 640;
                    bby = 480;
                end
            5'b011??:
                begin
                    VhpPlayer = VhpPlayer-20;
                    bbx = 640;
                    cbx = 640;
                    bby = 480;
                    cby = 480;
                end
            5'b100??:
                begin
                    VhpPlayer = VhpPlayer-10;
                    abx = 640;
                    aby = 480;
                end
            5'b101??:
                begin
                    VhpPlayer = VhpPlayer-20;
                    abx = 640;
                    aby = 480;
                    cbx = 640;
                    cby = 480;
                end
            5'b110??:
                begin
                    VhpPlayer = VhpPlayer-20;
                    abx = 640;
                    aby = 480;
                    bbx = 640;
                    bby = 480;
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
                                if(aby==210)up_down[2]=1;
                                if(bby==210)up_down[1]=1;
                                if(cby==210)up_down[0]=1;
                            end
                        3'b001:
                            begin
                                aby = aby-1;
                                bby = bby-1;
                                cby = cby+1;
                                if(aby==210)up_down[2]=1;
                                if(bby==210)up_down[1]=1;
                                if(cby==386)up_down[0]=0;
                            end
                        3'b010:
                            begin
                                aby = aby-1;
                                bby = bby+1;
                                cby = cby-1;
                                if(aby==210)up_down[2]=1;
                                if(bby==386)up_down[1]=0;
                                if(cby==210)up_down[0]=1;
                            end
                        3'b011:
                            begin
                                aby = aby-1;
                                bby = bby+1;
                                cby = cby+1;
                                if(aby==210)up_down[2]=1;
                                if(bby==386)up_down[1]=0;
                                if(cby==386)up_down[0]=0;
                            end
                        3'b100:
                            begin
                                aby = aby+1;
                                bby = bby-1;
                                cby = cby-1;
                                if(aby==386)up_down[2]=0;
                                if(bby==210)up_down[1]=1;
                                if(cby==210)up_down[0]=1;
                            end
                        3'b101:
                            begin
                                aby = aby+1;
                                bby = bby-1;
                                cby = cby+1;
                                if(aby==386)up_down[2]=0;
                                if(bby==210)up_down[1]=1;
                                if(cby==386)up_down[0]=0;
                            end
                        3'b110:
                            begin
                                aby = aby+1;
                                bby = bby+1;
                                cby = cby-1;
                                if(aby==386)up_down[2]=0;
                                if(bby==386)up_down[1]=0;
                                if(cby==210)up_down[0]=1;
                            end
                        3'b111:
                            begin
                                aby = aby+1;
                                bby = bby+1;
                                cby = cby+1;
                                if(aby==386)up_down[2]=0;
                                if(bby==386)up_down[1]=0;
                                if(cby==386)up_down[0]=0;
                            end  
                    endcase
                end
            5'b00010://32x140
                begin
                    aby = aby-1;
                    bby = bby-1;
                    cby = cby-1;
                    if(aby==210)aby= 278;
                    if(bby==210)bby= 278;
                    if(cby==210)cby= 278;
                end
            2'b11://16x140
                begin
                    aby = aby-1;
                    bby = bby-1;
                    cby = cby-1;
                    if(aby==210)aby= 278;
                    if(bby==210)bby= 278;
                    if(cby==210)cby= 278;
                end
            2'b11:
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
    always @(posedge game_clk)
        begin
        case(direction)// assume play area 256x208 from (192,210)to(448,418) and MC 16x16
            5'b00001: 
                begin
                    if(xCurrent > 192)xCurrent <= xCurrent-1;//A
                end
            5'b00010: 
                begin
                    if(yCurrent > 210)yCurrent <= yCurrent-1;//W
                end
            5'b00100: 
                begin
                    if(yCurrent < 402)yCurrent <= yCurrent+1;//D
                end
            5'b01000: 
                begin
                    if(xCurrent < 432)xCurrent <= xCurrent+1;//D
                end
//            5'b10000: 
//                begin
//                    xCurrent <= xCurrent;//Spacebar 
//                end
        endcase
            if(monsterType == 2'b11)
                begin
                    if(yCurrent<=401)yCurrent =yCurrent+1;
                end
    end
endmodule
