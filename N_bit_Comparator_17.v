`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:19:21 08/02/2023 
// Design Name: 
// Module Name:    N_bit_Comparator_17 
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
module N_bit_Comparator_17(a,b,greater,lesser,equal);
parameter N=8;
input[N-1:0]a,b;
output greater,lesser,equal;

assign greater=a>b;

assign lesser=a<b;
assign equal=a==b;


endmodule
