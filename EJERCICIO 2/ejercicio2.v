module FFP1(input wire clk, reset, enable, A, output reg Y);
 always @ (posedge clk or posedge reset) begin
    if (reset)
      Y <= 1'b0;
    else if(enable)
      Y <= A;
  end
endmodule

module FFPT(input wire clk, reset, enable, A, output wire Y);
  FFP1 U1(clk, reset, enable, ~Y, Y);
endmodule
