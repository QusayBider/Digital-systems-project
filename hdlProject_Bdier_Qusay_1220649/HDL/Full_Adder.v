module Full_Adder(output cout,sum,input a,b,c);//Definition of variables entering and exiting FullAdder

wire w1,w2,w3; // Definition of wires to be used between gates

and(w1,a,b); 
xor(w2,a,b); //xor outputs cout and passes it using w2 to the next operation
and(w3,w2,c); 
xor(sum,w2,c); 
or(cout,w1,w3); //or outputs cout 
endmodule