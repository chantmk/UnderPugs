`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/18/2020 04:15:52 PM
// Design Name: 
// Module Name: game_logic
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


module game_logic(
    input clk
    ,input [15:0] key
    ,output reg [2:0] state
    ,output reg [1:0] pugType
    ,output reg reset
    ,output reg [9:0] xPlayer
    ,output reg [9:0] yPlayer
    ,output reg [6:0] hpPlayer
	,output reg [6:0] hpMonster
	,output wire [59:0] pos
	,output wire [1:0] milkStatus
    );
    
    reg [4:0] direction;
    wire [2:0] Vstate = state;
    reg [1:0] Vreset;
    reg an0,an1,an2,an3,an4;

    //assign state = Vstate;
    initial begin
        //Vstate <= 3;
        state <= 4;
        direction <= 5'b00000;
    end
    
    //wire Ostate = Vstate;
    wire game_clk;
    clockDiv clkDiv(
        .clock_in(clk),
        .clock_out(game_clk)
    );
    always @(key) begin
        case(key[7:0])
            8'h1C: direction = 5'b00001;//left A
            8'h1D: direction = 5'b00010;//up W
            8'h1B: direction = 5'b00100;//down S
            8'h23: direction = 5'b01000;//right D
            8'h29: direction = 5'b10000;//spacebar  
            8'h45: state = 0; //start 0
            8'h16: state = 1; //end 1
            8'h1E: state = 2; //title 2
            8'h26: state = 3; //map 3
            8'h25: state = 4; //hi 4
            8'h2E: state = 5; //atk 5
            8'h36: state = 6; //def 6
            8'h2C: pugType = 0; //burger t
            8'h35: pugType = 1; //pizza y
            8'h3C: pugType = 2; //kebab u
            8'h43: pugType = 3; //lollipop i
//            8'h31: endFlag = 0; //lose n
//            8'h3A: endFlag = 1; //win m
        endcase
     end

//     wire a_reset;
//     wire [6:0] a_hpPlayer,a_hpMonster;
//     wire [9:0] a_xPlayer,a_yPlayer;
//     atkState superatk( .clk(clk),
//                    .game_clk(game_clk),
//                    .direction(direction),
//                    .monster(pugType),
//                    .state(an3),
//                    .reset(a_reset),
//                    .xPlayer(a_xPlayer),
//                    .yPlayer(a_yPlayer),
//                    .hpPlayer(a_hpPlayer),
//                    .hpMonster(a_hpMonster));
//     wire d_reset;
//     wire [6:0] d_hpPlayer,d_hpMonster;
//     wire [9:0] d_xPlayer,d_yPlayer;
//     wire [29:0] bulletX,bulletY;
//     assign pos = {bulletX,bulletY};
////     defState superdef( .clk(clk),
////                    .game_clk(game_clk),
////                    .direction(direction),
////                    .reset(d_reset),
////                    .xPlayer(d_xPlayer),
////                    .yPlayer(d_yPlayer),
////                    .hpPlayer(d_hpPlayer),
////                    .hpMonster(d_hpMonster),
////                    .monsterType(pugType),
////                    .bulletPosX(bulletX),
////                    .bulletPosY(bulletY));
//    wire [6:0] m_hpPlayer;
//    wire found;
//    wire [9:0] m_xPlayer,m_yPlayer;
//    wire endFlag;
//     mapState supermap(
//        .clk(clk),
//        .game_clk(clk),
//        .direction(direction),
//        .hpPlayer(hpPlayer),
//        .xPlayer(m_xPlayer),
//        .yPlayer(m_yPlayer),
//        .milkStatus(milkStatus),
//        .pugType(pugType),
//        .found(found),
//        .newHpPlayer(m_hpPlayer),
//        .endFlag(endFlag)
//        );
//     always @ (state)
//        begin
//            case(state)
//                0: ;
//                1: ;
//                2: ;
//                3: begin
//                    {reset,xPlayer,yPlayer,hpPlayer,hpMonster} = {a_reset,a_xPlayer,a_yPlayer,a_hpPlayer,a_hpMonster};
//                    {an0,an1,an2,an3,an4} = 5'b00010;
//                   end
//                4: begin
//                    {reset,xPlayer,yPlayer,hpPlayer,hpMonster} = {d_reset,d_xPlayer,d_yPlayer,d_hpPlayer,d_hpMonster};
//                    {an0,an1,an2,an3,an4} = 5'b00001;
//                    end
//            endcase
//        end
     
endmodule
