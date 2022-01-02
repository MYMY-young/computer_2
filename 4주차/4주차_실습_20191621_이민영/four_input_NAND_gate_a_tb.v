`timescale 1ns / 1ps
module four_input_NAND_gate_a_tb;
reg aa;
reg bb;
reg cc;
reg dd;
wire ee;

four_input_NAND_gate_a
u_four_input_NAND_gate_a(
.a (aa),
.b (bb),
.c (cc),
.d (dd),
.e (ee)
);
initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;
initial dd = 1'b0;

always aa = #100 ~aa;
always bb = #50 ~bb;
always cc = #25 ~cc;

initial begin
    #1000
    $finish;
end
endmodule
