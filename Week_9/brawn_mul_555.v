`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 23.09.2024 08:45:11
// Design Name: 
// Module Name: brawn_mul_555
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


module braun_mul_555(p,a,b);
input [3:0] a,b;output [7:0] p;
wire w0,w1,w2,w3,w4,w5,w6,w7,w8,w9,w10,
w11,w12,w13,w14,w15,w16,w17,w18,w19,w20,
w21,w22,w23,w24,w25,w26,w27,w28,w29,w30,w31;
and g0 (w0, a[3], b[0]);
and g1 (w1, a[2], b[0]);
and g2 (w2, a[1], b[0]);
and g3 (p[0], a[0], b[0]);
and g4 (w3, a[3], b[1]);
and g5 (w4, a[2], b[1]);
and g6 (w5, a[1], b[1]);
and g7 (w6, a[0], b[1]);
and g8 (w7, a[3], b[2]);
and g9 (w8, a[2], b[2]);
and g10 (w9, a[1], b[2]);
and g11 (w10, a[0], b[2]);
and g12 (w11, a[3], b[3]);
and g13 (w12, a[2], b[3]);
and g14 (w13, a[1], b[3]);
and g15 (w14, a[0], b[3]);
fullADD_new f0 (p[1], w15, w6,  w2,  1'b0);
fullADD_new f1 (w16,  w17, w5,  w1,  1'b0);
fullADD_new f2 (w18,  w19, w4,  w0,  1'b0);
fullADD_new f3 (p[2], w20, w15, w10, w16);
fullADD_new f4 (w21,  w22, w9,  w17, w18);
fullADD_new f5 (w23,  w24, w8,  w3,  w19);
fullADD_new f6 (p[3], w25, w14, w20, w21);
fullADD_new f7 (w26,  w27, w13, w22, w23);
fullADD_new f8 (w28,  w29, w12, w7,  w24);
fullADD_new f9 (p[4], w30, w25, w26, 1'b0);
fullADD_new f10 (p[5],w31, w27, w30, w28);
fullADD_new f11 (p[6],p[7], w11,w31, w29);
endmodule
