`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:33:08 08/01/2023 
// Design Name: 
// Module Name:    Divider_16 
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
module Divider_16( input[3:0]dividend,divisor,
    output reg [3:0]quotient,remainder);

    always@(dividend,divisor)
        begin
        quotient = 0;
        remainder= dividend;
            while(remainder>=divisor)
            begin	
                remainder = remainder - divisor;
                quotient = quotient + 1;
            end
        end
endmodule


