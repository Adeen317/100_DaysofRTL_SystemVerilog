// An edge detector
module opcode(a,x,clk,counter,ct,out,counter1,ct1,out1);
  input a,x,clk;
  output counter,ct,out;
  logic counter=0;
  logic ct=0;
  always@(posedge clk)begin
    if (x) counter<=1'b0;
    else if (a) 
      counter<=counter+1;
    end
  always@(posedge clk) begin
    if (x) ct<=1'b0;
    else if(a)
      #1 ct<=ct+1;
  end
  assign out=counter&ct;
  
  output counter1,ct1,out1;
  logic counter1=0;
  logic ct1=0;
  always@(posedge clk)begin
    if (x) counter1<=1'b0;
    else if (a) 
      counter1<=counter1+1;
    end
  always@(posedge clk) begin
    if (x) ct1<=1'b0;
    else if(a)
      #1 ct1<=ct1+1;
  end
  assign #1 out1=counter1&ct1;
endmodule
