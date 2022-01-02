`timescale 1ns / 1ps
module four_input_and_gate_b(
    input a,
    input b,
    input c,
    input d,
    output e,
    output f,
    output g
    );
assign e = a&b;
assign f = c&e;
assign g = d&f;    
endmodule
