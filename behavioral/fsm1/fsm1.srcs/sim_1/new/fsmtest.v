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


module fsmtest;
reg clk,button,reset;
wire out;

fsm dut(
.lighton(out),
    . button(button),
  .Clock(clk),
    .Reset(reset)
    );
    always 
    begin 
#5    clk=~clk;
    end
    initial 
    begin
    clk=0;
     reset=0;
     button=0;
  #20 reset=1;
     
  #20 button=1; 
  
    
  #100 
  ;
  
    end
    
endmodule
