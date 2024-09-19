`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2024 14:05:40
// Design Name: 
// Module Name: Propogate_555
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


module Propogate_555(a,b,p,bp);
    input [3:0] a,b;
    output [3:0] p;
    output bp;
        assign p = a^b;
        assign bp = &p;
endmodule
