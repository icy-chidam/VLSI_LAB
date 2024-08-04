`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 30.07.2024 10:02:48
// Design Name: 
// Module Name: RCA_FA
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


module RCA_FA(a,b,cin,s,cout  
    );
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire c1,c2,c3;
Fu_add_inst fa0 (a[0],b[0],cin,s[0],c1);
Fu_add_inst fa1 (a[1],b[1],c1,s[1],c2);
Fu_add_inst fa2 (a[2],b[2],c2,s[2],c3);
Fu_add_inst fa3 (a[3],b[3],c3,s[3],cout);

endmodule
