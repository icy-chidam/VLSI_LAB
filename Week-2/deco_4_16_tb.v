`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.08.2024 11:08:38
// Design Name: 
// Module Name: deco_4_16_tb
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

module decoder_416_tb;
wire[15:0]out;
reg e,x,y,z;

decoder4_16 fin_dec(x,y,z,e,out);

    initial begin
        $monitor("At time %t,x=%b, y=%b,z=%b, e = %b, out = %b", $time,x,y,z,e, out);
        
        e=0;x=0;y=0;z=0;#10;
        e=0;x=0;y=0;z=1;#10;
        e=0;x=0;y=1;z=0;#10;
        e=0;x=0;y=1;z=1;#10;
        e=0;x=1;y=0;z=0;#10;
        e=0;x=1;y=0;z=1;#10;
        e=0;x=1;y=1;z=0;#10;
        e=0;x=1;y=1;z=1;#10;
        
        e=1;x=0;y=0;z=0;#10;
        e=1;x=0;y=0;z=1;#10;
        e=1;x=0;y=1;z=0;#10;
        e=1;x=0;y=1;z=1;#10;
        e=1;x=1;y=0;z=0;#10;
        e=1;x=1;y=0;z=1;#10;
        e=1;x=1;y=1;z=0;#10;
        e=1;x=1;y=1;z=1;#10;
        $stop;
    end
endmodule
