`timescale 1ns / 1ps
module f_a(input a,b,c,output sum,cout);
assign sum=a^b^c;
assign cout=(a&b)|(b&c)|(c&a);
endmodule

module adder_cum_subtractor_4_bit(input [3:0]a,b,input en,output[3:0]sdout,output cbout);
wire[2:0]c;


f_a fa1(a[0],(b[0]^en),en,sdout[0],c0);
f_a fa2(a[1],(b[1]^en),c0,sdout[1],c1);
f_a fa3(a[2],(b[2]^en),c1,sdout[2],c2);
f_a fa4(a[3],(b[3]^en),c2,sdout[3],cbout);

 
 




endmodule
