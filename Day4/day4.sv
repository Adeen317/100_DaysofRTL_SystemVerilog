// A simple ALU
typedef logic [2:0] define_type;
module day4 (
  input     logic [7:0]   a_i,
  input     logic [7:0]   b_i,
  define_type   op_i,

  output    logic [7:0]   alu_o
);

  define_type  OP_ADD = 0;
  define_type  OP_SUB = 1;
  define_type  OP_SLL = 2;
  define_type  OP_SRL = 3;
  define_type  OP_AND = 4;
  define_type  OP_OR  = 5;
  define_type  OP_XOR = 6;


  logic a=0;

  function void print();
    $display("The Value of result =",alu_o);
  endfunction
  
  always_comb begin
    alu_o=(op_i==OP_ADD)?a_i+ b_i:(op_i==OP_SUB)?a_i-b_i:(op_i==OP_SLL)?a_i[7:0]<<b_i[2:0]:(op_i==OP_SRL)?a_i[7:0]>>b_i[2:0]:(op_i==OP_AND)?a_i[7:0]&b_i[7:0]:(op_i==OP_OR)?a_i | b_i:(op_i==OP_XOR)?a_i ^ b_i:a;
    print();
    
  end

endmodule
