module day10 (
  input          clk,
  input          reset,
  input          load_i,
  input[3:0]     load_val_i,

  output    wire[3:0]     count_out
);

  reg [3:0] load_ff;

  always @(posedge clk or posedge reset)
    if (reset)
      load_ff <= 4'h0;
    else if (load_i)
      load_ff <= load_val_i;

  reg [3:0] count_ff;
  wire [3:0] nxt_count;

  always @(posedge clk or posedge reset)
    if (reset)
      count_ff <= 4'h0;
    else
      count_ff <= nxt_count;

  assign nxt_count = load_i ? load_val_i :
                              (count_ff == 4'hF) ? load_ff :
                              count_ff + 4'h1;

  assign count_out = count_ff;

endmodule