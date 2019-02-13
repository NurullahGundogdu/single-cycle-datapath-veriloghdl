module shift_left(input1,input2,Output);

input [31:0] input1, input2;

output [31:0]Output;

wire [31:0] cable,cable2,cable3,cable4;

Two_One_Mux2 gate1(input1[0],0,input2[0],cable[0]);
Two_One_Mux2 gate2(input1[1],input1[0],input2[0],cable[1]);
Two_One_Mux2 gate3(input1[2],input1[1],input2[0],cable[2]);
Two_One_Mux2 gate4(input1[3],input1[2],input2[0],cable[3]);
Two_One_Mux2 gate5(input1[4],input1[3],input2[0],cable[4]);
Two_One_Mux2 gate6(input1[5],input1[4],input2[0],cable[5]);
Two_One_Mux2 gate7(input1[6],input1[5],input2[0],cable[6]);
Two_One_Mux2 gate8(input1[7],input1[6],input2[0],cable[7]);
Two_One_Mux2 gate9(input1[8],input1[7],input2[0],cable[8]);
Two_One_Mux2 gate10(input1[9],input1[8],input2[0],cable[9]);
Two_One_Mux2 gate11(input1[10],input1[9],input2[0],cable[10]);
Two_One_Mux2 gate12(input1[11],input1[10],input2[0],cable[11]);
Two_One_Mux2 gate13(input1[12],input1[11],input2[0],cable[12]);
Two_One_Mux2 gate14(input1[13],input1[12],input2[0],cable[13]);
Two_One_Mux2 gate15(input1[14],input1[13],input2[0],cable[14]);
Two_One_Mux2 gate16(input1[15],input1[14],input2[0],cable[15]);
Two_One_Mux2 gate17(input1[16],input1[15],input2[0],cable[16]);
Two_One_Mux2 gate18(input1[17],input1[16],input2[0],cable[17]);
Two_One_Mux2 gate19(input1[18],input1[17],input2[0],cable[18]);
Two_One_Mux2 gate20(input1[19],input1[18],input2[0],cable[19]);
Two_One_Mux2 gate21(input1[20],input1[19],input2[0],cable[20]);
Two_One_Mux2 gate22(input1[21],input1[20],input2[0],cable[21]);
Two_One_Mux2 gate23(input1[22],input1[21],input2[0],cable[22]);
Two_One_Mux2 gate24(input1[23],input1[22],input2[0],cable[23]);
Two_One_Mux2 gate25(input1[24],input1[23],input2[0],cable[24]);
Two_One_Mux2 gate26(input1[25],input1[24],input2[0],cable[25]);
Two_One_Mux2 gate27(input1[26],input1[25],input2[0],cable[26]);
Two_One_Mux2 gate28(input1[27],input1[26],input2[0],cable[27]);
Two_One_Mux2 gate29(input1[28],input1[27],input2[0],cable[28]);
Two_One_Mux2 gate30(input1[29],input1[28],input2[0],cable[29]);
Two_One_Mux2 gate31(input1[30],input1[29],input2[0],cable[30]);
Two_One_Mux2 gate32(input1[31],input1[30],input2[0],cable[31]);

///////////////////////////////////////////////////////////////////////////////////////////

Two_One_Mux2 b1(cable[0],0,input2[1],cable2[0]);
Two_One_Mux2 b2(cable[1],0,input2[1],cable2[1]);
Two_One_Mux2 b3(cable[2],cable[0],input2[1],cable2[2]);
Two_One_Mux2 b4(cable[3],cable[1],input2[1],cable2[3]);
Two_One_Mux2 b5(cable[4],cable[2],input2[1],cable2[4]);
Two_One_Mux2 b6(cable[5],cable[3],input2[1],cable2[5]);
Two_One_Mux2 b7(cable[6],cable[4],input2[1],cable2[6]);
Two_One_Mux2 b8(cable[7],cable[5],input2[1],cable2[7]);
Two_One_Mux2 b9(cable[8],cable[6],input2[1],cable2[8]);
Two_One_Mux2 b10(cable[9],cable[7],input2[1],cable2[9]);
Two_One_Mux2 b11(cable[10],cable[8],input2[1],cable2[10]);
Two_One_Mux2 b12(cable[11],cable[9],input2[1],cable2[11]);
Two_One_Mux2 b13(cable[12],cable[10],input2[1],cable2[12]);
Two_One_Mux2 b14(cable[13],cable[11],input2[1],cable2[13]);
Two_One_Mux2 b15(cable[14],cable[12],input2[1],cable2[14]);
Two_One_Mux2 b16(cable[15],cable[13],input2[1],cable2[15]);
Two_One_Mux2 b17(cable[16],cable[14],input2[1],cable2[16]);
Two_One_Mux2 b18(cable[17],cable[15],input2[1],cable2[17]);
Two_One_Mux2 b19(cable[18],cable[16],input2[1],cable2[18]);
Two_One_Mux2 b20(cable[19],cable[17],input2[1],cable2[19]);
Two_One_Mux2 b21(cable[20],cable[18],input2[1],cable2[20]);
Two_One_Mux2 b22(cable[21],cable[19],input2[1],cable2[21]);
Two_One_Mux2 b23(cable[22],cable[20],input2[1],cable2[22]);
Two_One_Mux2 b24(cable[23],cable[21],input2[1],cable2[23]);
Two_One_Mux2 b25(cable[24],cable[22],input2[1],cable2[24]);
Two_One_Mux2 b26(cable[25],cable[23],input2[1],cable2[25]);
Two_One_Mux2 b27(cable[26],cable[24],input2[1],cable2[26]);
Two_One_Mux2 b28(cable[27],cable[25],input2[1],cable2[27]);
Two_One_Mux2 b29(cable[28],cable[26],input2[1],cable2[28]);
Two_One_Mux2 b30(cable[29],cable[27],input2[1],cable2[29]);
Two_One_Mux2 b31(cable[30],cable[28],input2[1],cable2[30]);
Two_One_Mux2 b32(cable[31],cable[29],input2[1],cable2[31]);

//////////////////////////////////////////////////////////////////

Two_One_Mux2 c1(cable2[0],0,input2[2],cable3[0]);
Two_One_Mux2 c2(cable2[1],0,input2[2],cable3[1]);
Two_One_Mux2 c3(cable2[2],0,input2[2],cable3[2]);
Two_One_Mux2 c4(cable2[3],0,input2[2],cable3[3]);
Two_One_Mux2 c5(cable2[4],cable2[0],input2[2],cable3[4]);
Two_One_Mux2 c6(cable2[5],cable2[1],input2[2],cable3[5]);
Two_One_Mux2 c7(cable2[6],cable2[2],input2[2],cable3[6]);
Two_One_Mux2 c8(cable2[7],cable2[3],input2[2],cable3[7]);
Two_One_Mux2 c9(cable2[8],cable2[4],input2[2],cable3[8]);
Two_One_Mux2 c10(cable2[9],cable2[5],input2[2],cable3[9]);
Two_One_Mux2 c11(cable2[10],cable2[6],input2[2],cable3[10]);
Two_One_Mux2 c12(cable2[11],cable2[7],input2[2],cable3[11]);
Two_One_Mux2 c13(cable2[12],cable2[8],input2[2],cable3[12]);
Two_One_Mux2 c14(cable2[13],cable2[9],input2[2],cable3[13]);
Two_One_Mux2 c15(cable2[14],cable2[10],input2[2],cable3[14]);
Two_One_Mux2 c16(cable2[15],cable2[11],input2[2],cable3[15]);
Two_One_Mux2 c17(cable2[16],cable2[12],input2[2],cable3[16]);
Two_One_Mux2 c18(cable2[17],cable2[13],input2[2],cable3[17]);
Two_One_Mux2 c19(cable2[18],cable2[14],input2[2],cable3[18]);
Two_One_Mux2 c20(cable2[19],cable2[15],input2[2],cable3[19]);
Two_One_Mux2 c21(cable2[20],cable2[16],input2[2],cable3[20]);
Two_One_Mux2 c22(cable2[21],cable2[17],input2[2],cable3[21]);
Two_One_Mux2 c23(cable2[22],cable2[18],input2[2],cable3[22]);
Two_One_Mux2 c24(cable2[23],cable2[19],input2[2],cable3[23]);
Two_One_Mux2 c25(cable2[24],cable2[20],input2[2],cable3[24]);
Two_One_Mux2 c26(cable2[25],cable2[21],input2[2],cable3[25]);
Two_One_Mux2 c27(cable2[26],cable2[22],input2[2],cable3[26]);
Two_One_Mux2 c28(cable2[27],cable2[23],input2[2],cable3[27]);
Two_One_Mux2 c29(cable2[28],cable2[24],input2[2],cable3[28]);
Two_One_Mux2 c30(cable2[29],cable2[25],input2[2],cable3[29]);
Two_One_Mux2 c31(cable2[30],cable2[26],input2[2],cable3[30]);
Two_One_Mux2 c32(cable2[31],cable2[27],input2[2],cable3[31]);

/////////////////////////////////////////////////////////

Two_One_Mux2 d1(cable3[0],0,input2[3],cable4[0]);
Two_One_Mux2 d2(cable3[1],0,input2[3],cable4[1]);
Two_One_Mux2 d3(cable3[2],0,input2[3],cable4[2]);
Two_One_Mux2 d4(cable3[3],0,input2[3],cable4[3]);
Two_One_Mux2 d5(cable3[4],0,input2[3],cable4[4]);
Two_One_Mux2 d6(cable3[5],0,input2[3],cable4[5]);
Two_One_Mux2 d7(cable3[6],0,input2[3],cable4[6]);
Two_One_Mux2 d8(cable3[7],0,input2[3],cable4[7]);
Two_One_Mux2 d9(cable3[8],cable3[0],input2[3],cable4[8]);
Two_One_Mux2 d10(cable3[9],cable3[1],input2[3],cable4[9]);
Two_One_Mux2 d11(cable3[10],cable3[2],input2[3],cable4[10]);
Two_One_Mux2 d12(cable3[11],cable3[3],input2[3],cable4[11]);
Two_One_Mux2 d13(cable3[12],cable3[4],input2[3],cable4[12]);
Two_One_Mux2 d14(cable3[13],cable3[5],input2[3],cable4[13]);
Two_One_Mux2 d15(cable3[14],cable3[6],input2[3],cable4[14]);
Two_One_Mux2 d16(cable3[15],cable3[7],input2[3],cable4[15]);
Two_One_Mux2 d17(cable3[16],cable3[8],input2[3],cable4[16]);
Two_One_Mux2 d18(cable3[17],cable3[9],input2[3],cable4[17]);
Two_One_Mux2 d19(cable3[18],cable3[10],input2[3],cable4[18]);
Two_One_Mux2 d20(cable3[19],cable3[11],input2[3],cable4[19]);
Two_One_Mux2 d21(cable3[20],cable3[12],input2[3],cable4[20]);
Two_One_Mux2 d22(cable3[21],cable3[13],input2[3],cable4[21]);
Two_One_Mux2 d23(cable3[22],cable3[14],input2[3],cable4[22]);
Two_One_Mux2 d24(cable3[23],cable3[15],input2[3],cable4[23]);
Two_One_Mux2 d25(cable3[24],cable3[16],input2[3],cable4[24]);
Two_One_Mux2 d26(cable3[25],cable3[17],input2[3],cable4[25]);
Two_One_Mux2 d27(cable3[26],cable3[18],input2[3],cable4[26]);
Two_One_Mux2 d28(cable3[27],cable3[19],input2[3],cable4[27]);
Two_One_Mux2 d29(cable3[28],cable3[20],input2[3],cable4[28]);
Two_One_Mux2 d30(cable3[29],cable3[21],input2[3],cable4[29]);
Two_One_Mux2 d31(cable3[30],cable3[22],input2[3],cable4[30]);
Two_One_Mux2 d32(cable3[31],cable3[23],input2[3],cable4[31]);

///////////////////////////////////////////////////////////////

Two_One_Mux2 e1(cable4[0],0,input2[4],Output[0]);
Two_One_Mux2 e2(cable4[1],0,input2[4],Output[1]);
Two_One_Mux2 e3(cable4[2],0,input2[4],Output[2]);
Two_One_Mux2 e4(cable4[3],0,input2[4],Output[3]);
Two_One_Mux2 e5(cable4[4],0,input2[4],Output[4]);
Two_One_Mux2 e6(cable4[5],0,input2[4],Output[5]);
Two_One_Mux2 e7(cable4[6],0,input2[4],Output[6]);
Two_One_Mux2 e8(cable4[7],0,input2[4],Output[7]);
Two_One_Mux2 e9(cable4[8],0,input2[4],Output[8]);
Two_One_Mux2 e10(cable4[9],0,input2[4],Output[9]);
Two_One_Mux2 e11(cable4[10],0,input2[4],Output[10]);
Two_One_Mux2 e12(cable4[11],0,input2[4],Output[11]);
Two_One_Mux2 e13(cable4[12],0,input2[4],Output[12]);
Two_One_Mux2 e14(cable4[13],0,input2[4],Output[13]);
Two_One_Mux2 e15(cable4[14],0,input2[4],Output[14]);
Two_One_Mux2 e16(cable4[15],0,input2[4],Output[15]);
Two_One_Mux2 e17(cable4[16],cable4[0],input2[4],Output[16]);
Two_One_Mux2 e18(cable4[17],cable4[1],input2[4],Output[17]);
Two_One_Mux2 e19(cable4[18],cable4[2],input2[4],Output[18]);
Two_One_Mux2 e20(cable4[19],cable4[3],input2[4],Output[19]);
Two_One_Mux2 e21(cable4[20],cable4[4],input2[4],Output[20]);
Two_One_Mux2 e22(cable4[21],cable4[5],input2[4],Output[21]);
Two_One_Mux2 e23(cable4[22],cable4[6],input2[4],Output[22]);
Two_One_Mux2 e24(cable4[23],cable4[7],input2[4],Output[23]);
Two_One_Mux2 e25(cable4[24],cable4[8],input2[4],Output[24]);
Two_One_Mux2 e26(cable4[25],cable4[9],input2[4],Output[25]);
Two_One_Mux2 e27(cable4[26],cable4[10],input2[4],Output[26]);
Two_One_Mux2 e28(cable4[27],cable4[11],input2[4],Output[27]);
Two_One_Mux2 e29(cable4[28],cable4[12],input2[4],Output[28]);
Two_One_Mux2 e30(cable4[29],cable4[13],input2[4],Output[29]);
Two_One_Mux2 e31(cable4[30],cable4[14],input2[4],Output[30]);
Two_One_Mux2 e32(cable4[31],cable4[15],input2[4],Output[31]);


endmodule
