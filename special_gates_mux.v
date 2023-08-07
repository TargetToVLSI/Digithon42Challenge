`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:06:46 08/07/2023 
// Design Name: 
// Module Name:    special_gates_mux 
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
module mux(
input[1:0]i,
input sel,
output y
);
assign y=sel?i[1]:i[0];
endmodule

module special_gates_mux(
input a,b,
output yxor,yxnor
);
 wire bbar;
mux mnot({1'b0, 1'b1},b,bbar);
mux mxor({bbar, b},a,yxor);	
mux mxnor({b, bbar},a,yxnor);

endmodule
