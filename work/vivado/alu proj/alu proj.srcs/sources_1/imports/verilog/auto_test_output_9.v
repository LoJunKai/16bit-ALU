/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module auto_test_output_9 (
    input [3:0] auto_case,
    output reg auto_pass_fail,
    output reg [15:0] auto_X,
    output reg [15:0] auto_Y,
    output reg [15:0] alu_ans
  );
  
  
  
  reg [5:0] alufn;
  
  reg [15:0] x;
  
  reg [15:0] y;
  
  reg [15:0] nxor;
  
  reg [15:0] auto_ans;
  
  wire [16-1:0] M_calculate_out;
  reg [16-1:0] M_calculate_x;
  reg [24-1:0] M_calculate_io_dip;
  alucalc_5 calculate (
    .x(M_calculate_x),
    .io_dip(M_calculate_io_dip),
    .out(M_calculate_out)
  );
  
  always @* begin
    
    case (auto_case)
      1'h0: begin
        alufn = 6'h00;
        x = 16'h0f0f;
        y = 16'hf0f0;
        auto_ans = 16'hffff;
      end
      1'h1: begin
        alufn = 6'h01;
        x = 16'hffff;
        y = 16'hf00f;
        auto_ans = 16'h0ff0;
      end
      2'h2: begin
        alufn = 6'h18;
        x = 16'hfff0;
        y = 16'h0fff;
        auto_ans = 16'h0ff0;
      end
      2'h3: begin
        alufn = 6'h1e;
        x = 16'hf0f0;
        y = 16'hff00;
        auto_ans = 16'hfff0;
      end
      3'h4: begin
        alufn = 6'h16;
        x = 16'haaaa;
        y = 16'h5555;
        auto_ans = 16'hffff;
      end
      3'h5: begin
        alufn = 6'h1a;
        x = 16'h0ff0;
        y = 16'h0004;
        auto_ans = 16'h0ff0;
      end
      3'h6: begin
        alufn = 6'h20;
        x = 16'h00ff;
        y = 16'h0008;
        auto_ans = 16'hff00;
      end
      3'h7: begin
        alufn = 6'h21;
        x = 16'hff00;
        y = 16'h0008;
        auto_ans = 16'h00ff;
      end
      4'h8: begin
        alufn = 6'h23;
        x = 16'hff00;
        y = 16'h0004;
        auto_ans = 16'hfff0;
      end
      4'h9: begin
        alufn = 6'h33;
        x = 16'h0ff0;
        y = 16'h0ff0;
        auto_ans = 16'h0001;
      end
      4'ha: begin
        alufn = 6'h35;
        x = 16'h0ff0;
        y = 16'h000f;
        auto_ans = 16'h0001;
      end
      4'hb: begin
        alufn = 6'h37;
        x = 16'h0ff0;
        y = 16'h000f;
        auto_ans = 16'h0001;
      end
      4'hc: begin
        alufn = 6'h02;
        x = 16'h0ff0;
        y = 16'h0004;
        auto_ans = 16'h3fc0;
      end
      default: begin
        alufn = 6'h00;
        x = 16'h0000;
        y = 16'h0000;
        auto_ans = 16'h0000;
      end
    endcase
    M_calculate_x = x;
    M_calculate_io_dip = {2'h0, alufn, y};
    alu_ans = M_calculate_out;
    auto_X = x;
    auto_Y = y;
    nxor = ~(M_calculate_out ^ auto_ans);
    auto_pass_fail = (&(nxor));
  end
endmodule