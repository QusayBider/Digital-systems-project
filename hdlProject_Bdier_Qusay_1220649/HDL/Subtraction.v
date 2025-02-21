module Subtraction(output cout,OverFlow,output[3:0]result,input[3:0]a,b,input bin); //Definition of variables entering and exiting Subtraction

wire [2:0]w;//Definition the wire that used between the The Full_Adder

Full_Adder(w[0],result[0],a[0],~b[0],bin);// bin is the first carray that take the value 1 to get the secound 
Full_Adder(w[1],result[1],a[1],~b[1],w[0]);// (~)its used to get the one complemnt for the scound input .
Full_Adder(w[2],result[2],a[2],~b[2],w[1]);
Full_Adder(cout,result[3],a[3],~b[3],w[2]);
xor(OverFlow,w[2],cout);//In this process we are Check the OverFlow that out from the last to carry
endmodule