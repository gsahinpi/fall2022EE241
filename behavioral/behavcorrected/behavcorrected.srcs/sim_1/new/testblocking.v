`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 11:36:45 PM
// Design Name: 
// Module Name: testblocking
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


module testblocking;
reg clk,a;

wire c,b;

blocking n1(
    .clk(clk),
    .a(a),.b(b),
   .c(c)
    );
    always 
    begin 
#5    clk=~clk;
    end
    initial 
    begin
    clk=0;
    a=10;
  #20 a=0;
  #20 a=1;  
  #20 a=0;
  #20 a=1;  
    end
    
endmodule
