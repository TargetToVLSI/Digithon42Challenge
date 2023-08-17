`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:31:23 08/17/2023 
// Design Name: 
// Module Name:    basic_gates_usingde 
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
module basic_gates_usingde(input[1:0]i,input en,output[3:0]y,output and_gate,output or_gate);

assign y=en?4'b0001<<i:0;
assign and_gate=y[3];
assign or_gate=~y[0];



   
	
endmodule
