//Day 5
module d_flipflop(D,clk,reset,q);
  input logic D,clk,reset;
  output logic q;
  
  always@(negedge clk or posedge reset)
    begin
      if (reset && D)
      q<=1;
      else 
        if (!D)
          q<=0;
      else 
        if (!reset)
        q<=0;
      else
        q<=q;
    end
endmodule
