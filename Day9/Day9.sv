// Binary to gray code

module day9 #(
  parameter vec= 4
)(
  input     wire[vec-1:0] bin_in,
  output    wire[vec-1:0] gray_out

);

  assign gray_out[vec-1] = bin_in[vec-1];

  genvar i;
  for (i=0; i<=vec-2; i=i+1)
    assign gray_out[i] = bin_in[i+1] ^ bin_in[i];

endmodule
