`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    10:51:13 08/13/24
// Design Name:    
// Module Name:    tff_555
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
module tff_555(clk,t,rstn,q
);
input clk,t,rstn;
output reg q;
always@(negedge clk or posedge rstn)begin
if(rstn)
q<=0;
else begin
if(t==0)
q<=q;
else
q<=~q;
end
end
endmodule