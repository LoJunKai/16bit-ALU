/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module ytoystar_6 (
    input [15:0] y,
    input alufn0,
    output reg [15:0] ystar,
    output reg cin
  );
  
  
  
  always @* begin
    ystar[0+15-:16] = y[0+15-:16] ^ {5'h10{alufn0}};
    cin = alufn0;
  end
endmodule
