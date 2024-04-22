module lfsr(seed, clk, reset, shift_seed);
input logic [15:0]seed;
     input logic clk, reset;
     output logic [15:0]shift_seed;

     always @(posedge clk) begin
        if(reset) shift_seed[15:0] <= seed[15:0];
     else shift_seed <= {shift_seed[14:0],(shift_seed[3]^~shift_seed[12]^~shift_seed[14]^~shift_seed[15])};
     
     
     end;
endmodule

module lfsr_16x4 (input logic [63:0] seed, input logic clk, reset, output logic [63:0] shift_seedAll);

logic [15:0] shift_seed1, shift_seed2, shift_seed3, shift_seed4;

lfsr dut1(seed [15:0], clk, reset, shift_seed1);
lfsr dut2(seed [31:16], clk, reset, shift_seed2);
lfsr dut3(seed [47:32], clk, reset, shift_seed3);
lfsr dut4(seed [63:48], clk, reset, shift_seed4);
//inputs and outputs for the full seed size (64 bits)
assign shift_seedAll = {shift_seed4, shift_seed3, shift_seed2, shift_seed1};


//either build a 64 bit version using your smaller implementation above
//or use the same methods from the xilinx document to build a full
//64 bit version

endmodule
