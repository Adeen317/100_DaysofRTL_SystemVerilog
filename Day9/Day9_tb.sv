module day9_tb ();

  parameter vec = 4;

  logic [vec-1:0] bin_in;
  logic [vec-1:0] gray_out;

  day9 #(vec) DAY9 (.*);

initial begin
    $dumpfile("day9.vcd");
    $dumpvars(1, day9_tb);
  end

  initial begin
    for (int i=0; i<10; i=i+1) begin
      bin_in = i;
      #5;
    end
    $finish();
  end

endmodule
