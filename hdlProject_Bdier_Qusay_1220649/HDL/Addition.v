module Addition(output cout,OverFlow,output[3:0]result,input[3:0]a,b,input bin);//Definition of variables entering and exiting Addation
wire [2:0]w;// Definition of wires to be used between Full Adder

Full_Adder(w[0],result[0],a[0],b[0],bin);
Full_Adder(w[1],result[1],a[1],b[1],w[0]);
Full_Adder(w[2],result[2],a[2],b[2],w[1]);
Full_Adder(cout,result[3],a[3],b[3],w[2]);
xor(OverFlow,w[2],cout);//In this process we are Check the OverFlow that out from the last to carry
endmodule