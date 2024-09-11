# Week-7
I have implemented 4 bit carry save adder in Verilog with 3 inputs A, B, C of 4-bits and one Carry Input D of 4bits. The following diagram shows the block level implementation of carry save adder
![Carry Save adder](https://github.com/user-attachments/assets/c68954bb-fad6-4f68-8b58-46ee2a0fb688)

I have used the instantiation of my previous project RCA [here](https://github.com/icy-chidam/VLSI_LAB/blob/main/Week-2/RCA_FA.v) & Full_Adder [here](https://github.com/icy-chidam/VLSI_LAB/blob/main/Week-2/Fu_add_inst.v)
## Code Snippet
``` verilog
module carry_save_adder(a,b,c,d, sum,cout);
  input [3:0] a, b,c,d;
output [4:0] sum;
output cout;
 
wire [3:0] s0,s1;
wire [3:0] c0, c1;
//1st Stage
Fu_add_inst fa0( .a(a[0]), .b(b[0]), .cin(c[0]), .sum(s0[0]), .carry(c0[0]));
Fu_add_inst fa1( .a(a[1]), .b(b[1]), .cin(c[1]), .sum(s0[1]), .carry(c0[1]));
Fu_add_inst fa2( .a(a[2]), .b(b[2]), .cin(c[2]), .sum(s0[2]), .carry(c0[2]));
Fu_add_inst fa3( .a(a[3]), .b(b[3]), .cin(c[3]), .sum(s0[3]), .carry(c0[3]));

//2nd Stage
Fu_add_inst fa4( .a(d[0]), .b(s0[0]), .cin(1'b0), .sum(sum[0]), .carry(c1[0]));
Fu_add_inst fa5( .a(d[1]), .b(s0[1]), .cin(c0[0]), .sum(s1[0]), .carry(c1[1]));
Fu_add_inst fa6( .a(d[2]), .b(s0[2]), .cin(c0[1]), .sum(s1[1]), .carry(c1[2]));
Fu_add_inst fa7( .a(d[3]), .b(s0[3]), .cin(c0[2]), .sum(s1[2]), .carry(c1[3]));

//RCA Block
RCA_FA rca1 (.a(c1[3:0]),.b({c0[3],s1[2:0]}), .cin(1'b0),.sum(sum[4:1]), .cout(cout));
endmodule
```

# Test_Bench
``` verilog
module carry_save_adder_tb;
wire [4:0] sum;//output
wire cout;//output
reg [3:0] a,b,c,d;//input
 carry_save_adder uut(
.a(a),
.b(b),
.c(c),
 .d(d),
.sum(sum),
.cout(cout));
 
initial begin
$display($time, " << Starting the Simulation >>");
     a=0; b=0; c=0; d=0;
  #100 a= 4'd10; b=4'd0; c=4'd0; d=4'd0;
  #100 a= 4'd10; b=4'd10; c=4'd0; d=4'd0;
  #100 a= 4'd4; b=4'd6; c=4'd12; d=4'd0;
  #100 a= 4'd11; b=4'd2; c=4'd4; d=4'd7;
  #100 a= 4'd20; b=4'd0; c=4'd20; d=4'd0;
  #100 a= 4'd12; b=4'd5; c=4'd10; d=4'd10;
  #100 a= 4'd7; b=4'd6; c=4'd12; d=4'd8;
  #100 a= 4'd15; b=4'd15; c=4'd15; d=4'd15;
 
end
 
initial
  $monitor("A=%d, B=%d, C=%d,D=%d,Sum= %d, Cout=%d",a,b,c,d,sum,cout);
endmodule
```


# Post Lab
## POWER Report for Ripple Carry Adder
![PWR_RPT_RCA](https://github.com/user-attachments/assets/df8dd6f6-7aa6-41dd-8f99-fcc76ee25863)
## AREA Report for Ripple Carry Adder
![AREA_RPT_RCA](https://github.com/user-attachments/assets/0ab65cb1-8ed5-43db-89a2-00f9993c909b)

## POWER Report for Carry Look Ahead Adder
![image](https://github.com/user-attachments/assets/9b02aab5-f014-460a-b77e-e75c9dfa4d2b)
## AREA Report for Ripple Carry Adder
![image](https://github.com/user-attachments/assets/f6054dd2-0eeb-44ec-94b0-7f3a8af3c8ed)







