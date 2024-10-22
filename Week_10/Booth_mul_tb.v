`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.09.2024 11:29:27
// Design Name: 
// Module Name: Booth_mul_tb
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


module Booth_mul_tb;
	reg [3:0] X;
	reg [3:0] Y;
	wire [7:0] Z;
	Booth_mul_555 uut (
		.Z(Z), 
		.X(X), 
		.Y(Y)
	);

	initial begin
		X = 0;
		Y = 0;
		#100; X = 4'b1011; Y = 4'b1100;
		#100; X = -4'b1010; Y = 4'b0011;
		#100; X = 4'b0110; Y = -4'b1101;
		#100; X = 4'b1100; Y = -4'b0101;
	end
      
endmodule
