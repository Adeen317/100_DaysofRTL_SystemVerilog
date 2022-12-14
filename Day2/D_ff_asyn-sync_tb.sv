//Day 5
module d_flipflop_syn_tb;
  logic D;
  logic clk;
  logic q;
  logic reset;
  d_flipflop_syn gtel(.D(D),
              .clk(clk),
              .reset(reset),
                  .q(q));
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  initial begin
    clk=0;
    forever #5 clk=~clk;
  end
  initial begin
    reset=1;
    D<=1;
    #10
    reset=1;
    D<=1;
    #10
    D<=0;
    #10
    reset=1;
    D<=1;
  end
  initial begin
    #100 $finish;
  end
endmodule
