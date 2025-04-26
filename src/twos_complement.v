`timescale 1ns / 1ps

//For two's complement operation we need to take the inverse
//of each bit and then add 1.

module twos_complement (
    input [7:0] in, //8 bit input
    output [7:0] out //8 bit output
);
    assign out = ~in + 1'b1; //two's complement
endmodule

