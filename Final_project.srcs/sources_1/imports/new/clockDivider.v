`timescale 1ns/1ns
module clockDivider(
    output clkDiv,
    input clk
    );

reg clkDiv;

initial
begin
    clkDiv=0;
end
//half of clk
always @(posedge clk)
begin
    clkDiv = ~clkDiv;
end

endmodule 