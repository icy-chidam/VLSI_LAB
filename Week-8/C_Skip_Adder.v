`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2024 14:02:39
// Design Name: 
// Module Name: C_Skip_Adder
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


module C_Skip_Adder_555(
input [3:0] a,b,
input cin,
output[3:0]sum,
output cout
);
wire [3:0]p;
wire c0;
wire bp;
RCA_555 uut1 (a[3:0],b[3:0],cin,sum[3:0],co);
Propogate_555 uut2(a,b,p,bp);
Mux_2_1_555 uut3 (c0,cin,bp,cout);
endmodule
