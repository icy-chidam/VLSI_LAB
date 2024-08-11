`timescale 1ns / 1ps


module alu_tb_v;
	reg [3:0] a;
	reg [3:0] b;
	reg [2:0] s;
	wire [7:0] y;
	alu_simple uut (
		.a(a), 
		.b(b),
		.s(s),  
		.y(y)
	);
	initial begin
		// Initialize Inputs
		s= 3'b000; a = 4'b0000;b = 4'b0000;#10;
		
		s= 3'b001; a = 4'b0100;b = 4'b0100;#10;
		
		s= 3'b010; a = 4'b1000;b = 4'b0001;#10;
		
		s= 3'b011;a = 4'b1100;b = 4'b0011;#10;
		
		s= 3'b100;a = 4'b1100;b = 4'b1100;#10;		
		s= 3'b101;a = 4'b1010;b = 4'b1100;#10;
		s= 3'b110;a = 4'b0110;b = 4'b1001;#10;
		s= 3'b111;a = 4'b0111;b = 4'b1101;#10;
        $finish;
	end      
endmodule
