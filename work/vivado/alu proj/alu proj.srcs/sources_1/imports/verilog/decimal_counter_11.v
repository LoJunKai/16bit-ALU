/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module decimal_counter_11 (
    input [3:0] binary,
    output reg [7:0] decimal
  );
  
  
  
  always @* begin
    if (binary <= 4'h9) begin
      decimal[0+3-:4] = binary;
      decimal[4+3-:4] = 4'h0;
    end else begin
      decimal[0+3-:4] = binary - 4'ha;
      decimal[4+3-:4] = 4'h1;
    end
  end
endmodule
