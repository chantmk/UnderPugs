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
        ,input [2:0]monsterType
        ,output reset
        ,output [9:0] xPlayer
        ,output [9:0] yPlayer
        ,output [6:0] hpPlayer
	    ,output [6:0] hpMonster //min 0 max 100
	    ,output [5:0] bulletType
	    ,output [29:0] bulletPosX
	    ,output [29:0] bulletPosY
    );
    
    reg [9:0] xCurrent;
    reg [9:0] yCurrent;
    reg [6:0] VhpMonster;
    reg [6:0] VhpPlayer;
    reg [9:0] abx,aby,bbx,bby,cbx,cby; //where a,b,c bullet should render , only support 3 bullet/state
    reg [1:0] abt,bbt,cbt; //[a,b,c] bullet type : 0 for enermy0, 1 for enermy1 ,...
    reg abr,bbr,cbr; // [a,b,c] bullet render or not , 0 no render, 1 render
    
    assign bulletPosX = {abx,bbx,cbx};
    assign bulletPosY = {aby,bby,cby};
    assign bulletType = {abt,bbt,cbt};
    
    initial begin 
        xCurrent = 300;
        yCurrent = 250;
        VhpPlayer = 60;
        {abx,bbx,cbx} = {10'd0000000321,10'd0000000331,10'd0000000341}; //[192,432]
        {aby,bby,cby} = {10'd0000000200,10'd0000000200,10'd0000000010};// [210,402]
        {abt,bbt,cbt} = {6{1'b0}};
        {abr,bbr,cbr} = {3{1'b0}};
    end
    
    assign xPlayer = xCurrent;
    assign yPlayer = yCurrent;
    assign hpPlayer = VhpPlayer;
    
    // MC 16x16 bullet 16x16 and 32x32 and 140x32 and dynamic
    always @(posedge game_clk)
        begin
        case(monsterType)
            3'b000:
                begin
                    //bullet a
                    if(((xCurrent>=abx) && (xCurrent<=abx+16))&& ((yCurrent>=aby) && (yCurrent<=aby+16))) //top-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+16))&& ((yCurrent>=aby) && (yCurrent<=aby+16)))//top-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    else if(((xCurrent>=abx) && (xCurrent<=abx+16))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+16)))//bottom-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+16))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+16)))//bottom-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    //bullet b    
                    if(((xCurrent>=bbx) && (xCurrent<=bbx+16))&& ((yCurrent>=bby) && (yCurrent<=bby+16))) //top-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+16))&& ((yCurrent>=bby) && (yCurrent<=bby+16)))//top-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end
                    else if(((xCurrent>=bbx) && (xCurrent<=bbx+16))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+16)))//bottom-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+16))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+16)))//bottom-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end 
                    //bullet c    
                    if(((xCurrent>=cbx) && (xCurrent<=cbx+16))&& ((yCurrent>=cby) && (yCurrent<=cby+16))) //top-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+16))&& ((yCurrent>=cby) && (yCurrent<=cby+16)))//top-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end
                    else if(((xCurrent>=cbx) && (xCurrent<=cbx+16))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+16)))//bottom-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+16))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+16)))//bottom-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end  
//                    if((xCurrent == bbx) && (yCurrent == bby)) 
//                        begin
//                            VhpPlayer = VhpPlayer-10;
//                            bbx = 0;
//                            bby = 0;
//                            bbr = 0;
//                        end
//                    if((xCurrent == cbx) && (yCurrent == cby)) 
//                        begin
//                            VhpPlayer = VhpPlayer-10;
//                            cbx = 0;
//                            cby = 0;
//                            cbr = 0;
//                        end
                end
            3'b001:
                begin
                    if(((xCurrent>=abx) && (xCurrent<=abx+32))&& ((yCurrent>=aby) && (yCurrent<=aby+32))) //top-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+32))&& ((yCurrent>=aby) && (yCurrent<=aby+32)))//top-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    else if(((xCurrent>=abx) && (xCurrent<=abx+32))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+32)))//bottom-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+32))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+32)))//bottom-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    //bullet b    
                    if(((xCurrent>=bbx) && (xCurrent<=bbx+32))&& ((yCurrent>=bby) && (yCurrent<=bby+32))) //top-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+32))&& ((yCurrent>=bby) && (yCurrent<=bby+32)))//top-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end
                    else if(((xCurrent>=bbx) && (xCurrent<=bbx+32))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+32)))//bottom-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+32))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+32)))//bottom-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end 
                    //bullet c    
                    if(((xCurrent>=cbx) && (xCurrent<=cbx+32))&& ((yCurrent>=cby) && (yCurrent<=cby+32))) //top-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+32))&& ((yCurrent>=cby) && (yCurrent<=cby+32)))//top-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end
                    else if(((xCurrent>=cbx) && (xCurrent<=cbx+32))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+32)))//bottom-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+32))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+32)))//bottom-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end  
                end
            3'b010:
                begin
                    if(((xCurrent>=abx) && (xCurrent<=abx+140))&& ((yCurrent>=aby) && (yCurrent<=aby+32))) //top-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+140))&& ((yCurrent>=aby) && (yCurrent<=aby+32)))//top-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    else if(((xCurrent>=abx) && (xCurrent<=abx+140))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+32)))//bottom-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+140))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+32)))//bottom-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    //bullet b    
                    if(((xCurrent>=bbx) && (xCurrent<=bbx+140))&& ((yCurrent>=bby) && (yCurrent<=bby+32))) //top-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+140))&& ((yCurrent>=bby) && (yCurrent<=bby+32)))//top-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end
                    else if(((xCurrent>=bbx) && (xCurrent<=bbx+140))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+32)))//bottom-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+140))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+32)))//bottom-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end 
                    //bullet c    
                    if(((xCurrent>=cbx) && (xCurrent<=cbx+140))&& ((yCurrent>=cby) && (yCurrent<=cby+32))) //top-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+140))&& ((yCurrent>=cby) && (yCurrent<=cby+32)))//top-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end
                    else if(((xCurrent>=cbx) && (xCurrent<=cbx+140))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+32)))//bottom-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+140))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+32)))//bottom-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end  
                end
            3'b011: // 16x140
                begin
                    begin
                    if(((xCurrent>=abx) && (xCurrent<=abx+16))&& ((yCurrent>=aby) && (yCurrent<=aby+140))) //top-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+16))&& ((yCurrent>=aby) && (yCurrent<=aby+140)))//top-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    else if(((xCurrent>=abx) && (xCurrent<=abx+16))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+140)))//bottom-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+16))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+140)))//bottom-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            abx = 0;
                            aby = 0;
                            abr = 0;
                        end
                    //bullet b    
                    if(((xCurrent>=bbx) && (xCurrent<=bbx+16))&& ((yCurrent>=bby) && (yCurrent<=bby+140))) //top-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+16))&& ((yCurrent>=bby) && (yCurrent<=bby+140)))//top-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end
                    else if(((xCurrent>=bbx) && (xCurrent<=bbx+16))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+140)))//bottom-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+16))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+140)))//bottom-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            bbx = 0;
                            bby = 0;
                            bbr = 0;
                        end 
                    //bullet c    
                    if(((xCurrent>=cbx) && (xCurrent<=cbx+16))&& ((yCurrent>=cby) && (yCurrent<=cby+140))) //top-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+16))&& ((yCurrent>=cby) && (yCurrent<=cby+140)))//top-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end
                    else if(((xCurrent>=cbx) && (xCurrent<=cbx+16))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+140)))//bottom-left
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+16))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+140)))//bottom-right
                        begin
                            VhpPlayer = VhpPlayer-10;
                            cbx = 0;
                            cby = 0;
                            cbr = 0;
                        end  
                end
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
    end
     // todo bullet movement
     
     // check collision
endmodule
