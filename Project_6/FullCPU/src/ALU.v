`timescale 1ns / 1ps

module ALU(A, B, ALUop, Result);

    input [31:0] A, B;
    input [2:0] ALUop; 
    output reg [31:0] Result;
    
    always @(*) begin
        case(ALUop)
            3'b000, 3'b001: Result = 0; //NOOP
            3'b010: Result = A + B;     //ADD
            3'b011: Result = A - B;     //SUB
            3'b100: Result = A << B;    //SHIFTL
            3'b101: Result = A >> B;    //SHIFTR
            3'b110: Result = A + B;     //ADDI (B = immediate)
            3'b111: Result = A - B;     //SUBI (B = immediate)
            default: Result = 0;
        endcase
    end
endmodule
