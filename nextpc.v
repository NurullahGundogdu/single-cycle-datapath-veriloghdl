module nextpc(clk, imm32, branch, pc2, j, targetAddr);

	input clk;
	input [31:0] imm32;
	input branch;
	input j;
	input [25:0] targetAddr;

	reg [31:0] pc = 32'h00000000;
	
	output reg [31:0] pc2;
	
	always @(*) begin
		if (j)
			pc2 = {6'b000000, targetAddr};
		else if (branch)
			pc2 = pc + 4 + imm32 * 4;
		else
			pc2 = pc;
	end
	
	always @(posedge clk) begin
		if (j)
			pc = {6'b000000, targetAddr};
		else if (branch)
			pc = pc + 4 + imm32 * 4;
		else
			pc = pc + 4;
		
	end

endmodule
