`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:36:50 07/17/2023 
// Design Name: 
// Module Name:    switch_level_4 
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
module switch_level_4(input a,output y);

supply0 gnd;
supply1 vdd ;

pmos(y,vdd,a);
nmos(y,gnd,a);




endmodule
