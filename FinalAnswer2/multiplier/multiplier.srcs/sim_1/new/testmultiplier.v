`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2023 11:54:50 PM
// Design Name: 
// Module Name: testmultiplier
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


module testmultiplier;
reg reset =0;
reg clk=0 ;
reg [31:0] n ;
reg [31:0] m ; 

wire  [31:0] mtest;
wire  [31:0] ntest;  


 multiplier  dut(
. mReset(reset) ,
. mClock(clk) ,
. dn (n),
. dm (m) ,

. mdebug(mtest),
.ndebug(ntest)    
        );
       always 
 begin
  #5 clk=~clk;
 end
 initial 
 begin
 reset=1;
 m=32'd3;
 n=32'd4;
 #40 
 reset=0;
 
 end
endmodule
