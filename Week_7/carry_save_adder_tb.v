`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2024 08:16:22
// Design Name: 
// Module Name: carry_save_adder_tb
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


module carry_save_adder_tb;
wire [4:0] sum;//output
wire cout;//output
reg [3:0] a,b,c,d;//input
 
 carry_save_adder uut(
.a(a),
.b(b),
.c(c),
 .d(d),
.sum(sum),
.cout(cout));
 
initial begin
$display($time, " << Starting the Simulation >>");
     a=0; b=0; c=0; d=0;
  #100 a= 4'd10; b=4'd0; c=4'd0; d=4'd0;
  #100 a= 4'd10; b=4'd10; c=4'd0; d=4'd0;
  #100 a= 4'd4; b=4'd6; c=4'd12; d=4'd0;
  #100 a= 4'd11; b=4'd2; c=4'd4; d=4'd7;
  #100 a= 4'd20; b=4'd0; c=4'd20; d=4'd0;
  #100 a= 4'd12; b=4'd5; c=4'd10; d=4'd10;
  #100 a= 4'd7; b=4'd6; c=4'd12; d=4'd8;
  #100 a= 4'd15; b=4'd15; c=4'd15; d=4'd15;
 
end
 
initial
  $monitor("A=%d, B=%d, C=%d,D=%d,Sum= %d, Cout=%d",a,b,c,d,sum,cout);
endmodule
