`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2024 11:15:38
// Design Name: 
// Module Name: decoder4_16
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

module decoder3_8 (
    input x,y,z,
    input e,
    output[7:0] out
);
assign out[0]= ~e & (~x) &(~y) &(~z);
assign out[1]= ~e & (~x) &(~y) &(z);
assign out[2]= ~e & (~x) &(y) &(~z);
assign out[3]= ~e & (~x) &(y) &(z);
assign out[4]= ~e & (x) &(~y) &(~z);
assign out[5]= ~e & (x) &(~y) &(z);
assign out[6]= ~e & (x) &(y) &(~z);
assign out[7]= ~e & (x) &(y) &(z);
endmodule
