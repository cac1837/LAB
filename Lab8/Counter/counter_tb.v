module testbench();
    reg clk;
    reg enabled;
    reg reset;
    reg load;
    reg [11:0] in_a;
    wire [11:0] out_a;
    counter U1(clk, enabled, reset, load, in_a, out_a);
    always
        #2 clk = ~clk;
    initial begin
        clk=0; reset=0; enabled=0; in_a=0; load=0;
        $display("clk\treset\tenabled\tload\tin_a\tout_a");
        $monitor("%d\t%d\t%d\t%d\t%h\t%h\t", clk, reset, enabled, load, in_a, out_a);
        #4 reset = 1;
        #4 reset = 0;
        #4 clk = 1;
        #4 clk = 1;
        #4 clk = 1;
		    #1 enabled = 1;
        #4 clk = 1;
        #4 clk = 1;
        #4 clk = 1;
        #4 clk = 1;
        #4 clk = 1;
		    #1 enabled =0;
		    #1 in_a = 0;
		    #2 load =1;
		    #2 load =0;
        #4 clk = 1;
        #4 clk = 1;
		    #1 enabled =1;
        #4 clk = 1;
        #4 clk = 1;
        #4 clk = 1;
        #4 clk = 1;
    end
    initial
      #100 $finish;
    initial begin
      $dumpfile("counter_tb.vcd");
      $dumpvars(0,testbench);
    end
endmodule


