`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 11:46:19 PM
// Design Name: 
// Module Name: testswap
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


module testswap;
reg clk,a,b;
wire aout,bout;

swap s(
   . clk(clk),
     .a(a),
    .b(b),
    .aout(aout),
    .bout(bout)
    );
 always 
 begin
 #5 clk=~clk;
 end   
 initial begin
 clk=0;
 a=1;
 b=0;
 #20 
 a=0;
 b=1;
 end   
endmodule
