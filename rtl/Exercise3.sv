`include "Mysteries\Mystery1.sv"
`include "Mysteries\Mystery2.sv"

module Exercise3 (
    input clk,
    input nReset,
    input [3:0] a,
    input [15:0] b,
    input [15:0] c,
    output [15:0] out
);


wire [7:0] w1;
wire [15:0] w2;


Mystery1 mys1(a[1:0],b[7:0],c[7:0],w1);
Mystery1 mys1_2(a[3:2],b[15:8],c[15:8],w2);
Mystery2 mys2(clk,nReset,w1,w2,out);



endmodule
