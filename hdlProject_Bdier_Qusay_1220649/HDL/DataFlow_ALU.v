module DataFlow_ALU(output cout_Add,output cout_Sub,OverFlow_add,Overflow_Sub,output[3:0]result,input[3:0]a,b,input carray,input[2:0]op);
//Definition of variables entering and exiting 

wire[3:0] wireOR,wireAnd,wireAdd,wireSub;// Definition of wires to be used between the opration

Addition(cout_Add,OverFlow_add,wireAdd,a,b,carray);//The result of first opration (A+b)

Subtraction(cout_Sub,Overflow_Sub,wireSub,a,b,carray);//The result of secound opration (A-b)

Bitwise_And(wireAnd,a,b);//The result of third opration (A&b)

Bitwise_OR(wireOR,a,b);//The result of four opration (A|b)

assign result = (op==3'b000)?wireAdd://in this opration the system set the result of opration  based on the entered number
(op==3'b001)?wireSub:
(op==3'b010)?wireAnd:
(op==3'b011)?wireOR:3'bz;

endmodule