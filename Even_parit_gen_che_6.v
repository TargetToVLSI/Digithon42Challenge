`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:39:00 07/19/2023 
// Design Name: 
// Module Name:    Even_parit_gen_che_6 
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
module Even_parit_gen_che_6(input [7:0]din,
output parity,
input parity_in,
output error);
assign parity = ^din;
assign error =^({parity_in,din});
endmodule

