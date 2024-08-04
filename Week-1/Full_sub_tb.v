`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2024 00:07:43
// Design Name: 
// Module Name: Full_sub_tb
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


module Full_sub_tb;
reg a,b,bin;
wire d,bout;
Full_Sub fsb (a,b,bin,d,bout);
initial
begin
$monitor("Simtime = %g,a=%b,b=%b,bin=%b,difference=%b,borrow=%b",$time,a,b,bin,d,bout);
end

initial begin
#5 a=0; b=0; bin=0;
#5 a=0; b=0; bin=1;
#5 a=0; b=1; bin=0;
#5 a=0; b=1; bin=1;
#5 a=1; b=0; bin=0;
#5 a=1; b=0; bin=1;
#5 a=1; b=1; bin=0;
#5 a=1; b=1; bin=1;
$finish;
end
endmodule
