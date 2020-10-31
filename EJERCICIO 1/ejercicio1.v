module FFP1(input wire clk, reset, enable, A, output reg Y);
 always @ (posedge clk or posedge reset) begin
    if (reset)
      Y <= 1'b0;
    else if(enable)
      Y <= A;
  end
endmodule

module FFP2(input wire clk, reset, enable,input wire[1:0] A, output wire[1:0] Y);
  FFP1 F1(clk, reset, enable, A[0], Y[0]);
  FFP1 F2(clk, reset, enable, A[1], Y[1]);
endmodule

module FFP4(input wire clk, reset, enable,input wire[3:0] A, output wire[3:0] Y);
  FFP1 F3(clk, reset, enable, A[0], Y[0]);
  FFP1 F4(clk, reset, enable, A[1], Y[1]);
  FFP1 F5(clk, reset, enable, A[2], Y[2]);
  FFP1 F6(clk, reset, enable, A[3], Y[3]);
endmodule
