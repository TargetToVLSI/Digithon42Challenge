`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:27 08/09/2023 
// Design Name: 
// Module Name:    Demus_2_1 
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
module Demus_2_1(input a,sel,output[1:0]y);
	 
assign {y[0],y[1]}=sel?{1'b0,a}:{a,1'b0};


endmodule
