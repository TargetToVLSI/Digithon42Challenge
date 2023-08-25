`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:32:24 08/25/2023 
// Design Name: 
// Module Name:    coplement_2s 
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
module coplement_2s(
input[3:0] din,
output[3:0]out);
wire [3:0]tem;

assign tem=4'b1111-din;
assign out =tem+1;


endmodule
