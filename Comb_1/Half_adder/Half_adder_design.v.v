/*Four levels of abstraction are available
1.Behavioral 2.Data flow 3.switch 4.Gate level
switch level is not possible with defining billions of individual transistors
Practically Behavioral is one which we use 
but here we explore #1, #2, #4*/ 

//Gate level abstraction implementation
module half_adder_gl(sum,carry,a,b); //port declaration and module name

input a,b;				//I/O port declaration
output sum,carry;

and a1(sum,a,b);			//gate instantiation with copy name (instantiation is always a copy)
or b1(carry,a,b);

endmodule				//endmodule does not have semicolon 

//Data_flow level abstraction implementation
module half_adder_df(sum,carry,a,b);

input a,b;
output sum,carry;

assign sum = a^b;			//assign statement with Boolean expression is data flow			     
assign carry = a*b;

endmodule

//Behavioral level abstraction implementation
module half_adder_bhvl(sum,carry,a,b);

input a,b;
output reg sum,carry;

always@(*)				//always(*) is the sensitivity list, any signal change in input this block will track
	begin
	if(a==0 && b==0) begin
		sum =0; carry=0;
		end
	else if(a==1 && b==1) begin
		sum=0;carry=1;
		end
	else begin
		sum=1;carry=0;
		end
	end
endmodule
