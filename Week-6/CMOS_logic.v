`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.08.2024 22:53:05
// Design Name: 
// Module Name: CMOS_logic
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


module CMOS_logic(
input a,b,c,d,e,
output x,y,z);
wire w1,w2;

supply1 pwr;
supply0 gnd;
// NOT gate
pmos p1(z,pwr,e);// (drain,source,gate)
nmos n1(z,gnd,e);// (source,drain,gate)
//  NAND gate
pmos p2(x,pwr,a);
pmos p3(x,pwr,b);
nmos n2(x,w1,a);
nmos n3(w1,gnd,b);
// NOR gate
pmos p4(w2,pwr,d);
pmos p5(y,w2,c);
nmos n4(y,gnd,c);
nmos n5(y,gnd,d);
endmodule
