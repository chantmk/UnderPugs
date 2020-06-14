`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Chulalongkorn University
// Organization: This pug is on fire!
// Engineer: Thammakorn Kobkuachaiyapong
// 
// Create Date: 05/24/2020 12:03:37 PM
// Design Name: 
// Module Name: spriteROM
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


module spriteROM #(ADDR_WIDTH=10,DATA_WIDTH=8,DEPTH=32,DEPTH_BIT=5,MEMFILE="")(
    input clk
    ,input [DEPTH_BIT-1:0] addr
    ,output reg [DATA_WIDTH-1:0] data
    );
    reg [DATA_WIDTH-1:0] mem [0:DEPTH-1]; 
    initial
    begin
        if(MEMFILE>0)
        begin
            $display("Loading: "+MEMFILE);
            $readmemh(MEMFILE,mem);
            $display(MEMFILE+"Loaded");
        end
    end
    
    always @(posedge clk)
    begin
        data <= mem[addr];
    end
endmodule
