module shift_right(input1,input2,Output,selectBit);

input [31:0] input1, input2;
input selectBit;
wire one_byt_input;
output [31:0]Output;

wire [31:0] cable,cable2,cable3,cable4;
Two_One_Mux Mux(input1[31],0,selectBit,one_byt_input);


Two_One_Mux gate1(input1[0],input1[1],input2[0],cable[0]);
Two_One_Mux gate2(input1[1],input1[2],input2[0],cable[1]);
Two_One_Mux gate3(input1[2],input1[3],input2[0],cable[2]);
Two_One_Mux gate4(input1[3],input1[4],input2[0],cable[3]);
Two_One_Mux gate5(input1[4],input1[5],input2[0],cable[4]);
Two_One_Mux gate6(input1[5],input1[6],input2[0],cable[5]);
Two_One_Mux gate7(input1[6],input1[7],input2[0],cable[6]);
Two_One_Mux gate8(input1[7],input1[8],input2[0],cable[7]);
Two_One_Mux gate9(input1[8],input1[9],input2[0],cable[8]);
Two_One_Mux gate10(input1[9],input1[10],input2[0],cable[9]);
Two_One_Mux gate11(input1[10],input1[11],input2[0],cable[10]);
Two_One_Mux gate12(input1[11],input1[12],input2[0],cable[11]);
Two_One_Mux gate13(input1[12],input1[13],input2[0],cable[12]);
Two_One_Mux gate14(input1[13],input1[14],input2[0],cable[13]);
Two_One_Mux gate15(input1[14],input1[15],input2[0],cable[14]);
Two_One_Mux gate16(input1[15],input1[16],input2[0],cable[15]);
Two_One_Mux gate17(input1[16],input1[17],input2[0],cable[16]);
Two_One_Mux gate18(input1[17],input1[18],input2[0],cable[17]);
Two_One_Mux gate19(input1[18],input1[19],input2[0],cable[18]);
Two_One_Mux gate20(input1[19],input1[20],input2[0],cable[19]);
Two_One_Mux gate21(input1[20],input1[21],input2[0],cable[20]);
Two_One_Mux gate22(input1[21],input1[22],input2[0],cable[21]);
Two_One_Mux gate23(input1[22],input1[23],input2[0],cable[22]);
Two_One_Mux gate24(input1[23],input1[24],input2[0],cable[23]);
Two_One_Mux gate25(input1[24],input1[25],input2[0],cable[24]);
Two_One_Mux gate26(input1[25],input1[26],input2[0],cable[25]);
Two_One_Mux gate27(input1[26],input1[27],input2[0],cable[26]);
Two_One_Mux gate28(input1[27],input1[28],input2[0],cable[27]);
Two_One_Mux gate29(input1[28],input1[29],input2[0],cable[28]);
Two_One_Mux gate30(input1[29],input1[30],input2[0],cable[29]);
Two_One_Mux gate31(input1[30],input1[31],input2[0],cable[30]);
Two_One_Mux gate32(input1[31],one_byt_input,input2[0],cable[31]);

///////////////////////////////////////////////////////////////////////////////////////////

Two_One_Mux b1(cable[0],cable[2],input2[1],cable2[0]);
Two_One_Mux b2(cable[1],cable[3],input2[1],cable2[1]);
Two_One_Mux b3(cable[2],cable[4],input2[1],cable2[2]);
Two_One_Mux b4(cable[3],cable[5],input2[1],cable2[3]);
Two_One_Mux b5(cable[4],cable[6],input2[1],cable2[4]);
Two_One_Mux b6(cable[5],cable[7],input2[1],cable2[5]);
Two_One_Mux b7(cable[6],cable[8],input2[1],cable2[6]);
Two_One_Mux b8(cable[7],cable[9],input2[1],cable2[7]);
Two_One_Mux b9(cable[8],cable[10],input2[1],cable2[8]);
Two_One_Mux b10(cable[9],cable[11],input2[1],cable2[9]);
Two_One_Mux b11(cable[10],cable[12],input2[1],cable2[10]);
Two_One_Mux b12(cable[11],cable[13],input2[1],cable2[11]);
Two_One_Mux b13(cable[12],cable[14],input2[1],cable2[12]);
Two_One_Mux b14(cable[13],cable[15],input2[1],cable2[13]);
Two_One_Mux b15(cable[14],cable[16],input2[1],cable2[14]);
Two_One_Mux b16(cable[15],cable[17],input2[1],cable2[15]);
Two_One_Mux b17(cable[16],cable[18],input2[1],cable2[16]);
Two_One_Mux b18(cable[17],cable[19],input2[1],cable2[17]);
Two_One_Mux b19(cable[18],cable[20],input2[1],cable2[18]);
Two_One_Mux b20(cable[19],cable[21],input2[1],cable2[19]);
Two_One_Mux b21(cable[20],cable[22],input2[1],cable2[20]);
Two_One_Mux b22(cable[21],cable[23],input2[1],cable2[21]);
Two_One_Mux b23(cable[22],cable[24],input2[1],cable2[22]);
Two_One_Mux b24(cable[23],cable[25],input2[1],cable2[23]);
Two_One_Mux b25(cable[24],cable[26],input2[1],cable2[24]);
Two_One_Mux b26(cable[25],cable[27],input2[1],cable2[25]);
Two_One_Mux b27(cable[26],cable[28],input2[1],cable2[26]);
Two_One_Mux b28(cable[27],cable[29],input2[1],cable2[27]);
Two_One_Mux b29(cable[28],cable[30],input2[1],cable2[28]);
Two_One_Mux b30(cable[29],cable[31],input2[1],cable2[29]);
Two_One_Mux b31(cable[30],one_byt_input,input2[1],cable2[30]);
Two_One_Mux b32(cable[31],one_byt_input,input2[1],cable2[31]);

//////////////////////////////////////////////////////////////////

Two_One_Mux c1(cable2[0],cable2[4],input2[2],cable3[0]);
Two_One_Mux c2(cable2[1],cable2[5],input2[2],cable3[1]);
Two_One_Mux c3(cable2[2],cable2[6],input2[2],cable3[2]);
Two_One_Mux c4(cable2[3],cable2[7],input2[2],cable3[3]);
Two_One_Mux c5(cable2[4],cable2[8],input2[2],cable3[4]);
Two_One_Mux c6(cable2[5],cable2[9],input2[2],cable3[5]);
Two_One_Mux c7(cable2[6],cable2[10],input2[2],cable3[6]);
Two_One_Mux c8(cable2[7],cable2[11],input2[2],cable3[7]);
Two_One_Mux c9(cable2[8],cable2[12],input2[2],cable3[8]);
Two_One_Mux c10(cable2[9],cable2[13],input2[2],cable3[9]);
Two_One_Mux c11(cable2[10],cable2[14],input2[2],cable3[10]);
Two_One_Mux c12(cable2[11],cable2[15],input2[2],cable3[11]);
Two_One_Mux c13(cable2[12],cable2[16],input2[2],cable3[12]);
Two_One_Mux c14(cable2[13],cable2[17],input2[2],cable3[13]);
Two_One_Mux c15(cable2[14],cable2[18],input2[2],cable3[14]);
Two_One_Mux c16(cable2[15],cable2[19],input2[2],cable3[15]);
Two_One_Mux c17(cable2[16],cable2[20],input2[2],cable3[16]);
Two_One_Mux c18(cable2[17],cable2[21],input2[2],cable3[17]);
Two_One_Mux c19(cable2[18],cable2[22],input2[2],cable3[18]);
Two_One_Mux c20(cable2[19],cable2[23],input2[2],cable3[19]);
Two_One_Mux c21(cable2[20],cable2[24],input2[2],cable3[20]);
Two_One_Mux c22(cable2[21],cable2[25],input2[2],cable3[21]);
Two_One_Mux c23(cable2[22],cable2[26],input2[2],cable3[22]);
Two_One_Mux c24(cable2[23],cable2[27],input2[2],cable3[23]);
Two_One_Mux c25(cable2[24],cable2[28],input2[2],cable3[24]);
Two_One_Mux c26(cable2[25],cable2[29],input2[2],cable3[25]);
Two_One_Mux c27(cable2[26],cable2[30],input2[2],cable3[26]);
Two_One_Mux c28(cable2[27],cable2[31],input2[2],cable3[27]);
Two_One_Mux c29(cable2[28],one_byt_input,input2[2],cable3[28]);
Two_One_Mux c30(cable2[29],one_byt_input,input2[2],cable3[29]);
Two_One_Mux c31(cable2[30],one_byt_input,input2[2],cable3[30]);
Two_One_Mux c32(cable2[31],one_byt_input,input2[2],cable3[31]);

/////////////////////////////////////////////////////////

Two_One_Mux d1(cable3[0],cable3[8],input2[3],cable4[0]);
Two_One_Mux d2(cable3[1],cable3[9],input2[3],cable4[1]);
Two_One_Mux d3(cable3[2],cable3[10],input2[3],cable4[2]);
Two_One_Mux d4(cable3[3],cable3[12],input2[3],cable4[3]);
Two_One_Mux d5(cable3[4],cable3[13],input2[3],cable4[4]);
Two_One_Mux d6(cable3[5],cable3[14],input2[3],cable4[5]);
Two_One_Mux d7(cable3[6],cable3[15],input2[3],cable4[6]);
Two_One_Mux d8(cable3[7],cable3[16],input2[3],cable4[7]);
Two_One_Mux d9(cable3[8],cable3[17],input2[3],cable4[8]);
Two_One_Mux d10(cable3[9],cable3[18],input2[3],cable4[9]);
Two_One_Mux d11(cable3[10],cable3[19],input2[3],cable4[10]);
Two_One_Mux d12(cable3[11],cable3[20],input2[3],cable4[11]);
Two_One_Mux d13(cable3[12],cable3[21],input2[3],cable4[12]);
Two_One_Mux d14(cable3[13],cable3[22],input2[3],cable4[13]);
Two_One_Mux d15(cable3[14],cable3[23],input2[3],cable4[14]);
Two_One_Mux d16(cable3[15],cable3[24],input2[3],cable4[15]);
Two_One_Mux d17(cable3[16],cable3[25],input2[3],cable4[16]);
Two_One_Mux d18(cable3[17],cable3[26],input2[3],cable4[17]);
Two_One_Mux d19(cable3[18],cable3[27],input2[3],cable4[18]);
Two_One_Mux d20(cable3[19],cable3[28],input2[3],cable4[19]);
Two_One_Mux d21(cable3[20],cable3[29],input2[3],cable4[20]);
Two_One_Mux d22(cable3[21],cable3[30],input2[3],cable4[21]);
Two_One_Mux d23(cable3[22],cable3[31],input2[3],cable4[22]);
Two_One_Mux d24(cable3[23],one_byt_input,input2[3],cable4[23]);
Two_One_Mux d25(cable3[24],one_byt_input,input2[3],cable4[24]);
Two_One_Mux d26(cable3[25],one_byt_input,input2[3],cable4[25]);
Two_One_Mux d27(cable3[26],one_byt_input,input2[3],cable4[26]);
Two_One_Mux d28(cable3[27],one_byt_input,input2[3],cable4[27]);
Two_One_Mux d29(cable3[28],one_byt_input,input2[3],cable4[28]);
Two_One_Mux d30(cable3[29],one_byt_input,input2[3],cable4[29]);
Two_One_Mux d31(cable3[30],one_byt_input,input2[3],cable4[30]);
Two_One_Mux d32(cable3[31],one_byt_input,input2[3],cable4[31]);

///////////////////////////////////////////////////////////////

Two_One_Mux e1(cable4[0],cable4[16],input2[4],Output[0]);
Two_One_Mux e2(cable4[1],cable4[17],input2[4],Output[1]);
Two_One_Mux e3(cable4[2],cable4[18],input2[4],Output[2]);
Two_One_Mux e4(cable4[3],cable4[19],input2[4],Output[3]);
Two_One_Mux e5(cable4[4],cable4[20],input2[4],Output[4]);
Two_One_Mux e6(cable4[5],cable4[21],input2[4],Output[5]);
Two_One_Mux e7(cable4[6],cable4[22],input2[4],Output[6]);
Two_One_Mux e8(cable4[7],cable4[23],input2[4],Output[7]);
Two_One_Mux e9(cable4[8],cable4[24],input2[4],Output[8]);
Two_One_Mux e10(cable4[9],cable4[25],input2[4],Output[9]);
Two_One_Mux e11(cable4[10],cable4[26],input2[4],Output[10]);
Two_One_Mux e12(cable4[11],cable4[27],input2[4],Output[11]);
Two_One_Mux e13(cable4[12],cable4[28],input2[4],Output[12]);
Two_One_Mux e14(cable4[13],cable4[29],input2[4],Output[13]);
Two_One_Mux e15(cable4[14],cable4[30],input2[4],Output[14]);
Two_One_Mux e16(cable4[15],cable4[31],input2[4],Output[15]);
Two_One_Mux e17(cable4[16],one_byt_input,input2[4],Output[16]);
Two_One_Mux e18(cable4[17],one_byt_input,input2[4],Output[17]);
Two_One_Mux e19(cable4[18],one_byt_input,input2[4],Output[18]);
Two_One_Mux e20(cable4[19],one_byt_input,input2[4],Output[19]);
Two_One_Mux e21(cable4[20],one_byt_input,input2[4],Output[20]);
Two_One_Mux e22(cable4[21],one_byt_input,input2[4],Output[21]);
Two_One_Mux e23(cable4[22],one_byt_input,input2[4],Output[22]);
Two_One_Mux e24(cable4[23],one_byt_input,input2[4],Output[23]);
Two_One_Mux e25(cable4[24],one_byt_input,input2[4],Output[24]);
Two_One_Mux e26(cable4[25],one_byt_input,input2[4],Output[25]);
Two_One_Mux e27(cable4[26],one_byt_input,input2[4],Output[26]);
Two_One_Mux e28(cable4[27],one_byt_input,input2[4],Output[27]);
Two_One_Mux e29(cable4[28],one_byt_input,input2[4],Output[28]);
Two_One_Mux e30(cable4[29],one_byt_input,input2[4],Output[29]);
Two_One_Mux e31(cable4[30],one_byt_input,input2[4],Output[30]);
Two_One_Mux e32(cable4[31],one_byt_input,input2[4],Output[31]);

endmodule
