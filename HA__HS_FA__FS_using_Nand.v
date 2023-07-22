`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:52:34 07/22/2023 
// Design Name: 
// Module Name:    HA__HS_FA__FS_using_Nand 
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
module HA__HS_FA__FS_using_Nand(input a,b,output sum,diff,cout,borr);
 
 wire w1,w2;
 
 assign w1=~(a&b);
 assign w2=~(w1&a);
 assign w3=~(w1&b);
 assign sum=~(w2&w3);
 assign diff=~(w2&w3);
 assign cout=~(w1&w1);
 assign borr =~(w3&w3);


endmodule
