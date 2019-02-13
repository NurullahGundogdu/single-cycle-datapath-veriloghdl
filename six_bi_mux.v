module six_bi_mux(func_code,op_code,S,Output);

input [5:0] func_code,op_code;
input S;

output [5:0] Output;

Two_One_Mux mux1(func_code[0],op_code[0],S,Output[0]);
Two_One_Mux mux2(func_code[1],op_code[1],S,Output[1]);
Two_One_Mux mux3(func_code[2],op_code[2],S,Output[2]);
Two_One_Mux mux4(func_code[3],op_code[3],S,Output[3]);
Two_One_Mux mux5(func_code[4],op_code[4],S,Output[4]);
Two_One_Mux mux6(func_code[5],op_code[5],S,Output[5]);



endmodule
