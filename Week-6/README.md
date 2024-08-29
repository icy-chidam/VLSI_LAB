# Week - 6
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
