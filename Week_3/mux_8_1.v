`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 10:41:14
// Design Name: 
// Module Name: mux_8_1
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


module mux_8_1(input [7:0]i, [2:0]s, output y

    );
wire c1,c2;
mux_4_1 mu_1 (i[7:4],s[1:0],c1);
mux_4_1 mu_2 (i[3:0],s[1:0],c2);
Mux_2_1_555 mu_3 (c1,c2,s[2],y);
endmodule
