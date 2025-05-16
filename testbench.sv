module tb_priority_encoder_4_to_2;
    reg [3:0] in;
    wire [1:0] out;
    wire valid;
    priority_encoder_4_to_2 uut ( .in(in), .out(out),.valid(valid));
    initial begin
          $dumpfile("dumpfile.vcd");
    $dumpvars(1);
        in = 4'b0000;  
        #10;
        in = 4'b0001;  
        #10;
        in = 4'b0010;  
        #10;
        in = 4'b0100; 
        #10;
        in = 4'b1000; 
        #10;
        in = 4'b1111; 
        #10;
        $finish;
    end
    initial begin
      $monitor("%t, in = %b, out = %b, valid = %b", $time, in, out, valid);
    end
endmodule
