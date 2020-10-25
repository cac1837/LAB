module counter (
  input   clk,
  input   enabled,
  input   reset,
  input   load,
  input   [11:0] in_a,
  output  [11:0] out_a);

always @ (posedge clk or posedge reset) begin
  if (reset) begin
  out_a <= 12'b0;
  end
  else if (enabled) begin
  out_a <= out_a + 1;
  end
  else if (load) begin
  out_a <= in_a;
  end
end
endmodule
/* Se diseño un contador de 12 bits en que se hizo que 
cuando el enable sea igual a 1 o sea igual a 0 este 
pueda precargar el valor o sumara 1 */
