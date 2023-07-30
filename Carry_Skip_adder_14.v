`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:36:02 07/30/2023 
// Design Name: 
// Module Name:    Carry_Skip_adder_14 
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
module FullAdder(input a,b,cin,output sum,cout);
assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
endmodule

module pA (input[3:0]a,b,input cin,output[3:0]s,output cout);
wire[2:0]c;
FullAdder Fa1(a[0],b[0],cin,s[0],c[0]);
FullAdder Fa2(a[1],b[1],c[0],s[1],c[1]);
FullAdder Fa3(a[2],b[2],c[1],s[2],c[2]);
FullAdder Fa4(a[3],b[3],c[2],s[3],cout);
endmodule

module Carry_Skip_adder_14(input[3:0]a,b,cin,output[3:0]s,output cout);

wire[3:0]p;
wire c,sel;

    pA pa1(a, b, cin, s, c);

xor(p[0],a[0],b[0],
    p[1],a[1],b[1],
	 p[2],a[2],b[2],
	 p[3],a[3],b[3]);
	 
and(sel,p[0],p[1],p[2],p[3]);

assign cout=sel?c:cin;


endmodule
