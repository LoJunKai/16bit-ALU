/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module shiftleft16_23 (
    input [15:0] x,
    input [3:0] y,
    output reg [15:0] sh
  );
  
  
  
  reg [15:0] a;
  reg [15:0] b;
  reg [15:0] c;
  
  always @* begin
    
    case (y[3+0-:1])
      1'h0: begin
        a = x;
      end
      1'h1: begin
        a[8+7-:8] = x[0+7-:8];
        a[0+7-:8] = 8'h00;
      end
      default: begin
        a = x;
      end
    endcase
    
    case (y[2+0-:1])
      1'h0: begin
        b = a;
      end
      1'h1: begin
        b[4+11-:12] = a[0+11-:12];
        b[0+3-:4] = 4'h0;
      end
      default: begin
        b = a;
      end
    endcase
    
    case (y[1+0-:1])
      1'h0: begin
        c = b;
      end
      1'h1: begin
        c[2+13-:14] = b[0+13-:14];
        c[0+1-:2] = 2'h0;
      end
      default: begin
        c = b;
      end
    endcase
    
    case (y[0+0-:1])
      1'h0: begin
        sh = c;
      end
      1'h1: begin
        sh[1+14-:15] = c[0+14-:15];
        sh[0+0-:1] = 1'h0;
      end
      default: begin
        sh = c;
      end
    endcase
  end
endmodule
