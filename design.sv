module priority_encoder_4_to_2 ( input [3:0] in,output reg [1:0] out, output reg valid);
    always @(*) begin
        out = 2'b00;   
        valid = 0;     
        if (in[3] == 1'b1) begin
            out = 2'b11;  // Priority 3
            valid = 1;
        end
        else if (in[2] == 1'b1) begin
            out = 2'b10;  // Priority 2
            valid = 1;
        end
        else if (in[1] == 1'b1) begin
            out = 2'b01;  // Priority 1
            valid = 1;
        end
        else if (in[0] == 1'b1) begin
            out = 2'b00;  // Priority 0
            valid = 1;
        end
    end
endmodule
