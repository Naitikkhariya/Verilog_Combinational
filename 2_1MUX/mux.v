module mux(input [1:0]a,
            input s,
            output o);
            assign o = (a[1]&(~s))|(a[0]&(s));
endmodule