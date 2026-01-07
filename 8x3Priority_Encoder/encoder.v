module enco(input [7:0]i,
input e,
output reg valid,
output reg [2:0]y);
    always @(*)begin
        y = 3'b000;
        valid = 1'b0;
        if(e)begin
            if(i[7])begin y=3'b111;valid=1'b1; end
            else if(i[6])begin y=3'b110;valid=1'b1; end
            else if(i[5])begin y=3'b101;valid=1'b1; end
            else if(i[4])begin y=3'b100;valid=1'b1; end
            else if(i[3])begin y=3'b011;valid=1'b1; end
            else if(i[2])begin y=3'b010;valid=1'b1; end
            else if(i[1])begin y=3'b001;valid=1'b1; end
            else if(i[0])begin y=3'b000;valid=1'b1; end
        end
    end
endmodule