`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06/04/2020 08:19:35 PM
// Design Name: 
// Module Name: mapState
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


module mapState(
    input clk
    ,input game_clk
    ,input [4:0] direction
    ,input [6:0] hpPlayer
    ,input state
    ,output reg [9:0] xPlayer
    ,output reg [9:0] yPlayer
    ,output reg [1:0] milkStatus
    ,output reg [1:0] pugType
    ,output reg found
    ,output reg [6:0] newHpPlayer
    ,output reg endFlag
    );
    
    reg [9:0] checkx;
    reg [9:0] checky;
    wire isWall;
    mapDecision(
        .clk(clk),
        .x(checkx),
        .y(checky),
        .isWall(isWall)
        );
    initial
    begin
        milkStatus = 3;
        pugType = 0;
        found = 0;
        newHpPlayer = hpPlayer;
        xPlayer = 296;
        yPlayer = 455;
        endFlag = 0;
    end
    always @(posedge game_clk)
    begin
        found = 0 ;
        if(state)
        begin
            if(direction == 5'b00001) 
            begin
                checkx = xPlayer-4;
                checky = yPlayer;
                if(isWall)xPlayer = xPlayer-1;
            end
            else if(direction == 5'b00010)
            begin
                checkx = xPlayer;
                checky = yPlayer-4;
                if(isWall)yPlayer = yPlayer-1;
            end
            else if(direction == 5'b00100)
            begin
                checkx = xPlayer;
                checky = yPlayer+21;
                if(isWall)yPlayer = yPlayer+1;
            end
            else if(direction == 5'b01000) 
            begin
                checkx = xPlayer+21;
                checky = yPlayer;
                if(isWall)xPlayer = xPlayer+1;
            end
            if(xPlayer >= 104 && xPlayer <= 120 && yPlayer >= 389 && yPlayer <= 405)
            begin
            found = 1;
            pugType = 0;
            end
            if(yPlayer <= 345 && yPlayer >= 325 && xPlayer >= 584 && xPlayer <= 600)
            begin
            found = 1;
            pugType = 3;
            end
//            if(xPlayer >= 380 && xPlayer <= 420 && yPlayer >= 150 && yPlayer <= 220)
//            begin
//            found = 1;
//            pugType = 2;
//            end
            if(xPlayer >= 280 && xPlayer <= 320 && yPlayer >= 10 && yPlayer <= 60)
            begin
            found = 1;
            pugType = 1;
            end
            if(xPlayer >= 422 && xPlayer <= 438 && yPlayer >= 534 && yPlayer <= 550 && (milkStatus==2'b11 || milkStatus==2'b01))
            begin
                if(milkStatus == 2'b11) milkStatus = 2'b10;
                else if(milkStatus == 2'b01) milkStatus = 2'b00; 
                newHpPlayer = hpPlayer + 20;
                if(newHpPlayer > 100) newHpPlayer = 100;
            end
            if(xPlayer >= 38 && xPlayer <= 54 && yPlayer >= 166 && yPlayer <= 182 && (milkStatus==2'b11 || milkStatus==2'b10))
            begin
                if(milkStatus == 2'b11) milkStatus = 2'b01;
                else if(milkStatus == 2'b10) milkStatus = 2'b00;
                newHpPlayer = hpPlayer + 20; 
                if(newHpPlayer > 100) newHpPlayer = 100;
            end
            if(xPlayer >= 328 && xPlayer <= 344 && yPlayer >= 8 && yPlayer <= 24) endFlag = 1;
        end
    end
endmodule
