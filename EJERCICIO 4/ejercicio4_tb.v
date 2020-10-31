module testbench();
reg enable;
reg[3:0] A;
wire[3:0] Y;
BT U1(enable, A, Y);

initial begin
  $display("BUFFER TRIESTADO");
  $display("enable A | Y");
  $display("-----------|---------");
  $monitor("%b %b |  %b", enable, A, Y);
  enable = 0; A = 0000;
  #1 enable = 0; A = 0000;
  #1 enable = 1; A = 0000;
  #1 enable = 1; A = 0001;
  #1 enable = 1; A = 0010;
  #1 enable = 1; A = 0011;
  #1 enable = 1; A = 0100;
  #1 enable = 1; A = 0101;
  #1 enable = 1; A = 0110;
  #1 enable = 1; A = 0111;
  #1 enable = 1; A = 1000;
  #1 enable = 1; A = 1001;
  #1 enable = 1; A = 1010;
  #1 enable = 1; A = 1011;
  #1 enable = 1; A = 1100;
  #1 enable = 1; A = 1101;
  #1 enable = 1; A = 1110;
  #1 enable = 1; A = 1111;

end

initial
#20 $finish;
initial begin
  $dumpfile("ejercicio4_tb.vcd");
  $dumpvars(0, testbench);
end
endmodule
