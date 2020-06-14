`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Chulalongkorn University
// Organization: This pug is on fire!
// Engineer: Budsakorn Khosagrid
// 
// Create Date: 05/28/2020 10:16:10 PM
// Design Name: 
// Module Name: damageCompute
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


module damageCompute(
    input game_clk,
    input [9:0] xCurrent,
    input [2:0] monster,
    output [6:0] damage
    );
    reg [6:0] Vdamage;
    reg [3:0] color;
    
    assign damage = Vdamage;
    //damage 35, 20, 15, 10, 0 -> (35 is White)
    always @ (game_clk)
    begin
        case(monster)
            0: begin 
                if (xCurrent>=300 && xCurrent<=340) Vdamage = 35;
                else if ((xCurrent>=263 && xCurrent<=283) | (xCurrent>=364 && xCurrent<=389)) Vdamage = 20;
                else if ((xCurrent>=210 && xCurrent<=220) | (xCurrent>=432 && xCurrent<=442)) Vdamage = 15;
                else if ((xCurrent>=162 && xCurrent<=167) | (xCurrent>=446 && xCurrent<=451)) Vdamage = 10;
                else Vdamage = 0;
            end
            1:begin 
                if (xCurrent>=388 && xCurrent<=423) Vdamage = 35;
                else if ((xCurrent>=361 && xCurrent<=373) | (xCurrent>=448 && xCurrent<=473)) Vdamage = 20;
                else if ((xCurrent>=298 && xCurrent<=318) | (xCurrent>=502 && xCurrent<=507)) Vdamage = 15;
                else if ((xCurrent>=272 && xCurrent<=282) | (xCurrent>=532 && xCurrent<=535)) Vdamage = 10;
                else Vdamage = 0;
            end
            2:begin 
                if (xCurrent>=289 && xCurrent<=309) Vdamage = 35;
                else if ((xCurrent>=263 && xCurrent<=275) | (xCurrent>=364 && xCurrent<=374)) Vdamage = 20;
                else if ((xCurrent>=210 && xCurrent<=218) | (xCurrent>=432 && xCurrent<=437)) Vdamage = 15;
                else if ((xCurrent>=183 && xCurrent<=186) | (xCurrent>=494 && xCurrent<=497)) Vdamage = 10;
                else Vdamage = 0;
            end
            3:begin 
                if (xCurrent>=218 && xCurrent<=228) Vdamage = 35;
                else if ((xCurrent>=179 && xCurrent<=184) | (xCurrent>=278 && xCurrent<=283)) Vdamage = 20;
                else if ((xCurrent>=162 && xCurrent<=167) | (xCurrent>=364 && xCurrent<=369)) Vdamage = 15;
                else if ((xCurrent>=156 && xCurrent<=158) | (xCurrent>=384 && xCurrent<=389)) Vdamage = 10;
                else Vdamage = 0;
            end 
        endcase
    end
    
    
endmodule
