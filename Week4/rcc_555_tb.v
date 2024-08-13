`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:20:49 08/13/2024
// Design Name:   rcc_555
// Module Name:   rcc_555_tb.v
// Project Name:  RA555
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rcc_555
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rcc_555_tb_v;

	// Inputs
	reg clk;
	reg t;
	reg rstn;

	// Outputs
	wire [3:0] q;

	// Instantiate the Unit Under Test (UUT)
	rcc_555 uut (
		.clk(clk), 
		.t(t), 
		.rstn(rstn), 
		.q(q)
	);
	
	initial begin
		// Initialize Inputs
		 		clk =0;
		t = 0;
		rstn = 1;
		#50;

		rstn=0;
		t=0;
		#50;

		t=1;
		rstn=0;
		#50;

	

	end
       always #25 clk=~clk;
endmodule

