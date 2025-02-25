module Behavioral_ALU (output reg Cout_Add,Cout_Sub,output reg OverFlow_Add,output reg Overflow_Sub,output reg [3:0] z
,input [3:0] a, b,input [2:0] F,input cin);

wire [3:0] wireAdd, wireSub, wireAnd, wireOR;
wire [1:0]wireCout;
wire wireOverflow_Add, wireOverflow_Sub;


Addition(wireCout[0], wireOverflow_Add, wireAdd, a, b, cin);
Subtraction(wireCout[1], wireOverflow_Sub, wireSub, a, b, cin);
Bitwise_And(wireAnd, a, b);
Bitwise_OR(wireOR, a, b);

always @(*) begin
    case(F)
        3'b000: begin
            z = wireAdd;
            Cout_Add = wireCout[0];
            OverFlow_Add = wireOverflow_Add;
            
        end
        3'b001: begin
            z = wireSub;
            Cout_Sub = wireCout[1];
            Overflow_Sub = wireOverflow_Sub;
            
        end
        3'b010: begin
            z = wireAnd;
            
        end
        3'b011: begin
            z = wireOR;
            
        end
        default:z =3'bz;
            
    endcase
end

endmodule
  