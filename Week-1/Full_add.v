`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2024 00:28:46
// Design Name: 
// Module Name: Full_add
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


module Full_add(input a,b,cin ,output s,c

    );
    assign s = a^b^cin;
    assign c =(a&b)|(b&cin)|(cin&a);
endmodule
