`timescale 1ns / 1ps

module tb();

reg a=0,b=0,cin=0;
wire sum,carry;

full_adder f1(a,b,cin,sum,carry);

always #5 a=~a;
always #10 b=~b;
always #15 cin=~cin;

initial begin

#100 $stop;

end
endmodule
