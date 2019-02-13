module xor_fourbit(input1,input2,Output);

input[3:0] input1,input2;

output[3:0] Output;

xor first_Xor_Gate(Output[0],input1[0],input2[0]);
xor second_Xor_Gate(Output[1],input1[1],input2[1]);
xor third_Xor_Gate(Output[2],input1[2],input2[2]);
xor fourth_Xor_Gate(Output[3],input1[3],input2[3]);

endmodule
