`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2022 06:53:34 PM
// Design Name: 
// Module Name: Equal
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


module Equal(
    input[7:0] a,
    input[7:0] b,
    output y
    );
    assign y = (a == b);
endmodule
