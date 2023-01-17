`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2022 07:00:10 PM
// Design Name: 
// Module Name: EqualSim
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


module EqualSim();
    reg[7:0] a = 0;
    reg[7:0] b = 0;
    wire y;
    Equal dut(.a(a),.b(b),.y(y));
    initial 
    begin
       a = 200;
       b = 200;
       #5;
       a = 0;
       #5;
    end
endmodule
