`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/08/2022 11:34:38 PM
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


module blocking
    (
    input clk,
    input a,
    output reg c,
    output reg b
    );
    
    always @(posedge clk)
    begin
    b=a;
    c=b;
    end
endmodule
