module counter #(
  parameter WIDTH = 8
)(
  // interface signals
  input  logic             clk,      // clock 
  input  logic             rst,      // reset 
  input  logic             ld,       // load counter from data
  input  logic [WIDTH-1:0] v,        // value to preload
  output logic [WIDTH-1:0] count     // count output
);

//Solution to step 1
/*always_ff @ (posedge clk)
  if (rst) count <= {WIDTH{1'b0}};
  else     count <= ld ? v : count + {{WIDTH-1{1'b0}},1'b1};*/

//Solution to step 2
always_ff @ (posedge clk)
    if (rst) count <= {WIDTH{1'b0}};
    else begin
                count <= count + {{WIDTH-1{1'b0}}, ld};
    end
endmodule
