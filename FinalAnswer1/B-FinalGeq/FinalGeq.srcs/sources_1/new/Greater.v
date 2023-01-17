`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2022 07:13:37 PM
// Design Name: 
// Module Name: Greater
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




module Greater(
    input[7:0] a,
    input[7:0] b,
    output y
    );
    assign y = (a > b);
endmodule
