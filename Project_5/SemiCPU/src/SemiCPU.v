`timescale 1ns / 1ps

module SemiCPU(CLK, RESET, CONTROL, seg, an);

    input CLK;
    input RESET;      //Reset button
    input CONTROL;    //Control button
    output [6:0] seg; //7 segment display
    output [3:0] an;

    wire [4:0] pc;
    wire [31:0] instruction;
    wire [4:0] rs1, rs2, rd;
    wire [31:0] imm, rd1, rd2, writeData, aluResult;
    wire isImmediate;
    wire [2:0] aluOp;

    //Program Counter
    ProgramCounter pc_module(.clk(CLK), .rst(RESET), .ctrl(CONTROL), .PC(pc));

    //Instruction Memory
    InstructionMemory imem(.address(pc), .instruction(instruction));

    //Instruction Decoder
    InstructionDecoder idec(.instruction(instruction), .rs1(rs1), .rs2(rs2), .rd(rd), .imm(imm), .isImmediate(isImmediate), .ALUop(aluOp));

    //Register File
    RegisterFile rf(.CLK(CLK), .WE3(1'b1), .A1(rs1), .A2(rs2), .A3(rd), .WD3(aluResult), .RD1(rd1), .RD2(rd2));

    //ALU
    assign writeData = isImmediate ? imm : rd2;

    ALU alu(.A(rd1), .B(writeData), .ALUop(aluOp), .Result(aluResult));

    //7 Segment Display Controller
    SevenSegDisplayController display (.clk(CLK), .number(aluResult[15:0]), .seg(seg), .an(an));

endmodule

module SevenSegDisplayController(
    input clk,
    input [15:0] number,
    output reg [6:0] seg,
    output reg [3:0] an
);
    reg [3:0] digit;
    reg [19:0] clkdiv;
    always @(posedge clk) clkdiv <= clkdiv + 1;

    always @(*) begin
        case(clkdiv[19:18])
            2'b00: begin digit = number[3:0]; an = 4'b1110; end
            2'b01: begin digit = number[7:4]; an = 4'b1101; end
            2'b10: begin digit = number[11:8]; an = 4'b1011; end
            2'b11: begin digit = number[15:12]; an = 4'b0111; end
        endcase

        case(digit)
            4'h0: seg = 7'b1000000;
            4'h1: seg = 7'b1111001;
            4'h2: seg = 7'b0100100;
            4'h3: seg = 7'b0110000;
            4'h4: seg = 7'b0011001;
            4'h5: seg = 7'b0010010;
            4'h6: seg = 7'b0000010;
            4'h7: seg = 7'b1111000;
            4'h8: seg = 7'b0000000;
            4'h9: seg = 7'b0010000;
            4'hA: seg = 7'b0001000;
            4'hB: seg = 7'b0000011;
            4'hC: seg = 7'b1000110;
            4'hD: seg = 7'b0100001;
            4'hE: seg = 7'b0000110;
            4'hF: seg = 7'b0001110;
            default: seg = 7'b1111111;
        endcase
    end
endmodule

