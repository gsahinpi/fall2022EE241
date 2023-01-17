`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/17/2023 04:25:03 PM
// Design Name: 
// Module Name: datapath
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


module datapath(
    input reset,
    input clk,
    input [31:0] m,
    input [31:0] n,
    input [1:0] nselect,
    input [1:0] mselect,
   
    output reg [31:0] mprobe,
    output reg  [31:0] nprobe,
    output reg z
    );
   reg [31:0] Nin,Min; 
   wire [31:0] nregout,mregout;
    
    dataregister #(.WIDTH(32)) Nreg (clk, reset, Nin, nregout);
    dataregister #(.WIDTH(32)) Mreg (clk, reset, Min,mregout);
    always @ (posedge clk)
    
    begin
        case ({mselect,nselect})
            4'b1010:
                    begin
                  Nin=n;
                  Min= m;  
                     
                    end 
           4'b0101:
                    begin
                  Nin=Nin-1;
                  Min= Min+Min;  
                     
                    end          
                
            4'b0000:
                        begin
                      Nin=Nin;
                      Min= Min;  
                         
                        end  
            default:
                        begin
                        Nin=0;
                        Min=0; 
                        end                   
        endcase
    end
    always @(*)
    begin
    nprobe=nregout;
    mprobe=mregout;
    
    end
    
always @(*)
begin 
if (nregout==0)
z=1;
else
z=0;
end
    
    
endmodule
