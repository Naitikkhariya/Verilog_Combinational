`timescale 1ps/1ps
module muxtb;
    reg [1:0]a;
    reg s;
    wire o;
    mux muxins(.a(a),.s(s),.o(o));
    initial begin
        $display("Simulation is started !");
        $monitor("Time = %t a = %b s = %b o = %o",$time,a,s,o);
        a = 2'b10;s = 0;#10;
        a = 2'b10;s = 1;#100;
        $stop;
    end
endmodule