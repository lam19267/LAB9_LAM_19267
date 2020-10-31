module testbench();
reg clk, reset, enable, A;
reg[1:0]A1;
reg[3:0]A2;
wire Y;
wire[1:0] Y1;
wire[3:0] Y2;

FFP1 U1(clk, reset, enable, A, Y);
FFP2 U2(clk, reset, enable, A1, Y1);
FFP4 U3(clk, reset, enable, A2, Y2);

always
  #1 clk <= ~clk;

initial begin
  $display("FLIP FLOP 1");
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
end

initial begin
  #12
  $display("");
  $display("FLIP FLOP 2");
  $display("clk reset, enable A | Y");
  $display("-----------|---------");
  $monitor("%b %b %b %b |  %b", clk, reset, enable, A1, Y1);
      clk = 0; reset = 0; enable = 0; A1 = 00;
    #1 reset = 1; enable = 0; A1 =00;
    #1 reset = 0; enable = 0; A1 = 00;
    #1 reset = 0; enable = 0; A1 = 00;
    #1 reset = 0; enable = 1; A1 = 00;
    #1 reset = 0; enable = 1; A1 = 01;
    #1 reset = 0; enable = 1; A1 = 01;
    #1 reset = 0; enable = 1; A1 = 10;
    #1 reset = 0; enable = 1; A1 = 10;
    #1 reset = 0; enable = 1; A1 = 11;
  end

  initial begin
    #23
    $display("");
    $display("FLIP FLOP 4");
    $display("clk reset, enable A | Y");
    $display("-----------|---------");
    $monitor("%b %b %b %b |  %b", clk, reset, enable, A2, Y2);
        clk = 0; reset = 0; enable = 0; A2 = 0000;
      #1 reset = 1; enable = 0; A2 =0000;
      #1 reset = 0; enable = 0; A2 = 0000;
      #1 reset = 0; enable = 0; A2 = 0000;
      #1 reset = 0; enable = 1; A2 = 0000;
      #1 reset = 0; enable = 1; A2 = 0001;
      #1 reset = 0; enable = 1; A2 = 0001;
      #1 reset = 0; enable = 1; A2 = 0010;
      #1 reset = 0; enable = 1; A2 = 0010;
      #1 reset = 0; enable = 1; A2 = 0011;
      #1 reset = 0; enable = 1; A2 = 0011;
      #1 reset = 0; enable = 1; A2 = 0100;
      #1 reset = 0; enable = 1; A2 = 0100;
      #1 reset = 0; enable = 1; A2 = 0101;
      #1 reset = 0; enable = 1; A2 = 0101;

    end

  initial
  #40 $finish;
initial begin
    $dumpfile("ejercicio_tb.vcd");
    $dumpvars(0, testbench);
  end
endmodule
