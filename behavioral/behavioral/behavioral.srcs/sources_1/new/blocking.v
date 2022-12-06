`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/06/2022 02:08:54 PM
// Design Name: 
// Module Name: blocking
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


module blocking(
    input  a,
    input b,
    output reg aout,
    output  reg bout
    );
     always @ (*)
    begin
    aout=a;
    bout=b;
      end
    
    
    always @ (*)
    begin
    aout <=bout;
    bout<=aout;
      end
    
    
    
endmodule
