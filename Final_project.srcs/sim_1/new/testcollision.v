`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/06/2020 05:45:56 PM
// Design Name: 
// Module Name: testcollision
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


module testcollision();
    reg [9:0] xCurrent,yCurrent;
    reg game_clk;
    reg [1:0] monsterType;
    reg [9:0] abx;
    reg [9:0] aby;
    reg [9:0] bbx;
    reg [9:0] bby;
    reg [9:0] cbx;
    reg [9:0] cby;
    wire [2:0] isCollision;
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
          always
        #5 game_clk=~game_clk;
//        always
//        begin
//        #1 
//        abx = abx+1;
//        bbx = bbx+1;
//        cbx = cbx+1;
//        end
    initial
    begin
        #0
        game_clk=0;
        xCurrent = 250;
        yCurrent = 250;
        abx = 250;
        bbx = 250;
        cbx = 250;
        aby = 250;
        bby = 250;
        cby = 250;
        monsterType = 2'b00;
        
        #200
        
//        direction = 5'b01000;
        #5000
        
        //…...
        $finish;
    end
                    
      
endmodule
