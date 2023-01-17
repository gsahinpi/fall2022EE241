`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2023 11:16:11 PM
// Design Name: 
// Module Name: dataregister
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


`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2023 04:41:15 PM
// Design Name: 
// Module Name: dataregister
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


module dataregister #(
    parameter WIDTH = 4
) (
    input clk,
    input rst,
    input [WIDTH-1:0] data_in,
    output reg [WIDTH-1:0] data_out
);

always @ (posedge clk) begin
    if (rst) begin
        data_out <= {WIDTH{1'b0}};
    end else begin
        data_out <= data_in;
    end
end

endmodule

