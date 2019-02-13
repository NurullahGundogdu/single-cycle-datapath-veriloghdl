module alu32(input1,input2,S,Output,Add,Sub,selectBit, zero);

input [31:0] input1,input2;
input [2:0] S;
input selectBit;
output [31:0] Output;
output Add,Sub;
output zero;

wire [31:0] wire0,wire1,wire2,wire3,wire4,wire5,wire6,wire7; 

and_thirtyTwo and1(input1,input2,wire0);
or_thirtyTwo or1(input1,input2,wire1);
adder_thirtyTwo adder1(input1,input2,0,wire2,Add);
xor_thirtyTwo xor1(input1,input2,wire3);
subtractor_thirtyTwo sub1(input1,input2,0,wire4,Sub);
shift_right right1(input1,input2,wire5,selectBit);
shift_left left1(input1,input2,wire6);
nor_thirtyTwo nor1(input1,input2,wire7);

bit8_2x1mux mux1(wire0,wire1,wire2,wire3,wire4,wire5,wire6,wire7,S,Output);

wire zero_not;
or or_123(zero_not, Output[0], Output[1], Output[2], Output[3], Output[4], Output[5], Output[6], Output[7], Output[8], Output[9], Output[10], Output[11], Output[12], Output[13], Output[14], Output[15], Output[16], Output[17], Output[18], Output[19], Output[20], Output[21], Output[22], Output[23], Output[24], Output[25], Output[26], Output[27], Output[28], Output[29], Output[30], Output[31]);
not not_234(zero, zero_not);

endmodule
