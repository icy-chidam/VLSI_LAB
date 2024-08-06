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
