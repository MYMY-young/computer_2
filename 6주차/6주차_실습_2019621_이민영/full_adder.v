`timescale 1ns / 1ps
module full_adder(
    input x,
    input y,
    input z,
    output s,
    output c
    );
    
    assign c = ((x^y)&z )|(x&y);
    assign s = x^y^z;
    
endmodule
