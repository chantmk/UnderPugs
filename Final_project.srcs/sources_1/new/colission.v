`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2020 01:56:26 PM
// Design Name: 
// Module Name: colission
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


module colission(
    input game_clk,
    input [1:0]monsterType,
    input [9:0] abx,
    input [9:0] aby,
    input [9:0] bbx,
    input [9:0] bby,
    input [9:0] cbx,
    input [9:0] cby,
    input xCurrent,
    input yCurrent,
    output [2:0]isCollision
    );
    reg vseta,vsetb,vsetc;
    
    assign isCollision = {vseta,vsetb,vsetc}; //abc
    
//    initial
//    begin
//        vseta = 0;
//        vsetb = 0;
//        vsetc = 0;
//    end
    
    always @(posedge game_clk)
        begin
        case(monsterType)
            2'b00:
                begin
                    //bullet a
                    if(((xCurrent>=abx) && (xCurrent<=abx+16))&& ((yCurrent>=aby) && (yCurrent<=aby+16))) //top-left
                        begin
                            vseta = 1;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+16))&& ((yCurrent>=aby) && (yCurrent<=aby+16)))//top-right
                        begin
                            vseta = 1;
                        end
                    else if(((xCurrent>=abx) && (xCurrent<=abx+16))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+16)))//bottom-left
                        begin;
                            vseta = 1;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+16))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+16)))//bottom-right
                        begin
                            vseta = 1;
                        end
                    else
                        begin
                            vseta =0;
                        end
                    //bullet b    
                    if(((xCurrent>=bbx) && (xCurrent<=bbx+16))&& ((yCurrent>=bby) && (yCurrent<=bby+16))) //top-left
                        begin
                            vsetb = 1;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+16))&& ((yCurrent>=bby) && (yCurrent<=bby+16)))//top-right
                        begin
                            vsetb = 1;
                        end
                    else if(((xCurrent>=bbx) && (xCurrent<=bbx+16))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+16)))//bottom-left
                        begin
                            vsetb = 1;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+16))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+16)))//bottom-right
                        begin
                            vsetb = 1;
                        end
                    else
                        begin
                            vsetb =0;
                        end 
                    //bullet c    
                    if(((xCurrent>=cbx) && (xCurrent<=cbx+16))&& ((yCurrent>=cby) && (yCurrent<=cby+16))) //top-left
                        begin
                            vsetc = 1;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+16))&& ((yCurrent>=cby) && (yCurrent<=cby+16)))//top-right
                        begin
                            vsetc = 1;
                        end
                    else if(((xCurrent>=cbx) && (xCurrent<=cbx+16))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+16)))//bottom-left
                        begin
                            vsetc = 1;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+16))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+16)))//bottom-right
                        begin
                            vsetc = 1;
                        end     
                    else
                        begin
                            vsetc =0;
                        end
                end
            2'b01:
                begin
                    if(((xCurrent>=abx) && (xCurrent<=abx+32))&& ((yCurrent>=aby) && (yCurrent<=aby+32))) //top-left
                        begin
                            vseta = 1;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+32))&& ((yCurrent>=aby) && (yCurrent<=aby+32)))//top-right
                        begin
                            vseta = 1;
                        end
                    else if(((xCurrent>=abx) && (xCurrent<=abx+32))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+32)))//bottom-left
                        begin
                            vseta = 1;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+32))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+32)))//bottom-right
                        begin
                            vseta = 1;
                        end
                    else
                        begin
                            vseta =0;
                        end
                    //bullet b    
                    if(((xCurrent>=bbx) && (xCurrent<=bbx+32))&& ((yCurrent>=bby) && (yCurrent<=bby+32))) //top-left
                        begin
                            vsetb = 1;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+32))&& ((yCurrent>=bby) && (yCurrent<=bby+32)))//top-right
                        begin
                            vsetb = 1;
                        end
                    else if(((xCurrent>=bbx) && (xCurrent<=bbx+32))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+32)))//bottom-left
                        begin
                            vsetb = 1;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+32))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+32)))//bottom-right
                        begin
                            vsetb = 1;
                        end
                    else
                        begin
                            vsetb =0;
                        end 
                    //bullet c    
                    if(((xCurrent>=cbx) && (xCurrent<=cbx+32))&& ((yCurrent>=cby) && (yCurrent<=cby+32))) //top-left
                        begin
                            vsetc = 1;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+32))&& ((yCurrent>=cby) && (yCurrent<=cby+32)))//top-right
                        begin
                            vsetc = 1;
                        end
                    else if(((xCurrent>=cbx) && (xCurrent<=cbx+32))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+32)))//bottom-left
                        begin
                            vsetc = 1;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+32))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+32)))//bottom-right
                        begin
                            vsetc = 1;
                        end 
                    else
                        begin
                            vsetc =0;
                        end 
                end
            2'b10://32x140
                begin
                    if(((xCurrent>=abx) && (xCurrent<=abx+32))&& ((yCurrent>=aby) && (yCurrent<=aby+140))) //top-left
                        begin
                            vseta = 1;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+32))&& ((yCurrent>=aby) && (yCurrent<=aby+140)))//top-right
                        begin
                            vseta = 1;
                        end
                    else if(((xCurrent>=abx) && (xCurrent<=abx+32))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+140)))//bottom-left
                        begin
                            vseta = 1;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+32))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+140)))//bottom-right
                        begin
                            vseta = 1;
                        end
                    else
                        begin
                            vseta =0;
                        end
                    //bullet b    
                    if(((xCurrent>=bbx) && (xCurrent<=bbx+32))&& ((yCurrent>=bby) && (yCurrent<=bby+140))) //top-left
                        begin
                            vsetb = 1;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+32))&& ((yCurrent>=bby) && (yCurrent<=bby+140)))//top-right
                        begin
                            vsetb = 1;
                        end
                    else if(((xCurrent>=bbx) && (xCurrent<=bbx+32))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+140)))//bottom-left
                        begin
                            vsetb = 1;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+32))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+140)))//bottom-right
                        begin
                            vsetb = 1;
                        end
                    else
                        begin
                            vsetb =0;
                        end 
                    //bullet c    
                    if(((xCurrent>=cbx) && (xCurrent<=cbx+32))&& ((yCurrent>=cby) && (yCurrent<=cby+140))) //top-left
                        begin
                            vsetc = 1;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+32))&& ((yCurrent>=cby) && (yCurrent<=cby+140)))//top-right
                        begin
                            vsetc = 1;
                        end
                    else if(((xCurrent>=cbx) && (xCurrent<=cbx+32))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+140)))//bottom-left
                        begin
                            vsetc = 1;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+32))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+140)))//bottom-right
                        begin
                            vsetc = 1;
                        end
                    else
                        begin
                            vsetc =0;
                        end  
                end
            2'b11: // 16x140
                begin
                    begin
                    if(((xCurrent>=abx) && (xCurrent<=abx+16))&& ((yCurrent>=aby) && (yCurrent<=aby+140))) //top-left
                        begin
                            vseta = 1;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+16))&& ((yCurrent>=aby) && (yCurrent<=aby+140)))//top-right
                        begin
                            vseta = 1;
                        end
                    else if(((xCurrent>=abx) && (xCurrent<=abx+16))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+140)))//bottom-left
                        begin
                            vseta = 1;
                        end
                    else if(((xCurrent+16>=abx) && (xCurrent+16<=abx+16))&& ((yCurrent+16>=aby) && (yCurrent+16<=aby+140)))//bottom-right
                        begin
                            vseta = 1;
                        end
                    else
                        begin
                            vseta =0;
                        end
                    //bullet b    
                    if(((xCurrent>=bbx) && (xCurrent<=bbx+16))&& ((yCurrent>=bby) && (yCurrent<=bby+140))) //top-left
                        begin
                            vsetb = 1;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+16))&& ((yCurrent>=bby) && (yCurrent<=bby+140)))//top-right
                        begin
                            vsetb = 1;
                        end
                    else if(((xCurrent>=bbx) && (xCurrent<=bbx+16))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+140)))//bottom-left
                        begin
                            vsetb = 1;
                        end
                    else if(((xCurrent+16>=bbx) && (xCurrent+16<=bbx+16))&& ((yCurrent+16>=bby) && (yCurrent+16<=bby+140)))//bottom-right
                        begin
                            vsetb = 1;
                        end
                     else
                        begin
                            vsetb =0;
                        end
                    //bullet c    
                    if(((xCurrent>=cbx) && (xCurrent<=cbx+16))&& ((yCurrent>=cby) && (yCurrent<=cby+140))) //top-left
                        begin
                            vsetc =0;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+16))&& ((yCurrent>=cby) && (yCurrent<=cby+140)))//top-right
                        begin
                            vsetc =0;
                        end
                    else if(((xCurrent>=cbx) && (xCurrent<=cbx+16))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+140)))//bottom-left
                        begin
                            vsetc =0;
                        end
                    else if(((xCurrent+16>=cbx) && (xCurrent+16<=cbx+16))&& ((yCurrent+16>=cby) && (yCurrent+16<=cby+140)))//bottom-right
                        begin
                            vsetc =0;
                        end 
                    else
                        begin
                            vsetc =0;
                        end 
                end
                end
        endcase
        end
endmodule
