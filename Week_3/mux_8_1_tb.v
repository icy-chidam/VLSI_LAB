`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 10:54:02
// Design Name: 
// Module Name: mux_8_1_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module mux_8_1_tb_v;

	// Inputs
	reg [7:0] i;
	reg [2:0]s;

	// Outputs
	wire y;

	// Instantiate the Unit Under Test (UUT)
	mux_8_1 uut (
		.i(i), 
		.s(s), 
		.y(y)
	);

	initial begin
		// Initialize Inputs
		i = 8'b00000001;
		s = 3'b000;
		#100;
		
		i = 8'b00000010;
		s = 3'b001;
		#100;
		
		i = 8'b00000100;
		s = 3'b010;
		#100;
		
		i = 8'b00001000;
		s = 3'b011;
		#100;
		
		i = 8'b00010000;
		s = 3'b100;
		#100;
		
		i = 8'b00100000;
		s = 3'b101;
		#100;
		
		i = 8'b0100000;
		s = 3'b110;
		#100;
		
		i = 8'b10000000;
		s = 3'b111;
		#100;
        
		// Add stimulus here

	end  
endmodule


