module instructionMemory(clk, readAddress, instruction);

input clk;
input [31:0] readAddress;
output reg [31:0] instruction;

reg [31:0] memory[5:0];

initial 
begin
	$readmemb("test_input3.txt", memory);
end

always @(posedge clk) begin
	instruction = memory[readAddress[9:2]];
end

endmodule
