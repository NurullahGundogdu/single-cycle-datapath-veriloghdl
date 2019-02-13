module mips32_single_cycle(result_2,clk,instruction,pc);

output wire [31:0] instruction;
output wire [31:0] pc;
output [31:0] result_2;
input clk;
wire [31:0] result,alu_3;
wire [2:0] select_bits_ALU;
wire [31:0] read_data_1, read_data_2;
wire signal_reg_write, clk,Add,Sub,select_bit_sltu,selectBit,shamtBit,i_type_select;
wire [31:0] cable_1_reg, cable_2_reg, Alu_result,cable_3,cable_4,cable_5_shamt;
wire [31:0] sltuResult;
wire ALUsrc;
wire [31:0] readData;
wire [1:0] ALUop;
wire [5:0] Output;
wire regWrite, memtoReg,zeroextimm;
wire [31:0] imm32;
wire andi,orri,addiu,lw,sw,beq,j;
wire regDst;
wire branch;
wire [31:0] alu_2;
wire zero;
wire [31:0] writeRegister;

common_control_unit UNit(clk, select_bit_sltu, selectBit, shamtBit,
andi,orri,addiu,lw,sw,beq,j,
instruction[5:0],
instruction[31:26],
ALUsrc,
ALUop,
regWrite, memtoReg, regDst,zeroextimm
);


and and_aluop(i_type_select,ALUop[0],ALUop[1]);

six_bi_mux mux(instruction[5:0],instruction[31:26],i_type_select,Output);

control_unit c_Unit(select_bits_ALU, ALUop, Output);

bit32_2x1mux Mux_77(instruction[15:11], instruction[20:16], regDst, writeRegister);
mips_registers m_Reg(read_data_1, read_data_2, result_2, instruction[25:21], instruction[20:16], writeRegister, regWrite, clk );

bit32_2x1mux Mux_1(read_data_1,read_data_2,select_bit_sltu,cable_1_reg);
bit32_2x1mux Mux_2(read_data_2,read_data_1,select_bit_sltu,cable_2_reg);

shamtModule gate_1(instruction,cable_5_shamt);
	
bit32_2x1mux Mux_3(cable_1_reg,cable_2_reg,shamtBit,cable_3);
bit32_2x1mux Mux_4(cable_2_reg,cable_5_shamt,shamtBit,cable_4);


bit32_2x1mux Mux_5(cable_4, imm32, ALUsrc, alu_3);

bit32_2x1mux Mux_6(alu_3, 32'b0, zeroextimm, alu_2);

alu32 Alu_1(cable_3, alu_2, select_bits_ALU,Alu_result,Add,Sub,selectBit,zero);

sltModule gate(Alu_result[31],sltuResult);

bit32_2x1mux Mux_16(Alu_result,sltuResult,select_bit_sltu,result);

bit32_2x1mux Mux_7(result, readData, memtoReg, result_2);


signextend signextend_1(imm32, instruction[15:0]);


and and_34654(branch, beq, zero);

nextpc nextpc_1(clk, imm32, branch, pc, j, instruction[25:0]);
instructionMemory instructionMemory_1(clk, pc, instruction);

dataMemory dataMemory1(clk, Alu_result, read_data_2, readData, lw, sw);


endmodule
