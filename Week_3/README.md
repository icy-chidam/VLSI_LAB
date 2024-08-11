# Week3

![image](https://github.com/user-attachments/assets/4c4889d5-31e6-4461-a36d-6b9e6a680948)

2*1 Mux
```verilog
module Mux_2_1_555(input a,b,s,output out

    );
assign out =s?b:a;
endmodule
```
4*1_Mux
```verilog
module mux_4_1(input [3:0]a,[1:0]s, output reg  out);
always@(a,s)
begin
  case (s)
    2'b00: out = a[0];
    2'b01: out = a[1];
    2'b10: out = a[2];
    2'b11: out = a[3];
  endcase
end
endmodule

```
8*1 Mux
```verilog
module mux_8_1(input [7:0]i, [2:0]s, output y
    );
wire c1,c2;
mux_4_1 mu_1 (i[7:4],s[1:0],c1);
mux_4_1 mu_2 (i[3:0],s[1:0],c2);
Mux_2_1_555 mu_3 (c1,c2,s[2],y);
endmodule
```
Refer _tb in source code files.


# Post Lab
Simple Alu
``` verilog
module alu_simple(a,b,s,y);
input [3:0]a,b;
input[2:0]s;
output reg[7:0]y;
always @(*)
case (s)
 3'b000: y[0] = a&b;
 3'b001: y[1] = a|b;
 3'b010: y[2] = a^b;
 3'b011: y[3] = ~(a&b);
 3'b100: y[4] = ~(a|b);
 3'b101: y[5] = ~(a^b);
 3'b110: y[6] = a + b;
 3'b111: y[7] = a - b; 
endcase
endmodule
```
This ALU consists of basic operations like

**Select lines** | **Operations** |
:---------------:|:--------------:|
`000`            | Bitwise AND
`001`            | Bitwise OR
`010`            | Bitwise EXOR
`011`            | Bitwise NAND
`100`            | Bitwise NOR
`101`            | Bitwise XNOR
`110`            | Arithmetic Add
`111`            | Arithmetic Sub

Output Waveform

![waveform](https://github.com/user-attachments/assets/52285564-e4c6-4591-98ba-c719c86fee53)

Refer test_bench file in source codes.
