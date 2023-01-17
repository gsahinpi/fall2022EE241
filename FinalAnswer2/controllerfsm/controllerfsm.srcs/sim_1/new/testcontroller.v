`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2023 11:18:13 PM
// Design Name: 
// Module Name: testcontroller
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


module testcontroller;
reg reset,clk,z;
//output
wire [1:0]  mselect;
wire [1:0]  nselect;
controller dut(
    reset,
     clk,
     z,
    mselect,
    nselect
    );
    always 
 begin
  #5 clk=~clk;
 end
 
 initial begin
 clk=0;
 reset=0;
 #50;
 reset=1;
 #50;
  
  
 reset=0;
 
  
   
    #100;
    z=0;
  #50

z=1; 


   
 end
    
endmodule
