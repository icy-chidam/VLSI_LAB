`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.08.2024 23:58:31
// Design Name: 
// Module Name: alu_simple
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
/////////////////////////////////////////////////////////////////////////////////module (input a,b,[2:0]s, output y[7:0]);
module alu_simple(a,b,s,y);
input [3:0]a,b;
input[2:0]s;
output reg[7:0]y;
always @(*)
case (s)
 3'b000: y[0] = a&b;
 3'b001: y[1] = a|b;
 3'b010: y[2] = a^b;
 3'b011: y[3] = ~(a&b);
 3'b100: y[4] = ~(a|b);
 3'b101: y[5] = ~(a^b);
 3'b110: y[6] = a + b;
 3'b111: y[7] = a - b; 
endcase
endmodule
