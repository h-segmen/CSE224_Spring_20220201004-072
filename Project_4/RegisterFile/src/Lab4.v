`timescale 1ns / 1ps

module ALU ( A, B, opcode, result);

    input wire [31:0] A, B;
    input wire [1:0] opcode;
    output reg [31:0] result;
    
    always @(*) begin
        case (opcode)
            2'b00: result = A + B;         //ADD
            2'b01: result = A - B;         //SUB
            2'b10: result = A << B;        //SHIFTL
            2'b11: result = A >> B;        //SHIFTR
            default: result = 32'h00000000;
        endcase
    end
endmodule

module RegisterFile ( CLK, WE3, A1, A2, A3, WD3, RD1, RD2);

    input wire CLK;
    input wire WE3;
    input wire [4:0] A1, A2, A3;
    input wire [31:0] WD3;
    output wire [31:0] RD1, RD2;
    
    reg [31:0] registers[31:0];

    //Read
    assign RD1 = registers[A1];
    assign RD2 = registers[A2];

    //Write
    always @(posedge CLK) begin
        if (WE3)
            registers[A3] <= WD3;
    end
endmodule

module Lab4 (
    input wire CLK,
    input wire WE3,
    input wire [4:0] A1, A2, A3,
    input wire [31:0] WD3, A, B,
    input wire [1:0] opcode,
    output wire [31:0] RD1, RD2, result
);

    RegisterFile rf (
        .CLK(CLK),
        .WE3(WE3),
        .A1(A1),
        .A2(A2),
        .A3(A3),
        .WD3(WD3),
        .RD1(RD1),
        .RD2(RD2)
    );

    ALU alu (
        .A(A),
        .B(B),
        .opcode(opcode),
        .result(result)
    );

endmodule

