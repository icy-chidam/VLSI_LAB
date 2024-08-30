`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 10:19:51
// Design Name: 
// Module Name: Cmos_logic_tb
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


module Cmos_logic_tb;
	// Inputs
	reg a;
	reg b;
	reg c;
	reg d;
	reg e;
	// Outputs
	wire x;
	wire y;
	wire z;
	// Instantiate the Unit Under Test (UUT)
	Cmos_logic uut (.a(a), .b(b), .c(c), .d(d), .e(e), .x(x), .y(y), .z(z));

	initial begin
		// Initialize Inputs
		a = 0;b = 0;c = 0;d = 0;e = 0;
		#100;
		a = 0;b = 1;c = 0;d = 1;e = 1;
		#100;
		a = 1;b = 0;c = 1;d = 0;
		#100;
		a = 1;b = 1;c =1;d = 1;
		#100;
		// Add stimulus here
	end
endmodule
