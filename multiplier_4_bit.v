`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:42:25 04/15/2023 
// Design Name: 
// Module Name:    multiplier_4_bit 
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
//////////////////////////////////////////////////////////////////////////////////t
module h_a(input a,b,
output sum,cout);
assign sum=a^b;
assign cout=a&b;
endmodule
  module f_a(input a,b,cin,
output sum,cout);
assign sum=a^b^cin;
assign cout=(a&b)|(b&cin)|(cin&a);
   endmodule
module multiplier_4_bit(input[3:0]a,b,
output[6:0]s,
output cout);
wire[15:0]c;
wire w1;
assign s[0]=a[0]&b[0];
 
 h_a ha1(a[1]&b[0],a[0]&b[1],s[1],c[0]);
  h_a ha2(a[0]&b[2],c[1],s[2],c[3]);
  h_a ha3(a[0]&b[3],c5,s[3],c[8]);
 h_a ha4(a[1]&b[3],c[9],s[4],c[12]);
 f_a fa1(a[2]&b[0],a[1]&b[1],c[0],c[1],c[2]);
 f_a fa2(a[3]&b[0],a[2]&b[1],c[2],c[4],c[6]);
 f_a fa3(a[1]&b[2],c[4],c[3],c[5],c[7]);
 f_a fa4(a[3]&b[1],c[6],c[7],w1,c[10]);
 f_a fa5(a[2]&b[2],w1,c[9],c[11]);
 f_a fa6(a[3]&b[2],c[10],c[11],c[13],c[14]);
 f_a fa7(a[2]&b[3],c[13],c[12],s[5],c[15]);
 f_a fa8(a[3]&b[3],c[14],c[15],s[6],cout);
 
endmodule
