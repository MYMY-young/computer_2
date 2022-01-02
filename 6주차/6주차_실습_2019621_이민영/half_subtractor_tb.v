`timescale 1ns / 1ps
module half_subtractor_tb;
reg xx;
reg yy;
wire dd;
wire bb;

half_subtractor
u_half_subtractor(
    .x(xx),
    .y(yy),
    .d(dd),
    .b(bb)
);

initial xx = 1'b0;
initial yy = 1'b0;

always xx = #100 ~xx;
always yy = #50 ~yy;

initial begin
    #1000
    $finish;
end
endmodule
