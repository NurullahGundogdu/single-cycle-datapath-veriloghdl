module dataMemory(clk, address, writeData, readData, memRead, memWrite);

input clk;
input [31:0] address;
input [31:0] writeData;
output reg [31:0] readData;
input memRead, memWrite;

reg [31:0] memory[1023:0];

always @(posedge clk) begin
	if (memWrite) begin
		memory[address[9:2]] = writeData;		
	end
	
end

always @(*) begin
	
	if (memRead) begin
		 readData = memory[address[9:2]];
	end
	
end

endmodule
