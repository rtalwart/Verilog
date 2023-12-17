module full_adder(sum,carry,a,b,cin);

input a,b,cin;
output sum, carry;

sum = a^b^cin;
carry = (a*b)+(b*cin)+(a*cin);

endmodule