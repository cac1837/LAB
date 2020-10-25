module testbench();
    reg [3:0] K;
    reg [3:0] A;
    reg [3:0] T;
    wire V;
    wire A_out;
    wire [3:0] Y;
    Alu U1(A, T, K, Y, V, A_out);
    initial begin
        K=0; A=0; T=0; 
        $display("K\tA\tT\tY\tV\tA_out");
        $monitor("%b\t%b\t%b\t%b\t%b\t", K, A, T, Y, V, A_out);
        #1 A=2;
	      T=4; K=3'b000;
        #1 A=2;
	      T=4; K=3'b001;
        #1 A=2; T=4; A=3'b010;
        #1 A=8;
	      T=8; A=4'b010;
        #1 A=4; T=3; K=3'b011;
        #1 A=4; T=5; K=3'b011;
        #1 A=4; T=4; K=3'b011;
        #1 A=3; T=5; K=3'b100;
        #1 $finish;
    end
endmodule
