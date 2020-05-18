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


module startScreenROM (
    input clk
    ,input [9:0] addr_y
    ,input [9:0] addr_x
    ,input [1:0] data_flag
    ,output reg data
    );
    
    reg [135:0] ids_array [120:0] ;
    reg [144:0] names_array [120:0] ;
    reg [245:0] title_array [45:0] ;
    reg [244:0] group_array [28:0] ;
    
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
