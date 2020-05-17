`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05/17/2020 07:32:17 PM
// Design Name: 
// Module Name: startScreenROM
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


module startScreenROM #(parameter ADDR_WIDTH=8, DATA_WIDTH=144, DEPTH=128)(
    input clk
    ,input [ADDR_WIDTH-1:0] addr_y
    ,input [ADDR_WIDTH-1:0] addr_x
    ,input [1:0] data_flag
    ,output reg data
    );
    
    reg [DATA_WIDTH-1:0] ids_array [DEPTH-1:0] ;
    reg [DATA_WIDTH-1:0] names_array [DEPTH-1:0] ;
    reg [DATA_WIDTH-1:0] title_array [DEPTH-1:0] ;
    reg [DATA_WIDTH-1:0] group_array [DEPTH-1:0] ;
    
    initial
    begin
        $readmemb("title.data",title_array);
        $readmemb("group.data",group_array);
        $readmemb("ids.data",ids_array);
        $readmemb("names.data",names_array);
    end
    always @(posedge clk)
    begin
        case(data_flag)
        2'b00: data <= title_array[addr_y][addr_x];
        2'b01: data <= names_array[addr_y][addr_x];
        2'b10: data <= ids_array[addr_y][addr_x];
        2'b11: data <= group_array[addr_y][addr_x];
        endcase
    end
endmodule
