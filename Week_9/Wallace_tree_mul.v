`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 13:09:47
// Design Name: 
// Module Name: Wallace_tree_mul
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
module wallace_555(prod,a,b);
input [3:0] a,b;
output [7:0] prod;
wire s0,s1,s2,s3,s4,s5,s6,
s7,s8,s9,s10,s11,c0,
c1,c2,c3,c4,c5,c6,c7,
c8,c9,c10,c11;
reg p [3:0] [3:0];
integer i,j;
always @ (a or b)begin
for (i=0; i<=3; i=i+1)
for (j=0; j<=3; j=j+1)
p[j][i] <= a[j] & b[i];end
Ha_new_555 h1(s0,c0,p[0][1], p[1][0]);
fullADD_new f1(s1,c1,p[0][2], p[1][1], p[2][0]);
fullADD_new f2(s2,c2,p[0][3], p[1][2], p[2][1]);
fullADD_new f3(s3,c3,p[1][3], p[2][2], 1'b0);
fullADD_new f4(s4,c4,s1,c0,1'b0);
fullADD_new f5(s5,c5,s2,c1, p[3][0]);
fullADD_new f6(s6,c6,s3,c2, p[3][1]);
fullADD_new f7(s7,c7,p[2][3],c3,p[3][2]);
fullADD_new f8(s8,c8,s5,c4,1'b0);
fullADD_new f9(s9,c9,s6,c8,c5);
fullADD_new f10(s10,c10,s7,c6,c9);
fullADD_new f11(s11,c11,p[3][3],c7,c10);
assign prod[0] = p[0][0];
assign prod[1] = s0;
assign prod[2] = s4;
assign prod[3] = s8;
assign prod[4] = s9;
assign prod[5] = s10;
assign prod[6] = s11;
assign prod[7] = c11;
endmodule

