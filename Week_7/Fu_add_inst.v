`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2024 09:17:46
// Design Name: 
// Module Name: Fu_add_inst
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


module Fu_add_inst(input a,b,cin, output sum,carry
);
wire c,c1,s;
Ha_Gate uut1(a,b,s,c);
Ha_Gate uut2(cin,s,sum,c1);

assign carry = c|c1;
endmodule
