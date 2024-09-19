`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.09.2024 14:08:31
// Design Name: 
// Module Name: C_Skip_Adder_tb
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

module C_Skip_Adder_tb_555;
        reg [3:0] a;
        reg [3:0] b;
        reg cin;
        wire [3:0] sum;
        wire cout;
        C_Skip_Adder_555 uut (
                .a(a),
                .b(b),
                .cin(cin),
                .sum(sum),
                .cout(cout)
        );
        initial begin
                a = 4'b0001;b = 4'b0001; cin = 0;#100;
                a = 4'b0111;b = 4'b0001;cin = 0;#100;
                a = 4'b0101; b = 4'b0101;cin = 0;#100;
                a = 4'b1111;b = 4'b1111;cin = 0;#100;
                a = 4'b1100;b = 4'b1101;cin = 0;#100;
        end
        endmodule
