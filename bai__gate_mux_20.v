`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:56:23 08/05/2023 
// Design Name: 
// Module Name:    bai__gate_mux_20 
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

module mux_21(input a,b,sel,output y);
assign y=sel?b:a;
endmodule

module bai__gate_mux_20(input a,b,output noty,andy,ory);
mux_21 notmux(1'b1,1'b0,a,noty);
mux_21 andmux(1'b0,b,a,andy);
 mux_21 ormux(b,1'b1,a,ory);

endmodule
