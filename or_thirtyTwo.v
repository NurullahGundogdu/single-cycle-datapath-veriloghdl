module or_thirtyTwo(input1,input2,Output);

input [31:0] input1,input2;

output [31:0] Output;

or_fourbit a1(input1[3:0],input2[3:0],Output[3:0]);
or_fourbit a2(input1[7:4],input2[7:4],Output[7:4]);
or_fourbit a3(input1[11:8],input2[11:8],Output[11:8]);
or_fourbit a4(input1[15:12],input2[15:12],Output[15:12]);
or_fourbit a5(input1[19:16],input2[19:16],Output[19:16]);
or_fourbit a6(input1[23:20],input2[23:20],Output[23:20]);
or_fourbit a7(input1[27:24],input2[27:24],Output[27:24]);
or_fourbit a8(input1[31:28],input2[31:28],Output[31:28]);




endmodule
