`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/02/2022 01:04:24 PM
// Design Name: 
// Module Name: behav
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


module nonblock(input a,input b,input sel,input clk, output out    );
//reg result;
reg outwire;
always @ (posedge clk)// always @ *
begin
if (sel)
  begin
   //result=b;
   outwire<=b;
  end
  else
   begin
  //result=a;
  outwire<=a;
    end
  
end//end always
 
 assign out=outwire;



endmodule
