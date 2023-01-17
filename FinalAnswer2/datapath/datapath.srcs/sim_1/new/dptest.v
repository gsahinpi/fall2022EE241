`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2023 05:09:38 PM
// Design Name: 
// Module Name: dptest
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


module dptest;
reg Reset = 0;
reg Clock = 0;
reg[31:0] n = 4;
reg[31:0] m = 3;
reg [1:0] nselect;
reg  [1:0] mselect;
  
wire z;
wire [31:0] mprobe;
wire [31:0] nprobe;

 always 
 begin
  #5 Clock=~Clock;
 end



datapath  dp(
    .reset(Reset),
 .clk(Clock),
  . m(m),
. n(n),
.nselect(nselect),
   .mselect(mselect),
  
   . mprobe(mprobe),
 . nprobe (nprobe),
    . z(z)
    );
initial begin
Reset=1;
#40
Reset=0;
 nselect=3'b 10;
 mselect=3'b 10;
#20
 nselect=3'b 01;
 mselect=3'b 01;
#40;
nselect=3'b 00;
 mselect=3'b 00;
#50
;

end

endmodule
