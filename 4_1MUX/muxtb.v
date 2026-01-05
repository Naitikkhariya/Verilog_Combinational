module muxtb;
    reg [3:0] a;
    reg [1:0] s;
    wire out;
    mux mux_ins(.a(a),
                .s(s),
                .out(out));
    //to start simulation section 
    initial begin
        $monitor("Time = %t | a = %b | s = %b | output = %b",$time,a,s,out);
        a=4'b1010;s=2'b00;#10;
        a=4'b1010;s=2'b01;#10;
        a=4'b1010;s=2'b10;#10;
        a=4'b1010;s=2'b11;#10;
        $stop;
    end
endmodule