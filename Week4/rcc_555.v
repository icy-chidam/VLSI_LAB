`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    11:12:49 08/13/24
// Design Name:    
// Module Name:    rcc_555
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rcc_555(clk,t,rstn,q

    );
input clk,t,rstn;
output [3:0]q;

 tff_555 f1(clk,1'b1,rstn,q[0]);
 tff_555 f2(q[0],1'b1,rstn,q[1]);
 tff_555 f3(q[1],1'b1,rstn,q[2]);
 tff_555 f4(q[2],1'b1,rstn,q[3]);
endmodule
