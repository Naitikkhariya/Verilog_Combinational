module encodertb;
    reg [7:0]i;
    reg e;
    wire [2:0]out;
    encoder encins(.i(i),.e(e),.y(out));
    initial begin
        $monitor("Time = %t | i = %b | e = %b | y = %b",$time,i,e,out);
        i=8'b00000001;e=0;#10;
        i=8'b00000010;e=0;#10;
        i=8'b00000100;e=0;#10;
        i=8'b00001000;e=0;#10;
        i=8'b00010000;e=0;#10;
        i=8'b00100000;e=0;#10;
        i=8'b01000000;e=0;#10;
        i=8'b10000000;e=0;#10;
        
        i=8'b00000001;e=1;#10;
        i=8'b00000010;e=1;#10;
        i=8'b00000100;e=1;#10;
        i=8'b00001000;e=1;#10;
        i=8'b00010000;e=1;#10;
        i=8'b00100000;e=1;#10;
        i=8'b01000000;e=1;#10;
        i=8'b10000000;e=1;#10;
        $stop;
    end
endmodule