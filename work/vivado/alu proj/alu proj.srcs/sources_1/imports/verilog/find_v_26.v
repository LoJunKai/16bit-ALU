/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module find_v_26 (
    input x15,
    input y15,
    input s15,
    output reg v
  );
  
  
  
  reg xinv;
  reg yinv;
  reg sinv;
  reg i1;
  reg i2;
  
  always @* begin
    xinv = !x15;
    yinv = !y15;
    sinv = !s15;
    i1 = xinv & yinv & s15;
    i2 = x15 & y15 & sinv;
    v = i1 | i2;
  end
endmodule