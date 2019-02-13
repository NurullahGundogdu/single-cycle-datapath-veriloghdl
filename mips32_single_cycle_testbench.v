module mips32_single_cycle_testbench ();

	wire [31:0] instruction_set;
	wire [31:0] result;
	wire [31:0] pc;
	reg clk,clk2;
	reg [7:0] index;
	reg [31:0] testVectors [0:13];

	 mips32_single_cycle iO(result,clk,instruction_set,pc);

	always 
	begin 
		#5 clk = ~clk;
	end
	
	always 
	begin 
		#15 clk2 = ~clk2;
	end
	
	initial 
	begin
		clk = 0; 
		clk2 = 0;
		
		//$readmemb("test_input2.tv", testVectors);
		
		index = -1;

	end 
	
		
	always @(negedge clk)
	begin
		$display("PC = %d\n", pc);
		$display("opcode = %b, rs = %b, rt = %b, rd = %b, shamt = %b, function = %b"
			,instruction_set[31:26],instruction_set[25:21],instruction_set[20:16],instruction_set[15:11],instruction_set[10:6],instruction_set[5:0]);

		$display("result = %b  ",result);

		index <= index+1;
	
		if(index == 8'd13)
		begin 
			$writememb(".\\regLast.mem", iO.m_Reg.registers);
			$display("%d tests completed. \n",index+1);
			$finish;
		end
		
	end

endmodule
