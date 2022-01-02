`timescale 1ns / 1ps
module bcd_code_converter_tb;
reg dd;
reg cc;
reg bb;
reg aa;
wire o4;
wire o3;
wire o2;
wire o1;

bcd_code_converter
u_bcd_code_converter(
    .d(dd),
    .c(cc),
    .b(bb),
    .a(aa),
    .out4(o4),
    .out3(o3),
    .out2(o2),
    .out1(o1)
);
initial dd = 1'b0;
initial cc = 1'b0;
initial bb = 1'b0;
initial aa = 1'b0;

always aa = #25 ~aa;
always bb = #50 ~bb;
always cc = #100 ~cc;
always dd = #200 ~dd;

initial begin
    #1000
    $finish;
end
endmodule
