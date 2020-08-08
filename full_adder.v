`timescale 1ns / 1ps

module full_adder(
    input a,b,cin,
    output sum,carry
    );
    wire t1,t2,t3;
    
    xor x1(sum,a,b,cin);
    and a1(t1,a,b);
    and a2(t2,cin,b);
    and a3(t3,cin,a);
    or o1(carry,t1,t2,t3);
    
endmodule
