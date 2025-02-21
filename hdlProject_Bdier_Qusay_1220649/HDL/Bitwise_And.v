module Bitwise_And(output[3:0] result,input[3:0]a,b);//Definition of variables entering and exiting the And gate

and(result[0],a[0],b[0]);/*In the first And gate the in put is a[0]&b[0] ,the gate do the and opration between 
                          them and out the result in result [0]*/
and(result[1],a[1],b[1]);

and(result[2],a[2],b[2]);

and(result[3],a[3],b[3]);

endmodule