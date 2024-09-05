`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02.08.2024 10:59:09
// Design Name: 
// Module Name: Rca_tb
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


module RCA_FA_tb;
    reg [3:0] a;
    reg [3:0] b;
    reg cin;

    // Outputs
    wire [3:0] s;
    wire cout;

    // Instantiate the Unit Under Test (UUT)
    RCA_FA uut (
        .a(a), 
        .b(b), 
        .cin(cin), 
        .s(s), 
        .cout(cout)
    );

    // Test stimulus
    initial begin
        // Monitor changes to inputs and outputs
        $monitor("Time=%0t a=%b b=%b cin=%b | s=%b cout=%b", 
                  $time, a, b, cin, s, cout);
        a = 4'b0000; b = 4'b0000; cin = 0;
        #10; 
        a = 4'b0001; b = 4'b0001; cin = 0;
        #10;
        a = 4'b0011; b = 4'b0101; cin = 0;
        #10;
        a = 4'b1111; b = 4'b0001; cin = 1;
        #10;
        a = 4'b1010; b = 4'b0101; cin = 1;
        #10;
        a = 4'b1100; b = 4'b1100; cin=1;
         #10;
        a = 4'b1001; b = 4'b0110; cin = 1;
        #10;
        $stop;
    end

endmodule
