`timescale 1ns / 1ps

module full_subtractor_tb;

reg xx;
reg yy;
reg zz;
wire dd;
wire bb;

full_subtractor
u_full_subtractor(
    .x(xx),
    .y(yy),
    .z(zz),
    .d(dd),
    .b(bb)
);
initial xx = 1'b0;
initial yy = 1'b0;
initial zz = 1'b0;

always xx = #100 ~xx;
always yy = #50 ~yy;
always zz = #25 ~zz;

initial begin
    #1000
    $finish;
end
endmodule
