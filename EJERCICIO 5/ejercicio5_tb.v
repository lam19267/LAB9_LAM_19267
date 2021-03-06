module testbench();
reg[6:0] A;
wire[12:0] Y;
ROM U1(A, Y);

initial begin
  $display("ROM");
  $display(" A | Y");
  $display("-----------|---------");
  $monitor("%b |  %b", A, Y);

  #1  A = 7'b0000000;
  #1  A = 7'b00001x1;
  #1  A = 7'b00000x1;
  #1  A = 7'b00011x1;
  #1  A = 7'b00010x1;
  #1  A = 7'b0010xx1;
  #1  A = 7'b0011xx1;
  #1  A = 7'b0100xx1;
  #1  A = 7'b0101xx1;
  #1  A = 7'b0110xx1;
  #1  A = 7'b0111xx1;
  #1  A = 7'b1000x11;
  #1  A = 7'b1000x01;
  #1  A = 7'b1001x11;
  #1  A = 7'b1001x01;
  #1  A = 7'b1010xx1;
  #1  A = 7'b1011xx1;
  #1  A = 7'b1100xx1;
  #1  A = 7'b1101xx1;
  #1  A = 7'b1110xx1;
  #1  A = 7'b1111111;
  #1  A = 7'b1010110;
  #1  A = 7'b1011011;
  #1  A = 7'b1000100;
  #1  A = 7'b1010101;
  #1  A = 7'b1101110;

end

initial
#30 $finish;
initial begin
  $dumpfile("ejercicio5_tb.vcd");
  $dumpvars(0, testbench);
end
endmodule
