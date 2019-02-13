module subtractor_thirtyTwo(input1,input2,Cin,sum,c);

input [31:0] input1,input2;
input Cin;

output [31:0] sum;
output c;
wire Cout,Cout1,Cout2,Cout3,Cout4,Cout5,Cout6,Cout7,Cout8,Cout9,Cout10,Cout11,Cout12,Cout13,Cout14,Cout15;
wire Cout16,Cout17,Cout18,Cout19,Cout20,Cout21,Cout22,Cout23,Cout24,Cout25,Cout26,Cout27,Cout28,Cout29,Cout30;

subtractor_OneBit gate1(input1[0],input2[0],Cin,sum[0],Cout);
subtractor_OneBit gate2(input1[1],input2[1],Cout,sum[1],Cout1);
subtractor_OneBit gate3(input1[2],input2[2],Cout1,sum[2],Cout2);
subtractor_OneBit gate4(input1[3],input2[3],Cout2,sum[3],Cout3);
subtractor_OneBit gate5(input1[4],input2[4],Cout3,sum[4],Cout4);
subtractor_OneBit gate6(input1[5],input2[5],Cout4,sum[5],Cout5);
subtractor_OneBit gate7(input1[6],input2[6],Cout5,sum[6],Cout6);
subtractor_OneBit gate8(input1[7],input2[7],Cout6,sum[7],Cout7);
subtractor_OneBit gate9(input1[8],input2[8],Cout7,sum[8],Cout8);
subtractor_OneBit gate10(input1[9],input2[9],Cout8,sum[9],Cout9);
subtractor_OneBit gate11(input1[10],input2[10],Cout9,sum[10],Cout10);
subtractor_OneBit gate12(input1[11],input2[11],Cout10,sum[11],Cout11);
subtractor_OneBit gate13(input1[12],input2[12],Cout11,sum[12],Cout12);
subtractor_OneBit gate14(input1[13],input2[13],Cout12,sum[13],Cout13);
subtractor_OneBit gate15(input1[14],input2[14],Cout13,sum[14],Cout14);
subtractor_OneBit gate16(input1[15],input2[15],Cout14,sum[15],Cout15);
subtractor_OneBit gate17(input1[16],input2[16],Cout15,sum[16],Cout16);
subtractor_OneBit gate18(input1[17],input2[17],Cout16,sum[17],Cout17);
subtractor_OneBit gate19(input1[18],input2[18],Cout17,sum[18],Cout18);
subtractor_OneBit gate20(input1[19],input2[19],Cout18,sum[19],Cout19);
subtractor_OneBit gate21(input1[20],input2[20],Cout19,sum[20],Cout20);
subtractor_OneBit gate22(input1[21],input2[21],Cout20,sum[21],Cout21);
subtractor_OneBit gate23(input1[22],input2[22],Cout21,sum[22],Cout22);
subtractor_OneBit gate24(input1[23],input2[23],Cout22,sum[23],Cout23);
subtractor_OneBit gate25(input1[24],input2[24],Cout23,sum[24],Cout24);
subtractor_OneBit gate26(input1[25],input2[25],Cout24,sum[25],Cout25);
subtractor_OneBit gate27(input1[26],input2[26],Cout25,sum[26],Cout26);
subtractor_OneBit gate28(input1[27],input2[27],Cout26,sum[27],Cout27);
subtractor_OneBit gate29(input1[28],input2[28],Cout27,sum[28],Cout28);
subtractor_OneBit gate30(input1[29],input2[29],Cout28,sum[29],Cout29);
subtractor_OneBit gate31(input1[30],input2[30],Cout29,sum[30],Cout30);
subtractor_OneBit gate32(input1[31],input2[31],Cout30,sum[31],c);


endmodule
