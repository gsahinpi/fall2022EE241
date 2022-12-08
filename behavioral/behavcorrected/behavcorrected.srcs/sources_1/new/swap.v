`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 11:44:41 PM
// Design Name: 
// Module Name: swap
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


module swap(
    input clk,
    input a,
    input b,
    output reg aout,
    output reg bout
    );
    always @ (posedge clk)
    begin
    aout=b;
    bout=a;
    end
    
endmodule
