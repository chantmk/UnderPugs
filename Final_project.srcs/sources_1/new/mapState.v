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
            else if(xPlayer == 120 && yPlayer >= 389)
            begin
            found = 1;
            pugType = 0;
            end
            else if(yPlayer == 345 && xPlayer >= 584)
            begin
            found = 1;
            pugType = 1;
            end
            else if(xPlayer == 408 && yPlayer >= 185)
            begin
            found = 1;
            pugType = 2;
            end
            else if(xPlayer == 280 && yPlayer >= 37)
            begin
            found = 1;
            pugType = 3;
            end
            else if(xPlayer == 280 && yPlayer >= 37)
            begin
                if(milkStatus == 2'b11) milkStatus = 2'b10;
                else if(milkStatus == 2'b01) milkStatus = 2'b00; 
                newHpPlayer = hpPlayer + 20;
                if(newHpPlayer > 100) newHpPlayer = 100;
            end
            else if(xPlayer == 280 && yPlayer >= 37)
            begin
                if(milkStatus == 2'b11) milkStatus = 2'b01;
                else if(milkStatus == 2'b10) milkStatus = 2'b00;
                newHpPlayer = hpPlayer + 20; 
                if(newHpPlayer > 100) newHpPlayer = 100;
            end
            else if(xPlayer <= 328 && yPlayer == 24) endFlag = 1;
        end
    end
endmodule
