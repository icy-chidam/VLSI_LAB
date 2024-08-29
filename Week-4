# Week4
## T-Flip_Flop
T flip flop or to be precise is known as Toggle Flip Flop because it can able to toggle its output depending upon on the input.
T here stands for Toggle. Toggle basically indicates that the bit will be flipped i.e., either from 1 to 0 or from 0 to 1.
Here, a clock pulse is supplied to operate this flop, hence it is a clocked flip-flop.

![image](https://github.com/user-attachments/assets/e3a5cfdf-ed9d-42c3-8ab1-1e220b6cd315)
## Truth Table
![image](https://github.com/user-attachments/assets/81e09592-887c-4963-aa3d-d756853a7d71)

T-Flip Flop
```verilog
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
```

Ripple Carry Counter
```verilog
module rcc_555(clk,t,rstn,q
    );
input clk,t,rstn;
output [3:0]q;

 tff_555 f1(clk,1'b1,rstn,q[0]);
 tff_555 f2(q[0],1'b1,rstn,q[1]);
 tff_555 f3(q[1],1'b1,rstn,q[2]);
 tff_555 f4(q[2],1'b1,rstn,q[3]);
endmodule
```
## Post_Lab
Mod_10 Counter
```verilog
module mod_10(
input clk,rst,enable,
output reg [3:0]counter_output
);

always@ (posedge clk)
begin 
if( rst | counter_output==4'b1001)
counter_output <= 4'b0000;
else if(enable)
counter_output <= counter_output + 1;
else
counter_output <= 0;
end
endmodule
```

Test_bench for Mod_10
```verilog
module mod_10_tb;
// Inputs
reg clk;
reg rst;
reg enable;
// Outputs
wire [3:0] counter_output;

// Instantiate the Unit Under Test (UUT)
mod_10 uut (
.clk(clk),
.rst(rst),
.enable(enable),
.counter_output(counter_output)
);
always
#50 clk= ~ clk;

initial begin
clk=0;
// Initialize Inputs
rst = 0;
enable = 0;
#100;
rst=0;
enable=1;
#100;
rst=0;
enable=1;

// Wait 100 ns for global reset to finish
#100;
end
endmodule
```


