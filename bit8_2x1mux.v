module bit8_2x1mux(R1,R2,R3,R4,R5,R6,R7,R8,S,Output);


input [31:0] R1,R2,R3,R4,R5,R6,R7,R8;
input[2:0] S;

output [31:0] Output;

wire [31:0] ww1,ww2,ww3,ww4,ww5,ww6;

bit32_2x1mux mux1(R1,R2,S[0],ww1);
bit32_2x1mux mux2(R3,R4,S[0],ww2);
bit32_2x1mux mux3(R5,R6,S[0],ww3);
bit32_2x1mux mux4(R7,R8,S[0],ww4);

bit32_2x1mux mux5(ww1,ww2,S[1],ww5);
bit32_2x1mux mux6(ww3,ww4,S[1],ww6);

bit32_2x1mux mux7(ww5,ww6,S[2],Output);

endmodule


