module nor_fourbit(input1,input2,Output);

input[3:0] input1,input2;

output[3:0] Output;

nor first_Nor_Gate(Output[0],input1[0],input2[0]);
nor second_Nor_Gate(Output[1],input1[1],input2[1]);
nor third_Nor_Gate(Output[2],input1[2],input2[2]);
nor fourth_Nor_Gate(Output[3],input1[3],input2[3]);

endmodule
