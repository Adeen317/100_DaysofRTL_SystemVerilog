//Day 5
module d_flipflop_syn(D,clk,reset,q);
  input logic D,clk,reset;
  output logic q;
  
  always@(negedge clk)
    begin
      if (reset)
      q<=D;
      else
        q<=0;
    end
endmodule
