/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alucalc_5 (
    input [15:0] x,
    input [23:0] io_dip,
    output reg [15:0] out
  );
  
  
  
  wire [16-1:0] M_alu_o;
  reg [6-1:0] M_alu_alufn;
  reg [16-1:0] M_alu_x;
  reg [16-1:0] M_alu_y;
  alu16_11 alu (
    .alufn(M_alu_alufn),
    .x(M_alu_x),
    .y(M_alu_y),
    .o(M_alu_o)
  );
  
  always @* begin
    M_alu_alufn = io_dip[16+0+5-:6];
    M_alu_x = x;
    M_alu_y = {io_dip[8+7-:8], io_dip[0+7-:8]};
    out = M_alu_o;
  end
endmodule
