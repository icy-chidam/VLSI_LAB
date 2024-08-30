# Week - 6
This Week consists of making 'NOT','NAND','NOR' in Switch level Modelling.
![image](https://github.com/user-attachments/assets/92db19d3-0d85-42b7-83db-4e7554c08ede)

```verilog
module CMOS_logic(
input a,b,c,d,e,
output x,y,z);
wire w1,w2;
supply1 pwr;
supply0 gnd;
// NOT gate
pmos (z,pwr,e);// (drain,source,gate)
nmos (z,gnd,e);// (source,drain,gate)
//  NAND gate
pmos(x,pwr,a);
pmos(x,pwr,b);
nmos(x,w1,a);
nmos(w1,gnd,b);
// NOR gate
pmos(w2,pwr,d);
pmos(y,w2,c);
nmos(y,gnd,c);
nmos(y,gnd,d);
endmodule
````
## 2:1 Mux Using Switch Level Modelling

![image](https://github.com/user-attachments/assets/5b4e5885-c00f-4394-9c4b-5c6db75d076c)
![image](https://github.com/user-attachments/assets/beb71096-2d36-48ce-bc76-ea3ccb673056)

```verilog
module Cmos_Mux(input s,i0,i1, output out);
wire sbar;
not(sbar,s);
cmos c1(out,i0,sbar,s);
cmos c2(out,i1,s,sbar);
endmodule
```
