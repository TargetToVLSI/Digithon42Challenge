`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:52:56 08/21/2023 
// Design Name: 
// Module Name:    N_bit_square 
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
module N_bit_square(num,result);
  parameter N=4;
	input[N-1:0]num;
output [2*N-1:0]result;

assign result= num*num;



endmodule
