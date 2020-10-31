module testbench();
reg clk, reset, enable, A;
wire Y;
FFPT U1(clk, reset, enable, A, Y);

always
  #1 clk <= ~clk;

initial begin
  $display("FLIP FLOP TIPO T");
  $display("clk reset, enable A | Y");
  $display("-----------|---------");
  $monitor("%b %b %b %b |  %b", clk, reset, enable, A, Y);
    clk = 0; reset = 0; enable = 0; A = 0;
  #1 clk = 0; reset = 1; enable = 0; A = 0;
  #1 reset = 0; enable = 0; A = 0;
  #1 reset = 0; enable = 0; A = 0;
  #1 reset = 0; enable = 1; A = 0;
  #1 reset = 0; enable = 1; A = 1;
  #1 reset = 0; enable = 1; A = 1;
  #1 reset = 0; enable = 1; A = 1;
  #1 reset = 0; enable = 0; A = 1;
  #1 reset = 0; enable = 0; A = 0;
  #1 reset = 0; enable = 0; A = 0;
  #1 reset = 0; enable = 1; A = 1;
  #1 reset = 0; enable = 1; A = 1;
  #1 reset = 0; enable = 1; A = 1;
  #1 reset = 0; enable = 1; A = 1;
end

initial
#18 $finish;
initial begin
  $dumpfile("ejercicio2_tb.vcd");
  $dumpvars(0, testbench);
end
endmodule
