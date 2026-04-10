`timescale 1ns/1ps

module tb_clock_divider;

reg clk;
reg rst;
wire clk_div2;
wire clk_div4;
wire clk_div8;

// Instantiating top module as DUT
clock_divider_top uut (
    .clk(clk),
    .rst(rst),
    .clk_div2(clk_div2),
    .clk_div4(clk_div4),
    .clk_div8(clk_div8)
);

// Clock generation (10 ns time period)
always #5 clk = ~clk;
initial begin
    // Initialising
    clk = 0;
    rst = 1;

    // Applying reset
    #10 rst = 0;

    // Run simulation
    #250;
    $finish;
end
endmodule