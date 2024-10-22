# Week - 9
 4-bit Braun Array Multiplier 
``` verilog
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
```
## Post-Lab
 4-bit Wallace tree multiplier
``` verilog
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
```
