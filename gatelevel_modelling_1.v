`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:19:28 07/14/2023 
// Design Name: 
// Module Name:    gatelevel_modelling_1 
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
module gatelevel_modelling_1(input a,b,output andy,ory,nory,noty,xory,xnory,nandy);

and a1(andy,a,b);
or a2(ory,a,b);
nor a3(nory,a,b);
not a4(noty,a);
xor a5(xory,a,b);
xnor a6(xnory,a,b);
nand a7(nandy,a,b);



endmodule
