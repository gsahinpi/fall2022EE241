`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12/29/2022 07:18:39 PM
// Design Name: 
// Module Name: Less
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


module Less(
    input[7:0] a,
    input[7:0] b,
    output y
    );
    assign y = (a < b);
endmodule
