`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 01:41:24 PM
// Design Name: 
// Module Name: sequentialtest
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module sequentialtest;
reg a,b,sel,clk;
 
 //--------------------------------------------------------
 // outputs from the DUT are wire type
wire out;
 
 
 //---------------------------------------------------------
 // instantiate the Device Under Test (DUT)
nonblock  dut(.a(a),.b(b),.sel(sel),.out(out  )  );
initial begin
clk=0;
end
always
begin
#5 clk=~clk;
end

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