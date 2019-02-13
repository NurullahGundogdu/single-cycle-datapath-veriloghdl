module subtractor_OneBit(input1,input2,Cin,sum,Cout);

input input1,input2,Cin;

output Cout,sum;

wire cable1, cable2, cable3,cable4,cable5;


xor Xor_Gate(cable1,input1,input2);
xor second_Xor_Gate(sum,cable1,Cin);
not first_Not_Gate(cable4,cable1);
not second_Not_Gate(cable5,input1);
and and_Gate(cable2,cable4,Cin);
and second_And_Gate(cable3,cable5,input2);
or	Or_Gate(Cout,cable2,cable3);

endmodule
