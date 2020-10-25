module Alu (
    input [3:0] K, 
    input [3:0] A, 
    input [3:0] T, 
    output [3:0] Y, 
    output V, 
    output A_out
    );
    reg [3:0] y_clo;
    reg r_clo;
    reg [4:0] clo;
    assign Y = clo[3:0];
    assign A_out = clo[4];
    assign V = (clo[3:0] == 0);
    always @(A, T, K)
    begin
        case(A)
            3'b000: clo = A;
            3'b001: clo = T;
            3'b010: clo = A+T;
            3'b011: clo = A-T;
            3'b100: clo = ~(A&T);
            default: clo = 0;
        endcase
    end
endmodule
/* Se implemento con 4 bits y un operando de 3 bit, los 
cuales realizan las funcines logicas del procesador */