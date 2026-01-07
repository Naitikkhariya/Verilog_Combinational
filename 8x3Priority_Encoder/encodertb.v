module encodertb;
    reg [7:0]i;
    reg e;
    wire valid;
    wire [2:0]out;
    enco encoins(.i(i),.e(e),.valid(valid),.y(out));
    initial begin
        $monitor("Time %t | i %b | e %b | valid %b | output %b",$time,i,e,valid,out);
        i=8'b00000001;e=0;#10;
        i=8'b00000010;e=0;#10;
        i=8'b00000100;e=0;#10;
        i=8'b00001000;e=0;#10;

        i=8'b00010000;e=1;#10;
        i=8'b00100000;e=1;#10;
        i=8'b01000000;e=1;#10;
        i=8'b10000000;e=1;#10;
        
        i=8'b00000001;e=1;#10;
        i=8'b01000010;e=1;#10;
        i=8'b00100100;e=1;#10;
        i=8'b00001000;e=1;#10;
        i=8'b00010010;e=1;#10;
        i=8'b00100000;e=1;#10;
        i=8'b01001000;e=1;#10;
        i=8'b10110000;e=1;#10;
    end
endmodule