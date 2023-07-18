`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:28:32 07/18/2023 
// Design Name: 
// Module Name:    Universa_switch_5 
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
module Universa_switch_5(input a,b,
output y );

supply0 gnd;
supply1 vdd;

wire temp;
pmos(y,vdd,a);
pmos(y,vdd,b);
nmos(temp,gnd,a);
nmos(y,temp,b);


/*nor 
pmos(temp,vdd,a);
pmos(y,temp,b);
nmos(y,gnd,a);
nmos(y,gnd,b);*/



endmodule
