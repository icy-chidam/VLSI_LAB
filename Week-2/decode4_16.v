`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 26.07.2024 11:39:13
// Design Name: 
// Module Name: decode4_16
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


module decoder4_16 (
    input x,y,z,   // 4-bit input
    input e,         // Enable input
    output [15:0] out // 16-bit output
);
decoder3_8 dec1(x,y,z,e,out[7:0]);
decoder3_8 dec2(x,y,z,~e,out[15:8]);
endmodule