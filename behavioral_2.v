`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:30:59 07/15/2023 
// Design Name: 
// Module Name:    behavioral_2 
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
module behavioral_2(input a,b,
output reg and_y,
output reg or_y,
output reg not_y,
output reg xor_y,
output reg xnor_y,
output reg nor_y,
output reg nand_y);

always@(*)begin
and_y=a&b;
or_y=a&b;
not_y=~a;
xor_y=a^b;
xnor_y=~(a^b);
nor_y=~(a|b);
nand_y=~(a&b);
end





endmodule
