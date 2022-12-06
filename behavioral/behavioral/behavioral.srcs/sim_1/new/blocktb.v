`timescale 1ns / 1ps
module blocktb;
//---------------------------------------------------------
 // inputs to the DUT are reg type
 reg a,b;
 
 //--------------------------------------------------------
 // outputs from the DUT are wire type
wire aout,bout;
 
 
 //---------------------------------------------------------
 // instantiate the Device Under Test (DUT)
blocking mahmut(
   .a(a),.b(b),
    . aout(aout),
 . bout(bout)
    );
    
initial
 begin
 a=0;
 b=1;
 
 #20
 a=1;
 b=0;
  
 #20
 a=1;
 b=0;
 
 #20
 a=1;
 b=1;
 
#200
 ;
end
endmodule
