`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2024 11:17:58
// Design Name: 
// Module Name: RCA_Save
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


module carry_save_adder(a,b,c,d, sum,cout);
  input [3:0] a, b,c,d;
output [4:0] sum;
output cout;
 
wire [3:0] s0,s1;
wire [3:0] c0, c1;
Fu_add_inst fa0( .a(a[0]), .b(b[0]), .cin(c[0]), .sum(s0[0]), .carry(c0[0]));
Fu_add_inst fa1( .a(a[1]), .b(b[1]), .cin(c[1]), .sum(s0[1]), .carry(c0[1]));
Fu_add_inst fa2( .a(a[2]), .b(b[2]), .cin(c[2]), .sum(s0[2]), .carry(c0[2]));
Fu_add_inst fa3( .a(a[3]), .b(b[3]), .cin(c[3]), .sum(s0[3]), .carry(c0[3]));

//2nd Stage
Fu_add_inst fa4( .a(d[0]), .b(s0[0]), .cin(1'b0), .sum(sum[0]), .carry(c1[0]));
Fu_add_inst fa5( .a(d[1]), .b(s0[1]), .cin(c0[0]), .sum(s1[0]), .carry(c1[1]));
Fu_add_inst fa6( .a(d[2]), .b(s0[2]), .cin(c0[1]), .sum(s1[1]), .carry(c1[2]));
Fu_add_inst fa7( .a(d[3]), .b(s0[3]), .cin(c0[2]), .sum(s1[2]), .carry(c1[3]));


RCA_FA rca1 (.a(c1[3:0]),.b({c0[3],s1[2:0]}), .cin(1'b0),.sum(sum[4:1]), .cout(cout));

endmodule
