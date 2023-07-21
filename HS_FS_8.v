`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:11:55 07/21/2023 
// Design Name: 
// Module Name:    HS_FS_8 
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
module HS_FS_8(input a,b,c,output diff,borr);
    
	 
	 assign diff=a^b^c;
	 assign borr=(~a&(b^c))|(b&c);

endmodule
