module Two_One_Mux(input1,input2,X,Output);

input input1,input2,X;

output Output;

wire cable1, cable2, cable3;

not Not_gate(cable1,X);
and first_And_gate(cable2,cable1,input1);
and second_And_gate(cable3,X,input2);
or Or_gate(Output,cable2,cable3);

endmodule
