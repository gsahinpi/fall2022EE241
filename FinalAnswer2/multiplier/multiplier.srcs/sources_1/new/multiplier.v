`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2023 11:44:42 PM
// Design Name: 
// Module Name: multiplier
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


module multiplier(
input mReset ,
input mClock ,
input [31:0] dn ,
input [31:0] dm ,

output reg [31:0] mdebug,
output reg  [31:0] ndebug    
        );

reg [1:0] dnselect;
reg  [1:0] dmselect;
  
wire dz;
wire [31:0] dmprobe;
wire [31:0] dnprobe;


reg  cz;
//output
wire [1:0] cmselect;
wire [1:0]  cnselect; 

always @(*)
begin
dmselect=cmselect;
dnselect=cnselect;
cz=dz;
mdebug=dmprobe;
ndebug=dnprobe;
end
datapath  dp(
    .reset(mReset),
 .clk(mClock),
  . m(dm),
. n(dn),
.nselect(dnselect),
   .mselect(dmselect),
  
   . mprobe(dmprobe),
 . nprobe (dnprobe),
    . z(dz)
    );
    
   controller dut(
   mReset,
    mClock,
     cz,
     
    cmselect,
    cnselect
    ); 
    
    
endmodule
