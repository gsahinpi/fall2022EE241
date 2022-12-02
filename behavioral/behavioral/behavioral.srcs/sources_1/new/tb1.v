`timescale 1ns / 1ps
module tb1;
//---------------------------------------------------------
 // inputs to the DUT are reg type
 reg a,b,sel;
 
 //--------------------------------------------------------
 // outputs from the DUT are wire type
wire out;
 
 
 //---------------------------------------------------------
 // instantiate the Device Under Test (DUT)
behav dut(.a(a),.b(b),.sel(sel),.out(out  )  );
initial
 begin
 a=0;
 b=0;
 sel=0;
 #20
 a=0;
 b=1;
  sel=1;
 #20
 a=1;
 b=0;
  sel=0;
 #20
 a=1;
 b=1;
  sel=1;
 #20 
 ;
end
endmodule
