`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 08:50:13
// Design Name: 
// Module Name: Brawn_mul_555_tb
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


module Braun_mul_555_tb;
	reg [3:0] a;
	reg [3:0] b;
	wire [7:0] p;
	braun_mul_555 uut (
		.p(p),.a(a),.b(b));
	initial begin
		a = 4'b1001;
		b = 4'b0011;
		#100;
		a = 4'b1000;
		b = 4'b1101;
		#100;
		a = 4'b1110;
		b = 4'b1001;
		#100;
		a = 4'b0010;
		b = 4'b0100;
		#100;
		a = 4'b1111;
		b = 4'b1111;
		#100;
	end    
endmodule
