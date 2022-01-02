`timescale 1ns / 1ps

module full_adder_tb;
reg xx;
reg yy;
reg zz;
wire cc;
wire ss;

full_adder
u_full_adder(
.x(xx),
.y(yy),
.z(zz),
.c(cc),
.s(ss)
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
