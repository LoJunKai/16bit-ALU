/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module alu16_12 (
    input [5:0] alufn,
    input [15:0] x,
    input [15:0] y,
    output reg [15:0] o,
    output reg z_out,
    output reg v_out,
    output reg n_out
  );
  
  
  
  wire [16-1:0] M_ytoystar_ystar;
  wire [1-1:0] M_ytoystar_cin;
  reg [16-1:0] M_ytoystar_y;
  reg [1-1:0] M_ytoystar_alufn0;
  ytoystar_16 ytoystar (
    .y(M_ytoystar_y),
    .alufn0(M_ytoystar_alufn0),
    .ystar(M_ytoystar_ystar),
    .cin(M_ytoystar_cin)
  );
  
  wire [16-1:0] M_sixteenbitadder_s;
  wire [1-1:0] M_sixteenbitadder_cout;
  reg [16-1:0] M_sixteenbitadder_x;
  reg [16-1:0] M_sixteenbitadder_y;
  reg [1-1:0] M_sixteenbitadder_cin;
  sixteen_bit_adder_17 sixteenbitadder (
    .x(M_sixteenbitadder_x),
    .y(M_sixteenbitadder_y),
    .cin(M_sixteenbitadder_cin),
    .s(M_sixteenbitadder_s),
    .cout(M_sixteenbitadder_cout)
  );
  
  wire [1-1:0] M_compare_cmp0;
  reg [1-1:0] M_compare_alufn2;
  reg [1-1:0] M_compare_alufn1;
  reg [1-1:0] M_compare_z;
  reg [1-1:0] M_compare_v;
  reg [1-1:0] M_compare_n;
  compare16_18 compare (
    .alufn2(M_compare_alufn2),
    .alufn1(M_compare_alufn1),
    .z(M_compare_z),
    .v(M_compare_v),
    .n(M_compare_n),
    .cmp0(M_compare_cmp0)
  );
  
  wire [16-1:0] M_shift_sh;
  reg [16-1:0] M_shift_x;
  reg [4-1:0] M_shift_y;
  reg [2-1:0] M_shift_alufn;
  shift16_19 shift (
    .x(M_shift_x),
    .y(M_shift_y),
    .alufn(M_shift_alufn),
    .sh(M_shift_sh)
  );
  
  wire [16-1:0] M_boole_o;
  reg [16-1:0] M_boole_x;
  reg [16-1:0] M_boole_y;
  reg [4-1:0] M_boole_alufn;
  boole16_20 boole (
    .x(M_boole_x),
    .y(M_boole_y),
    .alufn(M_boole_alufn),
    .o(M_boole_o)
  );
  
  wire [1-1:0] M_zvn_z;
  wire [1-1:0] M_zvn_v;
  wire [1-1:0] M_zvn_n;
  reg [16-1:0] M_zvn_s;
  reg [1-1:0] M_zvn_x15;
  reg [1-1:0] M_zvn_y15;
  reg [1-1:0] M_zvn_alufn0;
  find_zvn_21 zvn (
    .s(M_zvn_s),
    .x15(M_zvn_x15),
    .y15(M_zvn_y15),
    .alufn0(M_zvn_alufn0),
    .z(M_zvn_z),
    .v(M_zvn_v),
    .n(M_zvn_n)
  );
  
  reg [15:0] s;
  
  reg [15:0] c;
  
  reg [15:0] sh;
  
  reg [15:0] b;
  
  reg z;
  reg v;
  reg n;
  
  always @* begin
    M_ytoystar_y = y[0+15-:16];
    M_ytoystar_alufn0 = alufn[0+0-:1];
    M_sixteenbitadder_x[0+15-:16] = x[0+15-:16];
    M_sixteenbitadder_y[0+15-:16] = M_ytoystar_ystar[0+15-:16];
    M_sixteenbitadder_cin = M_ytoystar_cin[0+0-:1];
    s[0+15-:16] = M_sixteenbitadder_s[0+15-:16];
    M_zvn_alufn0 = alufn[0+0-:1];
    M_zvn_x15 = x[15+0-:1];
    M_zvn_y15 = y[15+0-:1];
    M_zvn_s = s;
    z = M_zvn_z;
    v = M_zvn_v;
    n = M_zvn_n;
    M_compare_alufn1 = alufn[1+0-:1];
    M_compare_alufn2 = alufn[2+0-:1];
    M_compare_z = z;
    M_compare_v = v;
    M_compare_n = n;
    c[0+0-:1] = M_compare_cmp0;
    c[1+14-:15] = 15'h0000;
    M_shift_x = x;
    M_shift_y = y[0+3-:4];
    M_shift_alufn = alufn[0+1-:2];
    sh = M_shift_sh;
    M_boole_x = x;
    M_boole_y = y;
    M_boole_alufn = alufn[0+3-:4];
    b = M_boole_o;
    
    case (alufn[4+1-:2])
      2'h0: begin
        o = s;
      end
      2'h1: begin
        o = b;
      end
      2'h2: begin
        o = sh;
      end
      2'h3: begin
        o = c;
      end
      default: begin
        o = 16'h0000;
      end
    endcase
    z_out = z;
    n_out = n;
    v_out = v;
    if (alufn == 6'h02) begin
      o = x * y;
    end
  end
endmodule