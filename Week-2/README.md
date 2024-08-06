# WEEK 2
#4 BIT RIPPLE CARRY ADDER
## Top down design methodology for ripple carry adder
![TOP_LEVEL](https://github.com/user-attachments/assets/3c93dcf7-a13f-4e29-9d17-75b538dcb9a5)


![image](https://github.com/user-attachments/assets/c0b3012d-2f4b-4646-ab5d-583fd6d9220f)


In Mathematics, any two 4-bit binary numbers A3A2A1A0 and B3B2B1B0 are added as shown below
![image](https://github.com/user-attachments/assets/c3a65d3b-7d77-48af-a9a5-1ddcd4ef6dfd)

Half_Adder
```verilog
module Ha_Gate(input a,b,output s,c

    );
    xor(s,a,b);
    and(c,a,b);
endmodule

`````

Full_Adder
```verilog
module Fu_add_inst(input a,b,cin, output sum,carry
);
wire c,c1,s;
Ha_Gate utt(a,b,s,c);
Ha_Gate uut(cin,s,sum,c1);

assign carry = c|c1;
endmodule
```
Final Ripple Carry Adder
```verilog
module RCA_FA(a,b,cin,s,cout  
    );
input [3:0]a,b;
input cin;
output [3:0]s;
output cout;
wire c1,c2,c3;
Fu_add_inst fa0 (a[0],b[0],cin,s[0],c1);
Fu_add_inst fa1 (a[1],b[1],c1,s[1],c2);
Fu_add_inst fa2 (a[2],b[2],c2,s[2],c3);
Fu_add_inst fa3 (a[3],b[3],c3,s[3],cout);

endmodule
```

# Post-Lab

I have used 3:8 decoder and instantiated to 4:16 decoder
3:8 decoder

```verilog
module decoder3_8 (
    input x,y,z,
    input e,
    output[7:0] out
);
assign out[0]= ~e & (~x) &(~y) &(~z);
assign out[1]= ~e & (~x) &(~y) &(z);
assign out[2]= ~e & (~x) &(y) &(~z);
assign out[3]= ~e & (~x) &(y) &(z);
assign out[4]= ~e & (x) &(~y) &(~z);
assign out[5]= ~e & (x) &(~y) &(z);
assign out[6]= ~e & (x) &(y) &(~z);
assign out[7]= ~e & (x) &(y) &(z);
endmodule
```
4:16 decoder
```verilog
module decoder4_16 (
    input x,y,z,   // 4-bit input
    input e,         // Enable input
    output [15:0] out // 16-bit output
);
decoder3_8 dec1(x,y,z,e,out[7:0]);
decoder3_8 dec2(x,y,z,~e,out[15:8]);
endmodule
```
Refer the source codes for _tb file.
## Output Waveform
![image](https://github.com/user-attachments/assets/8c0a8d85-e47c-4141-9bf9-6333e7ef6dd5)





