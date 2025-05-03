`timescale 1ns / 1ps

module ALU( A, B, OP, OUT);

    input [7:0] A,B;
    input [2:0] OP;
    output [7:0] OUT;
    
    wire [7:0] w1,w2,w3,w4,w5,w6,w7;
    
    assign w1 = ~A;
    assign w2 =  A|B;
    assign w3 = A^B;
    assign w4 =  A&B;
    assign w5 = A[3:0]*B[3:0];
    assign w6 = A+B;
    assign w7 = A-B;
    
    reg [7:0] result;

    always @(*) begin
        case (OP)
            3'b000: result = w1;
            3'b001: result = w2;
            3'b010: result = w3;
            3'b011: result = w4;
            3'b100: result = w5;
            3'b101: result = w6;
            3'b110: result = w7;
            default: result = 8'b00000000;
        endcase
    end

    assign OUT = result;
    
endmodule
