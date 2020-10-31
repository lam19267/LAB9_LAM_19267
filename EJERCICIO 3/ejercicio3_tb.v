module testbench();
reg clk, reset, enable, J, K;
wire Y;
FFPJK U1(clk, reset, enable, J, K, Y);

always
  #1 clk <= ~clk;

initial begin
  $display("FLIP FLOP TIPO JK");
  $display("clk reset, enable A | Y");
  $display("-----------|---------");
  $monitor("%b %b %b %b %b |  %b", clk, reset, enable, J, K, Y);
    clk = 0; reset = 0; enable = 0; J = 0; K = 0;
  #1 clk = 0; reset = 1; enable = 0; J = 0; K = 0;
  #1 reset = 0; enable = 1; J = 0; K = 0;
  #1 reset = 0; enable = 1; J = 0; K = 0;
  #1 reset = 0; enable = 1; J = 1; K = 0;
  #1 reset = 0; enable = 1; J = 1; K = 0;
  #1 reset = 0; enable = 1; J = 0; K = 1;
  #1 reset = 0; enable = 1; J = 0; K = 1;
  #1 reset = 0; enable = 1; J = 1; K = 1;
  #1 reset = 0; enable = 1; J = 1; K = 1;
  #1 reset = 0; enable = 1; J = 0; K = 0;
end

initial
#18 $finish;
initial begin
  $dumpfile("ejercicio3_tb.vcd");
  $dumpvars(0, testbench);
end
endmodule
