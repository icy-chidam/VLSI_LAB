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


module RCA_555(a,b,cin,sum,cout  
    );
input [3:0]a,b;
input cin;
output [3:0]sum;
output cout;
wire c1,c2,c3;
Fu_add_555 fa0 (a[0],b[0],cin,sum[0],c1);
Fu_add_555 fa1 (a[1],b[1],c1,sum[1],c2);
Fu_add_555 fa2 (a[2],b[2],c2,sum[2],c3);
Fu_add_555 fa3 (a[3],b[3],c3,sum[3],cout);
endmodule
