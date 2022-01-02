`timescale 1ns / 1ps
module bcd_code_converter(
    input d,
    input c,
    input b,
    input a,
    output out4,
    output out3,
    output out2,
    output out1
    );
    assign out1 = a;
    assign out2 = ~((~d)&(~(c&(~b)&a))&(~(b&(~c))));
    assign out3 = ~((~d)&(~((~a)&c))&(~(b&c)));
    assign out4 = ~((~d)&(~(c&b))&(~(a&c)));
endmodule
