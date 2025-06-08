`timescale 1ns / 1ps

module InstructionDecoder( instruction, rs1, rs2, rd, imm, isImmediate, ALUop);
    input [31:0] instruction;
    output reg [4:0] rs1, rs2, rd;
    output reg [31:0] imm;
    output reg isImmediate;
    output reg [2:0] ALUop;
    
    always @(*) begin
        ALUop = instruction[31:29];
        rs1   = instruction[28:24];
        rs2   = instruction[23:19];
        rd    = instruction[18:14];
        imm   = {{19{instruction[13]}}, instruction[13:0]}; //sign extend 14 bit immediate
        isImmediate = (ALUop == 3'b110 || ALUop == 3'b111);
    end
endmodule
