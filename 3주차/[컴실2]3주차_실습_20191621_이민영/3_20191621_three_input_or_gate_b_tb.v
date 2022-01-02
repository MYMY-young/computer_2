`timescale 1ns / 1ps
module three_input_or_gate_b_tb;
reg aa;
reg bb;
reg cc;
wire dd;
wire ee;

three_input_or_gate_b
u_three_input_or_gate_b(
.a (aa),
.b (bb),
.c (cc),
.d (dd),
.e (ee)
);
initial aa = 1'b0;
initial bb = 1'b0;
initial cc = 1'b0;

always aa = #100 ~aa;
always bb = #50 ~bb;
always cc = #25 ~cc;

initial begin
        #1000
        $finish;
end
endmodule
