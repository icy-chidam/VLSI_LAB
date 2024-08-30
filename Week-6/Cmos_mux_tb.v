`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.08.2024 10:32:46
// Design Name: 
// Module Name: Cmos_mux_tb
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


module Cmos_mux_tb;
reg s,i0,i1;
wire out;
Cmos_Mux uut(.s(s),.i0(i0),.i1(i0),.out(out));
initial begin
#100;
s=1'b0; i0=0; i1=0; #100;
s=1'b0; i0=0; i1=1; #100;
s=1'b0; i0=1; i1=0; #100;
s=1'b0; i0=1; i1=1; #100;

s=1; i0=0; i1=0; #100;
s=1; i0=0; i1=1; #100;
s=1; i0=1; i1=0; #100;
s=1; i0=1; i1=1; #100;
end
endmodule
