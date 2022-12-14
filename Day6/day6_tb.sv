module day6_tb ();

  logic         clk;
  logic         reset;
  logic         in;
  logic [3:0]   out;

  day6 DAY6 (.*);
   
  initial begin
    $dumpfile("day6.vcd");
    $dumpvars(1, day6_tb);
  end

  always begin
    clk = 1'b1;
    #5;
    clk = 1'b0;
    #5;
  end

  initial begin
    reset <= 1'b1;
    in <= 1'b0;
    @(posedge clk);
    reset <= 1'b0;
    @(posedge clk);
    for (int i=0; i<16; i=i+1) begin
      in <= $random%2;
      @(posedge clk);
    end
    $finish();
  end

endmodule
