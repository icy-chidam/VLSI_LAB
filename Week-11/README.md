# Week-11
RAM_16_4
``` verilog
module ram_555(RD, WR, Addres, Data, Output); 
input[3:0]Data;
input RD,WR;
input[3:0] Addres; 
output reg[3:0]Output;
reg[3:0]RAM[15:0];
reg[3:0]Temp;
always@(Addres) begin
if(WR) begin
RAM[Addres]=Data;Temp=RAM[Addres];
end if(RD)
begin Output=RAM[Addres]; end
end
endmodule
```
RAM_16_4_tb
```verilog
module ram_555_tb_v;
            reg RD;
            reg WR;
            reg [3:0] Addres;
            reg [3:0] Data;
            wire [3:0] Output;
            ram_555 uut (
                        .RD(RD),
                        .WR(WR),
                        .Addres(Addres),
                        .Data(Data),
                        .Output(Output));
initial begin
                        RD = 0;WR= 1;Addres= 4'b0000;Data = 4'b0000;#30;
                        RD = 0;WR= 1;Addres= 4'b0001;Data = 4'b0001;#30;
                        RD = 0;WR= 1;Addres= 4'b0010;Data = 4'b0010;#30;
                        Data=4'b0011; RD = 0;WR=1; Addres= 4'b0011; #30;
                        Data=4'b0100; RD = 0;WR=1; Addres= 4'b0100; #30;
                        Data=4'b0101; RD = 0;WR=1; Addres= 4'b0101; #30;
                        Data=4'b0110; RD = 0;WR=1; Addres= 4'b0110; #30;
                        Data=4'b0111; RD = 0;WR=1; Addres= 4'b0111; #30;
                        Data=4'b1000; RD = 0;WR=1; Addres= 4'b1000; #30;
                        Data=4'b1001; RD = 0;WR=1; Addres= 4'b1001; #30;
                        Data=4'b1010; RD = 0;WR=1; Addres= 4'b1010; #30;
                        Data=4'b1011; RD = 0;WR=1; Addres= 4'b1011;#30;
                        Data=4'b1100; RD = 0;WR=1; Addres= 4'b1100; #30;
                        Data=4'b1101; RD = 0;WR=1; Addres= 4'b1101; #30;
                        Data=4'b1110; RD = 0;WR=1; Addres= 4'b1110; #30;
                        Data=4'b1111; RD = 0;WR=1; Addres= 4'b1111; #30;
                        RD = 1;WR=0; Addres= 4'b0000; #30;
                        RD = 1;WR=0; Addres= 4'b0001; #30;
                        RD = 1;WR=0; Addres= 4'b0010; #30;
                        RD = 1;WR=0; Addres= 4'b0011; #30;
                        RD =1; WR=0; Addres= 4'b0100; #30;
                        RD = 1;WR=0; Addres= 4'b0101; #30; 
                        RD = 1;WR=0; Addres= 4'b0110; #30;
                        RD = 1;WR=0; Addres= 4'b0111; #30;
                        RD = 1;WR=0; Addres= 4'b1000; #30;
                        RD = 1;WR=0; Addres= 4'b1001; #30;
                        RD = 1;WR=0; Addres= 4'b1010; #30;
                        RD = 1;WR=0; Addres= 4'b1011; #30;
                        RD = 1;WR=0; Addres= 4'b1100; #30;
                        RD = 1;WR=0; Addres= 4'b1101; #30;
                        RD = 1;WR=0; Addres= 4'b1110; #30;
                        RD = 1;WR=0; Addres= 4'b1111; #30;end  
endmodule
```
ROM_16_4
``` verilog
module ROM_16_4_555(Address, RD, Output);
input[3:0] Address;
input RD;
output reg[3:0] Output; 
reg[3:0] ROM[15:0];
initial 
begin
ROM[4'b0000]=4'b1111; 
ROM[4'b0001]=4'b1110; 
ROM[4'b0010]=4'b1101; 
ROM[4'b0011]=4'b1100; 
ROM[4'b0100]=4'b1011; 
ROM[4'b0101]=4'b1010; 
ROM[4'b0110]=4'b1001; 
ROM[4'b0111]=4'b1000; 
ROM[4'b1000]=4'b0111; 
ROM[4'b1001]=4'b0110; 
ROM[4'b1010]=4'b0101; 
ROM[4'b1011]=4'b0100;
ROM[4'b1100]=4'b0011; 
ROM[4'b1101]=4'b0010; 
ROM[4'b1110]=4'b0001; 
ROM[4'b1111]=4'b0000;
end
always@(RD , Address)
begin
if(RD) 
begin
Output=ROM[Address]; 
end
end
endmodule
```
ROM_16_4_tb
``` verilog
module ROM_16_4_tb();
// Inputs
reg [3:0] Address; 
reg RD;
// Outputs
wire [3:0] Output;
// Instantiate the Unit Under Test (UUT) ROM uut (
ROM_16_4_555 uut(
.Address(Address),
.RD(RD),
.Output(Output)
);
initial
 begin
// Initialize Inputs
Address = 0;
RD = 0;
 // Wait 100 ns for global reset to finish #100;

Address = 4'b0000; RD = 1; 
#50; Address = 4'b0001; RD = 1; 
#50; Address = 4'b0010; RD = 1; 
#50; Address = 4'b0011; RD = 1; 
#50; Address = 4'b0100; RD = 1; 
#50; Address = 4'b0101; RD = 1; 
#50; Address = 4'b0110; RD = 1; 
#50; Address = 4'b0111; RD = 1; 
#50; Address = 4'b1000; RD = 1; 
#50; Address = 4'b1001; RD = 1; 
#50; Address = 4'b1010; RD = 1; 
#50; Address = 4'b1011; RD = 1; 
#50; Address = 4'b1100; RD = 1; 
#50; Address = 4'b1101; RD = 1; 
#50; Address = 4'b1110; RD = 1; 
#50; Address = 4'b1111; RD = 1; 
end 
endmodule
```
# Post_lab
64_8_bit_ROM
```verilog
module ram_64_8(RD, WR, Addres, Data, Output); 
input[7:0]Data;
input RD,WR;
input[7:0] Addres; 
output reg[7:0]Output;
reg[7:0]RAM[63:0];
reg[7:0]Temp;
always@(Addres) begin
if(WR) begin
RAM[Addres]=Data;Temp=RAM[Addres];
end if(RD)
begin Output=RAM[Addres]; end
end
endmodule
```

64_8_bit_ROM_test_bench
``` verilog
module ram_64_8_tb;
            reg RD;
            reg WR;
            reg [7:0] Addres;
            reg [7:0] Data;
            wire [7:0] Output;
            ram_64_8 uut (
                        .RD(RD),
                        .WR(WR),
                        .Addres(Addres),
                        .Data(Data),
                        .Output(Output)
            );
            initial begin
                        RD = 0;WR= 1;Addres= 8'b00000000;Data = 8'b00000000;#30;
                        RD = 0;WR= 1;Addres= 8'b00000001;Data = 8'b00000001;#30;
                        RD = 0;WR= 1;Addres= 8'b00000010;Data = 8'b00000010;#30;
                        Data=8'b00000011; RD = 0;WR=1; Addres= 8'b00000011; #30;
                        Data=8'b00000100; RD = 0;WR=1; Addres= 8'b00000100; #30;
                        Data=8'b00000101; RD = 0;WR=1; Addres= 8'b00000101; #30;
                        Data=8'b00000110; RD = 0;WR=1; Addres= 8'b00000110; #30;
                        Data=8'b00000111; RD = 0;WR=1; Addres= 8'b00000111; #30;
                        Data=8'b00001000; RD = 0;WR=1; Addres= 8'b00001000; #30;
                        Data=8'b00001001; RD = 0;WR=1; Addres= 8'b00001001; #30;
                        Data=8'b00001010; RD = 0;WR=1; Addres= 8'b00001010; #30;
                        Data=8'b00001011; RD = 0;WR=1; Addres= 8'b00001011;#30;
                        Data=8'b00001100; RD = 0;WR=1; Addres= 8'b00001100; #30;
                        Data=8'b00001101; RD = 0;WR=1; Addres= 8'b00001101; #30;
                        Data=8'b00001110; RD = 0;WR=1; Addres= 8'b00001110; #30;
                        Data=8'b00001111; RD = 0;WR=1; Addres= 8'b00001111; #30;
                        RD = 1;WR=0; Addres= 8'b00000000; #30;
                        RD = 1;WR=0; Addres= 8'b00000001; #30;
                        RD = 1;WR=0; Addres= 8'b00000010; #30;
                        RD = 1;WR=0; Addres= 8'b00000011; #30;
                        RD =1; WR=0; Addres= 8'b00000100; #30;
                        RD = 1;WR=0; Addres= 8'b00000101; #30; 
                        RD = 1;WR=0; Addres= 8'b00000110; #30;
                        RD = 1;WR=0; Addres= 8'b00000111; #30;
                        RD = 1;WR=0; Addres= 8'b00001000; #30;
                        RD = 1;WR=0; Addres= 8'b00001001; #30;
                        RD = 1;WR=0; Addres= 8'b00001010; #30;
                        RD = 1;WR=0; Addres= 8'b00001011; #30;
                        RD = 1;WR=0; Addres= 8'b00001100; #30;
                        RD = 1;WR=0; Addres= 8'b00001101; #30;
                        RD = 1;WR=0; Addres= 8'b00001110; #30;
                        RD = 1;WR=0; Addres= 8'b00001111; #30;
end
endmodule
```
