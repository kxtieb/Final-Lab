module game(input logic clk, reset, start, lfsr_load, input logic [63:0]seed, output logic [63:0]grid_evolve);

logic [63:0] grid, lfsr_out; 
logic lfsr_rst, rst, en; 

    datapath dut( grid, grid_evolve );

    flopenr #(64)dut2 (clk, rst, en, grid_evolve, lfsr_out, grid);

    lfsr_16x4 dut3 (seed, clk, reset, lfsr_out);

    FSM dut4 (clk, reset, start, lfsr_load, lfsr_rst, rst, en);

endmodule

