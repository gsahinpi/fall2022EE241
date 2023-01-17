`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2022 07:14:30 PM
// Design Name: 
// Module Name: GreaterSim
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


module GreaterSim;
    reg[7:0] a = 0;
    reg[7:0] b = 0;
    wire y;
    Greater dut(.a(a),.b(b),.y(y));
    initial 
    begin
       a = 200;
       b = 100;
       #5;
       b = 255;
       #5;
    end
endmodule
