# Week-8
# Carry Skip Adder
A carry-skip adder (also known as a carry-bypass adder) is an adder implementation that improves on the delay of a ripple-carry adder with little effort compared to other adders.
A carry-skip adder consists of a simple ripple carry-adder with a special speed
up carry chain called a skip chain. This chain defines the distribution of ripple
carry blocks, which compose the skip adder.

![Carry_Skip_Adder](https://github.com/user-attachments/assets/e6086e7b-0fb5-4e17-94cc-97ee6fd21b47)
# Source Code
```verilog
module C_Skip_Adder_555(
input [3:0] a,b,
input cin,
output[3:0]sum,
output cout
);
wire [3:0]p;
wire c0;
wire bp;
RCA_555 uut1 (a[3:0],b[3:0],cin,sum[3:0],co);
Propogate_555 uut2(a,b,p,bp);
Mux_2_1_555 uut3 (c0,cin,bp,cout);
endmodule
```
# Test_bench Code
```verilog
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
```

