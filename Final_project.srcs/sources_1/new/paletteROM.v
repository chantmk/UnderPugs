`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/24/2020 06:19:48 PM
// Design Name: 
// Module Name: paletteROM
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


module paletteROM #(DATA_WIDTH=8,DEPTH=0,PALETTE_FILE="")(
    input clk
    ,input data
    ,output reg [DATA_WIDTH-1:0] color
    );
    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1]; 
    initial
    begin
        if(PALETTE_FILE>0)
        begin
            $display("Loading palette: "+PALETTE_FILE);
            $readmemh(PALETTE_FILE,mem);
            $display(PALETTE_FILE+"palette Loaded");
        end
    end
    
    always @(posedge clk)
    begin
        if(PALETTE_FILE>0)
        begin
            color[11:7] <= mem[data*3];
            color[7:4] <= mem[(data*3)+1];
            color[3:0] <= mem[(data*3)+2];
        end
        else
        begin
            color <= 0;
        end
    end
endmodule
