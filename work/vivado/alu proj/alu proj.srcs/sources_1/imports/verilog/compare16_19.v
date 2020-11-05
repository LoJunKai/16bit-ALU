/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module compare16_19 (
    input alufn2,
    input alufn1,
    input z,
    input v,
    input n,
    output reg [15:0] cmp
  );
  
  
  
  reg i1;
  reg i2;
  reg nvxor;
  
  always @* begin
    i1 = alufn1 & z;
    nvxor = n ^ v;
    i2 = nvxor & alufn2;
    cmp[0+0-:1] = i1 | i2;
    cmp[1+14-:15] = 15'h0000;
  end
endmodule
