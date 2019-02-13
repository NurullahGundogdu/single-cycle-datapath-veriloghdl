module control_unit(select_bits_ALU_3, ALUop, function_code);

input [1:0] ALUop;
input [5:0] function_code;
output [2:0] select_bits_ALU_3;
wire cable,cable2,cable3,cable4,cable5,cable7,cable8,cable10;

wire [2:0] select_bits_ALU;
wire [2:0] select_bits_ALU_2;

wire kablo2,oriiiiiiii;
wire rtype,aluselectthird,aluselectsecond,aluselectfirst;
and and_1(rtype, ALUop[1], ~ALUop[0]);

wire lw_sw,i_type_select; // toplama
and and_19(lw_sw, ~ALUop[1], ~ALUop[0]);

wire beq; // cikarma
and and_123(beq, ~ALUop[1], ALUop[0]);


//2. bit
not Not(cable,function_code[5]);
or Or_1(select_bits_ALU[2],function_code[1],cable);

and and_5(select_bits_ALU_2[2], select_bits_ALU[2], ~lw_sw);
or or_5(aluselectthird, select_bits_ALU_2[2], beq);


and and_aluop(i_type_select,ALUop[0],ALUop[1]);

and and34343(select_bits_ALU_3[2],aluselectthird,~i_type_select);


//1.bit
not Not_1(cable2,function_code[1]);
not Not_2(cable3,function_code[2]);

and And_1(cable4,cable2,cable3);
and And_2(cable5,function_code[1],function_code[2]);

or Or_2(select_bits_ALU[1],cable4,cable5);

or or_6(select_bits_ALU_2[1], select_bits_ALU[1], lw_sw);
and and_9(aluselectsecond, select_bits_ALU_2[1], ~beq);



and and345(kablo2,aluselectsecond,~i_type_select);
and and32121432(oriiiiiiii,function_code[0],~function_code[1],~function_code[2],function_code[3],~function_code[4],~function_code[5]);
or orsdsoje995(select_bits_ALU_3[1],oriiiiiiii,kablo2);



//0.bit
not Not_4(cable7,function_code[5]);

and And_3(cable8,function_code[0],function_code[2]);
and And_5(cable10,cable7,function_code[1]);

or Or_3(select_bits_ALU[0],cable10,cable8);

and and_7(select_bits_ALU_2[0], select_bits_ALU[0], ~lw_sw);
and and_10(aluselectfirst, select_bits_ALU_2[0], ~beq);



wire andiiiiiiii,kablo;
and anpppppp5(kablo,aluselectfirst,~i_type_select);
and anjsjjsjs(andiiiiiiii,function_code[0],~function_code[1],function_code[2],function_code[3],~function_code[4],~function_code[5]);
or orgateeeee(select_bits_ALU_3[0],andiiiiiiii,kablo);



endmodule
