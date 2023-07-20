`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:03:14 07/20/2023 
// Design Name: 
// Module Name:    H_FA_7 
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
module H_FA_7(input a,b,c,output sum,carry);

assign sum=a^b^c;
assign carry=(a&b)|(c&(a^b));
   


endmodule
