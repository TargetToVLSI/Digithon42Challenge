`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:13:31 07/25/2023 
// Design Name: 
// Module Name:    Carry_looh_ahea_Generator_12 
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
module Carry_looh_ahea_Generator_12(
sum,cout,a,b,cin);

output[3:0]sum;
output cout;
input[3:0]a,b;
input cin;

wire [3:0]p;
wire[3:0]g;
wire c4,c3,c2,c1;
//carry propagation code
assign p0=a[0]^b[0];
assign       p1=a[1]^b[1];
	assign	 p2=a[2]^b[2];
	assign	 p3=a[3]^b[3];
//carry geenrator code;	
assign g0=a[0]&b[0];	
  assign      g1=a[1]&b[1];	
	assign	  g2=a[2]&b[2];	
		assign  g3=a[3]&b[3];	
	//carry output code
assign c1=g0|(p[0]&cin);
	  assign   c2=g1|(p[1]&g0)|(p1&p0&cin);
		assign  c3=g2|(p[2]&g1)|(p2&p1&g0)|(p2&p1&p0&cin);
		assign  c4=g3|(p[3]&g2)|(p3&p2&g1)|(p3&p2&p1&g0)|(p3&p2&p1&p0&cin);
		  
	assign sum[0]=p[0]^cin;
	     assign   sum[1]=p[1]^c1;
			assign  sum[2]=p[2]^c2;
			assign  sum[3]=p[3]^c3;
			  
			
			assign cout=c4;

endmodule
