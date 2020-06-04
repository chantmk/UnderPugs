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
// https://github.com/AdrianFPGA/basys3
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module paletteROM #(DATA_WIDTH=8,COLOR_WIDTH=12,DEPTH=0,PALETTEFILE="")(
    input clk
    ,input [DATA_WIDTH-1:0] data
    ,output reg [COLOR_WIDTH-1:0] color
    );
    reg [COLOR_WIDTH-1:0] mem [0:DEPTH-1]; 
    initial
    begin
        if(PALETTEFILE>0)
        begin
            $display("Loading palette: "+PALETTEFILE);
            $readmemh(PALETTEFILE,mem);
            $display(PALETTEFILE+"palette Loaded");
        end
    end
    
    always @(posedge clk)
    begin
        if(PALETTEFILE>0)
        begin
            color[11:8] <= mem[(data*3)]>>4;
            color[7:4] <= mem[(data*3)+1]>>4;
            color[3:0] <= mem[(data*3)+2]>>4;
        end
        else
        begin
            color <= 0;
        end
    end
endmodule
