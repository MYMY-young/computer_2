`timescale 1ns / 1ps
module four_input_and_gate_b_tb;
reg aa;
reg bb;
reg cc;
reg dd;
wire ee;
wire ff;
wire gg;

four_input_and_gate_b
u_four_input_and_gate_b(
.a (aa),
.b (bb),
.c (cc),
.d (dd),
.e (ee),
.f (ff),
.g (gg)
);
initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;

always aa = #200 ~aa;
always bb = #100 ~bb;
always cc = #50 ~cc;
always dd = #25 ~dd;

initial begin
        #1000
        $finish;
end
endmodule
