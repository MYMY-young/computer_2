`timescale 1ns / 1ps

module half_subtractor(
       input x,
       input y,
       output d,
       output b
    );
    assign d = x^y;
    assign b = (~x)&y;
endmodule
