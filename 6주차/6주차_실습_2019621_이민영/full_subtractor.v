`timescale 1ns / 1ps
module full_subtractor(
    input x,
    input y,
    input z,
    output d,
    output b
    );
    assign d = x^y^z;
    assign b = (~(x^y)&z) | ((~x)&y);
endmodule
