module adder_OneBit(input1,input2,Cin,sum,Cout);

input input1,input2,Cin;

output Cout,sum;

wire cable1, cable2, cable3;


xor Xor_Gate(cable1,input1,input2);
xor second_Xor_Gate(sum,cable1,Cin);
and and_Gate(cable2,cable1,Cin);
and second_And_Gate(cable3,input1,input2);
or	Or_Gate(Cout,cable2,cable3);

endmodule
