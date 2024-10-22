`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2024 22:35:11
// Design Name: 
// Module Name: wallace_tb
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


module wallace_tb;
reg [3:0] a;
reg [3:0] b;
wire [7:0] prod;
wallace_555 uut (
.prod(prod),.a(a),.b(b));
initial begin
a = 0;b = 0;#100;
a = 4'b1100;b = 4'b1110;#100;
a = 4'b1001;b = 4'b1010;#100;
a = 4'b1101;b = 4'b1111;#100;
a = 4'b0101;b = 4'b0111;#100;
a = 4'b1001;b = 4'b1000;#100;
a = 4'b1000;b = 4'b1011;
end
endmodule
