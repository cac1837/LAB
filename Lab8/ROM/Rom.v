module ROM(
  input wire [11:0] A,
  output wire [7:0] B
  );
  reg [7:0] memory [0:4095];
  assign B = memory[A];
  initial begin
      memory[0] = 8'h5A;
      memory[1] = 8'h33;
      memory[2] = 8'hFA;
      memory[3] = 8'h14;
      memory[4] = 8'hC7;
      memory[5] = 8'h8E;
      memory[6] = 8'hE1;
      memory[7] = 8'h5A;
  end
  initial begin
    $readmemb("Rom_memory.list", memory);
  end
endmodule
/* Se utilizo la instruccion de readmemb pq
se desea leer un archivo con datos binarios 
y si quisieramos leer un archivo con datos 
hexadecimales usariamos readmemh, ambos permiten
leer la informacion contenida en un fichero en una memoria*/

/* Tiene un input de 12 bits el cual da la 
ubicacion del archivo y cuenta con un output de 8 bits
que dara lo que se almacene en memory */
