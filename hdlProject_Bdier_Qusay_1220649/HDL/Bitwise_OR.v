module Bitwise_OR(output[3:0] result,input[3:0]a,b);//Definition of variables entering and exiting the OR gate

or(result[0],a[0],b[0]);/*In the first or gate the input is a[0]&b[0] ,the gate do the OR opration between 
                          them and out the result in result [0]*/
or(result[1],a[1],b[1]);

or(result[2],a[2],b[2]);

or(result[3],a[3],b[3]);

endmodule