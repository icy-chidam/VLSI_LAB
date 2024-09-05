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

# Post Lab
## Power Report for Carry Save Adder
![PWR_RPT_CSA](https://github.com/user-attachments/assets/50c17935-5f5e-422f-9bbd-da20e6632af3)

## Power Report for Ripple Carry Adder
![PWR_RPT_RCA](https://github.com/user-attachments/assets/0d749a30-a44b-4eaf-acc2-c7daa9361be4)



