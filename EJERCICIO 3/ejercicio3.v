module FFP1(input wire clk, reset, enable, A, output reg Y);
 always @ (posedge clk or posedge reset) begin
    if (reset)
      Y <= 1'b0;
    else if(enable)
      Y <= A;
  end
endmodule

module FFPJK(input wire clk, reset, enable, J, K, output wire Y);
  wire N1, N2, A1, A2, O1;
  not(N1, K);
  not(N2, Y);
  and(A1, Y, N1);
  and(A2, N2, J);
  or(O1, A1, A2);
  FFP1 U1(clk, reset, enable, O1, Y);
endmodule
