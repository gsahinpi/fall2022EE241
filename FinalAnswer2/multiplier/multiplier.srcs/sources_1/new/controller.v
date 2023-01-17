`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2023 11:43:43 PM
// Design Name: 
// Module Name: controller
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
// Create Date: 01/17/2023 05:59:54 PM
// Design Name: 
// Module Name: Controlfsm
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


module controller(
    input reset,
    input clk,
    input z,
    output reg [1:0]  mselect,
    output reg [1:0] nselect
    );
    
   localparam Startstate =2'b00,
              loopstate  =2'b01,
              endstate=2'b10;
 
  reg [1:0]next ;

 wire [1:0]nextval;  
    
 dataregister #(.WIDTH(2)) controllerreg (clk, reset, next, nextval);
//nextstatelogic  
    always@(*)
        begin
        case (nextval)
             Startstate:
                    begin
                 next=loopstate;
                 mselect=2'b10;
                 nselect=2'b10;
                  end
             loopstate:
                 begin
                 next=z?endstate:loopstate;
                 mselect=2'b01;
                 nselect=2'b01;
                 end
             endstate:
                 begin
                 next=endstate; 
                  mselect=2'b00;
                 nselect=2'b00;
                 end 
                 default
                 next=Startstate;
        endcase
        end 
    
    

    
endmodule

