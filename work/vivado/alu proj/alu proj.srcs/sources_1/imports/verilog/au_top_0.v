/*
   This file was generated automatically by Alchitry Labs version 1.2.1.
   Do not edit this file directly. Instead edit the original Lucid source.
   This is a temporary file and any changes made to it will be destroyed.
*/

module au_top_0 (
    input clk,
    input [23:0] io_dip,
    input [4:0] io_button,
    output reg [23:0] io_led,
    input rst_n,
    output reg [7:0] led,
    input usb_rx,
    output reg usb_tx,
    output reg [7:0] io_seg,
    output reg [3:0] io_sel
  );
  
  
  
  reg M_state_d, M_state_q = 1'h0;
  reg [15:0] M_storeX_d, M_storeX_q = 1'h0;
  wire [1-1:0] M_button_cond_out;
  reg [1-1:0] M_button_cond_in;
  button_conditioner_1 button_cond (
    .clk(clk),
    .in(M_button_cond_in),
    .out(M_button_cond_out)
  );
  wire [1-1:0] M_button_edge_out;
  reg [1-1:0] M_button_edge_in;
  edge_detector_2 button_edge (
    .clk(clk),
    .in(M_button_edge_in),
    .out(M_button_edge_out)
  );
  
  wire [16-1:0] M_calculate_out;
  reg [16-1:0] M_calculate_x;
  reg [24-1:0] M_calculate_io_dip;
  alucalc_3 calculate (
    .x(M_calculate_x),
    .io_dip(M_calculate_io_dip),
    .out(M_calculate_out)
  );
  
  always @* begin
    M_storeX_d = M_storeX_q;
    M_state_d = M_state_q;
    
    usb_tx = usb_rx;
    io_seg = 8'h00;
    io_sel = 8'hff;
    io_sel = 4'hf;
    led = 8'h00;
    M_button_cond_in = io_button[1+0-:1];
    M_button_edge_in = M_button_cond_out;
    M_calculate_x = 16'h0000;
    M_calculate_io_dip = 24'h000000;
    if (M_button_edge_out) begin
      M_state_d = ~M_state_q;
    end
    if (M_state_q) begin
      M_calculate_x = M_storeX_q;
      M_calculate_io_dip = io_dip[0+23-:24];
      io_led[0+15-:16] = M_calculate_out;
    end else begin
      M_storeX_d = io_dip[0+15-:16];
      io_led = 24'h000000;
    end
  end
  
  always @(posedge clk) begin
    M_state_q <= M_state_d;
    M_storeX_q <= M_storeX_d;
  end
  
endmodule
