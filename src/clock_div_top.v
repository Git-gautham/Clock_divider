`timescale 1ns / 1ps
module clock_divider_top (
    input clk,
    input rst,
    output clk_div2,
    output clk_div4,
    output clk_div8
);

wire [2:0] count;

// Instantiating submodule
counter_3bit u_counter (
    .clk(clk),
    .rst(rst),
    .count(count)
);

// Output assignments
assign clk_div2 = count[0];
assign clk_div4 = count[1];
assign clk_div8 = count[2];

endmodule