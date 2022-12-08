`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 10:18:47 PM
// Design Name: 
// Module Name: testflipflop
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


module testflipflop;
reg clk;
  reg reset;
  reg d;
  wire q;
  wire qb;
  
  // Instantiate design under test
  flipflop DFF(.clk(clk), .reset(reset),
          .d(d), .q(q), .qb(qb));
          
  initial begin
    // Dump waves
   
    
   
   clk=0;
    reset = 1;
    d = 1'bx;
 #20  
    
    
    d = 1;
    reset = 0;
 

    
  
   
  end
  always 
  begin
  #5 clk=~clk;
  end

endmodule


