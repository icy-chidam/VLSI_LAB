`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2024 00:32:27
// Design Name: 
// Module Name: FA_tb
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


module FA_tb;
reg a,b,cin;
wire s,c;
Full_add uut(a,b,cin,s,c);
initial begin
$monitor("Simtime =%g, a=%b,b=%b,cin=%b,s=%b,c=%b",$time,a,b,cin,s,c);
end
initial begin 
#5 a=0; b=0; cin=0;
#5 a=0; b=0; cin=1;
#5 a=0; b=1; cin=0;
#5 a=0; b=1; cin=1;
#5 a=1; b=0; cin=0;
#5 a=1; b=0; cin=1;
#5 a=1; b=1; cin=0;
#5 a=1; b=1; cin=1;
$finish;
end
endmodule
