module common_control_unit(clk, select_bit_sltu, selectBit_srl,
	shamtBit,andi,orri,addiu,lw,sw,beq,j, function_code, instruction,
	ALUsrc, ALUop,
	
	regWrite, memtoReg,
	regDst,zeroextimm
	);

	output select_bit_sltu, selectBit_srl,shamtBit,andi,orri,addiu,lw,sw,beq,j,regDst;


input clk;
input [5:0] instruction;
input [5:0] function_code;
output zeroextimm;
output ALUsrc;
input [1:0] ALUop;
output memtoReg, regWrite;


wire srl, sltu;
wire instruction_000000; 

and and_4(instruction_000000, ~instruction[0], ~instruction[1], ~instruction[2], ~instruction[3],
			~instruction[4], ~instruction[5]);

and and6_2(sltu, function_code[5], ~function_code[4], function_code[3], ~function_code[2],
				function_code[1], function_code[0]);

and and6_3(srl, ~function_code[5], ~function_code[4], ~function_code[3], ~function_code[2],
				function_code[1], ~function_code[0]);

and and_1(select_bit_sltu, instruction_000000, sltu);
and and_2(selectBit_srl, instruction_000000, srl);
and and_3(shamtBit, instruction_000000, srl);

and and_11(andi, ~instruction[5], ~instruction[4], instruction[3], instruction[2],
			~instruction[1], ~instruction[0]);
		
and and_5(orri, ~instruction[5], ~instruction[4], instruction[3], instruction[2],
			~instruction[1], instruction[0]);
			
and and_6(addiu, ~instruction[5], ~instruction[4], instruction[3], ~instruction[2],
			~instruction[1], instruction[0]);
			
and and_7(lw, instruction[5], ~instruction[4], ~instruction[3], ~instruction[2],
			instruction[1], instruction[0]);
	
and and_8(sw, instruction[5], ~instruction[4], instruction[3], ~instruction[2],
			instruction[1], instruction[0]);
			
and and_9(beq, ~instruction[5], ~instruction[4], ~instruction[3], instruction[2],
			~instruction[1], ~instruction[0]);
			
and and_10(j, ~instruction[5], ~instruction[4], ~instruction[3], ~instruction[2],
			instruction[1], ~instruction[0]);
			
or or_1(ALUsrc, lw, sw,addiu);

and and_12(memtoReg, lw, lw);
and and_13(regWrite, ~sw, ~beq,~j);

or or_14(regDst, lw, andi,orri,addiu);

wire aluop_first,ALUop_second;
and and_148(aluop_first, instruction_000000, instruction_000000);
or or_2323(ALUop[1],orri,andi,addiu,aluop_first);

and and_144(ALUop_second, beq, beq);
or or_25553(ALUop[0],orri,andi,addiu,ALUop_second);

or orhebe(zeroextimm,orri,andi);

always @(posedge clk) begin
	#1;

end

endmodule
