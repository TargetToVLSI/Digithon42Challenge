`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:22:33 08/20/2023 
// Design Name: 
// Module Name:    SR_latch 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module SR_latch(input rst,s,r,en,output reg Q );
always@(*)begin
if(rst)
Q<=1'b00;
if(en)begin
case({s,r})
     2'b00 : Q<= Q;
     2'b01 : Q<= 1'b0;
     2'b10 : Q<= 1'b1; 
default : Q<=2'bxx;
  
 endcase
      end
      end
  endmodule

