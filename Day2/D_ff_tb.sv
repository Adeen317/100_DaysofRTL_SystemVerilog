//Day 5
module d_flipflop_tb;
  logic D;
  logic clk;
  logic q;
  d_flipflop gtel(.D(D),
              .clk(clk),
                  .q(q));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  initial begin
    D=1'b1;
    #1
    D=1'b0;
    #5 $stop();
    #100 $finish();
  end
endmodule
