module testbench();
    reg [11:0] A;
    wire [7:0] B;
    ROM U1(A, B);
    initial begin
        A=0;
        $display("A\tB\t");
        $monitor("%d\t%h", A, B);
        #1 A=1;
        #1 A=2;
        #1 A=3;
        #1 A=4;
        #1 A=5;
        #1 A=6;
        #1 A=7;
    end
endmodule
