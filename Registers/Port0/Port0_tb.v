`timescale 1ns/1ns
module Port0_tb();

reg clk, reset, read, write;
reg[15:0] bus_in;

wire[15:0] bus_out;
wire[15:0] out;

Port0 TB(clk, reset, read, write, bus_in, bus_out, out);


initial // Clock generator
  begin
    clk = 1;
    forever #10 clk = !clk;
  end

initial begin

//as an output
read = 0;
write = 0;
reset = 0;
bus_in = 16'hffff;
#3 reset = 1;
#3 reset = 0;
#10 read = 1;
write = 1;
#10 read = 0;



end
endmodule
