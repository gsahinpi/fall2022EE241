`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 11:18:25 PM
// Design Name: 
// Module Name: testnonblocking
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


module testnonblocking;
reg clk,a;
wire c,b;

nonblocking n1(
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
