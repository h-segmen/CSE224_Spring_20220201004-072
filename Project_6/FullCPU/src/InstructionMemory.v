`timescale 1ns / 1ps

module InstructionMemory(address, instruction);

    input [4:0] address;
    output reg [31:0] instruction;
    
    always @(*) begin
        case(address)
            0:  instruction = 32'b110_00000_01010_0000000000001010; // ADDI r10, r0, 10
            1:  instruction = 32'b110_00000_01111_0000000000001111; // ADDI r15, r0, 15
            2:  instruction = 32'b010_01010_01111_11001_00000000000; // ADD r25, r10, r15
            3:  instruction = 32'b111_11001_10100_0000000000000101; // SUBI r20, r25, 5
            4:  instruction = 32'b110_00000_10101_0000000000000010; // ADDI r21, r0, 2
            5:  instruction = 32'b000_00000_00000_00000_000000001100; // J 12
            6:  instruction = 32'b100_00111_10101_11110_00000000000; // SHIFTL r30, r7, r21
            12: instruction = 32'b110_00000_00100_0000000000000100; // ADDI r4, r0, 4
            13: instruction = 32'b010_00000_00000_00101_00000000000; // ADD r5, r0, r0
            14: instruction = 32'b001_00100_00101_0000000000000111; // BEQ r4, r5, 7
            15: instruction = 32'b110_00000_00110_0000000000000001; // ADDI r6, r0, 1
            16: instruction = 32'b110_00000_00111_0000000000000001; // ADDI r7, r0, 1
            17: instruction = 32'b010_00110_00111_01000_00000000000; // ADD r8, r6, r7
            18: instruction = 32'b010_00111_00000_00110_00000000000; // ADD r6, r7, r0
            19: instruction = 32'b010_01000_00000_00111_00000000000; // ADD r7, r8, r0
            20: instruction = 32'b110_00101_00101_0000000000000001; // ADDI r5, r5, 1
            21: instruction = 32'b000_00000_00000_00000_000000001110; // J 14
            default: instruction = 32'b0;
        endcase
    end
endmodule

