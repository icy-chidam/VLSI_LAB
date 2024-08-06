`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.08.2024 10:28:57
// Design Name: 
// Module Name: mux_4_1
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


module mux_4_1(input [3:0]a,[1:0]s, output reg  out);
always@(a,s)
begin
  case (s)
    2'b00: out = a[0];
    2'b01: out = a[1];
    2'b10: out = a[2];
    2'b11: out = a[3];
  endcase
end
endmodule
