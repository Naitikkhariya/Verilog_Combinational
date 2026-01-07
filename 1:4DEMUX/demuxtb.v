module demuxtb;
    reg i;
    reg [1:0]s;
    wire [3:0]out;
    demux4 demuxins(.i(i),.s(s),.y(out));
    initial begin
        $monitor("Time = %t | i = %b | s = %b | y = %b",$time,i,s,out);
        //i=0
        i=0;s=00;#10;
        i=0;s=01;#10;
        i=0;s=10;#10;
        i=0;s=11;#10;
        //i=1
        i=1;s=00;#10;
        i=1;s=01;#10;
        i=1;s=10;#10;
        i=1;s=11;#10;
        $stop;
    end
endmodule
