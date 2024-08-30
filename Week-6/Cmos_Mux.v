`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 10:22:17
// Design Name: 
// Module Name: Cmos_Mux
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


module Cmos_Mux(input s,i0,i1, output out);
wire sbar;
not(sbar,s);
cmos c1(out,i0,sbar,s);
cmos c2(out,i1,s,sbar);
endmodule
