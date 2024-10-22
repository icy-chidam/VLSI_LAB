# Week -10
4-bit Booth Multiplier
``` verilog
module Booth_mul_555(X,Y,Z);
input signed [3:0] X, Y;
output reg signed [7:0] Z; 
reg [1:0] temp;
integer i;
reg E1;
reg [3:0] Y1;
always @ (X, Y)
begin
    Z = 8'd0; E1 = 1'b0; Y1 = -Y; 
for (i = 0; i < 4; i = i + 1)
begin
      temp = {X[i], E1}; 
case (temp)
      2'b10: Z = Z + {Y1, 4'b0000};  
      2'b01: Z = Z + {Y, 4'b0000}; 
default: ;
endcase
 Z = Z >>> 1;  E1 = X[i]; 
end
if (Y == 4'd8)
begin
Z = -Z;end
end
endmodule
```
