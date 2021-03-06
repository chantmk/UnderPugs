`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Chulalongkorn University
// Organization: This pug is on fire!
// Engineer: Thanapat SaguanSab, Tanakorn Tampanya, Budsakorn Khosagrid
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
    ,output wire [1:0] pugType
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
    reg [3:0] meeted;
    reg an0,an1,an2,an3,an4,an5,an6;

    //assign state = Vstate;
    initial begin
        //Vstate <= 3;
        state <= 0;
        direction <= 5'b00000; 
        meeted <= 4'b0000;
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
//            8'h33: direction = 5'b00001;//left A
//            8'h3C: direction = 5'b00010;//up W
//            8'h3B: direction = 5'b00100;//down S
//            8'h42: direction = 5'b01000;//right D
//            8'h29: direction = 5'b10000;//spacebar  
        endcase
        case(key[15:8])
           8'hF0 : direction = 5'b00000;
        endcase
     end

     wire a_reset;
     wire [6:0] a_hpPlayer,a_hpMonster;
     wire [9:0] a_xPlayer,a_yPlayer;
     atkState superatk( .clk(clk),
                    .game_clk(game_clk),
                    .direction(direction),
                    .monster(pugType),
                    .state(an5),
                    .reset(a_reset),
                    .xPlayer(a_xPlayer),
                    .yPlayer(a_yPlayer),
                    .hpPlayer(a_hpPlayer),
                    .hpMonster(a_hpMonster));
     wire d_reset,d_changeState;
     wire [2:0] d_collision;
     wire [6:0] d_hpPlayer,d_hpMonster;
     wire [9:0] d_xPlayer,d_yPlayer;
     wire [29:0] bulletX,bulletY;
     assign pos = {bulletX,bulletY};
     defState superdef( .clk(clk),
                    .game_clk(game_clk),
                    .direction(direction),
                    .state(an6),
                    .reset(d_reset),
                    .xPlayer(d_xPlayer),
                    .yPlayer(d_yPlayer),
                    .hpPlayer(d_hpPlayer),
                    .hpMonster(d_hpMonster),
                    .monsterType(pugType),
                    .bulletPosX(bulletX),
                    .bulletPosY(bulletY),
                    .collision(d_collision),
                    .changeState(d_changeState)
                    );
    wire [6:0] m_hpPlayer;
    wire found;
    wire [9:0] m_xPlayer,m_yPlayer;
    wire endFlag;
    wire m_reset;
     mapState supermap(
        .clk(clk),
        .game_clk(game_clk),
        .state(an4),
        .direction(direction),
        .hpPlayer(hpPlayer),
        .xPlayer(m_xPlayer),
        .yPlayer(m_yPlayer),
        .milkStatus(milkStatus),
        .pugType(pugType),
        .found(found),
        .newHpPlayer(m_hpPlayer),
        .endFlag(endFlag)
        );
     always @ (state)
        begin
            case(state)
                0: begin {an0,an1,an2,an3,an4,an5,an6} = 7'b1000000; end
                1: begin {an0,an1,an2,an3,an4,an5,an6} = 7'b0100000; end
                2: begin {an0,an1,an2,an3,an4,an5,an6} = 7'b0010000; end
                3: begin {an0,an1,an2,an3,an4,an5,an6} = 7'b0001000; end
                4: begin
                    {reset,xPlayer,yPlayer,hpPlayer,hpMonster} = {m_reset,m_xPlayer,m_yPlayer,m_hpPlayer,7'd0};
                    {an0,an1,an2,an3,an4,an5,an6} = 7'b0000100;
                    end
                5: begin
                    {reset,xPlayer,yPlayer,hpPlayer,hpMonster} = {a_reset,a_xPlayer,a_yPlayer,a_hpPlayer,a_hpMonster};
                    {an0,an1,an2,an3,an4,an5,an6} = 7'b0000010;
                   end
                6 : begin
                    {reset,xPlayer,yPlayer,hpPlayer,hpMonster} = {d_reset,d_xPlayer,d_yPlayer,d_hpPlayer,d_hpMonster};
                    {an0,an1,an2,an3,an4,an5,an6} = 7'b0000001;
                    end
            endcase
        end
          wire [3:0] meetMonster;
     always @(posedge game_clk) begin
        case(state)
            3'd0 : if (key[7:0] == 8'h29) begin state = 4; end
            3'd3 : if (key[7:0] == 8'h5A) begin state = 5; end
            3'd4 : begin
                   if (endFlag) begin state=2; end
                   if (found) begin
                      if (pugType == 0 && meeted[0] == 0) begin state = 3; meeted[0]=1; end
                      else if (pugType == 1 && meeted[1] == 0) begin state = 3; meeted[1]=1; end
                      else if (pugType == 2 && meeted[2] == 0) begin state = 3; meeted[2]=1; end
                      else if (pugType == 3 && meeted[3] == 0) begin state = 3; meeted[3]=1; end
                   end
                   end
            3'd5 : begin
                    if (key[7:0] == 8'h29) begin state = 6; end
                    //if (a_hpMonster <= 0 ) begin state = 4; end
                   end
            3'd6 : begin
                    if (a_hpMonster <= 0 ) begin state = 4; end
                    if (d_hpPlayer <= 0 ) begin state = 2; end
                    else if (d_changeState) begin 
                        if (d_hpPlayer > 0) begin state = 5; end
                    end
                    
                   end
        endcase
    end
endmodule
