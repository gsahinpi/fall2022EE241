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


module behav(input a,input b,input sel, output reg out    );
//reg result;
//reg out;
always @ (a or b or sel)// always @ *
begin
if (sel)
  begin
   //result=b;
   out=b;
  end
  else
   begin
  //result=a;
  out=a;
    end
  
end//end always
 
 //assign out=result;



endmodule