`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:38:58 08/06/2023 
// Design Name: 
// Module Name:    universal_mux_gates 
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
module mux_2_1(input a,b,sel,output y);
assign y=sel?b:a;
endmodule

module universal_mux_gates(input a, b,
    output nand_out, nor_out
    );
    wire bbar;
    
    mux_2_1 mbbar({1'b0, 1'b1}, b, bbar);
    
    mux_2_1 mnand({bbar, 1'b1}, a, nand_out);
    mux_2_1 mnor({1'b0, bbar}, a, nor_out);
 

endmodule
