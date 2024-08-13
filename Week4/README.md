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



