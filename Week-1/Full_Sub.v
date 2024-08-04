`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.07.2024 23:58:01
// Design Name: 
// Module Name: Full_Sub
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


module Full_Sub(
input a,b,bin, output d,bout
    );
    assign d =a^b^bin;
    assign bout = (~a&b)| (~(a^b) &bin);
endmodule
