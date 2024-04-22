module game(input logic clk, reset, start, input logic [63:0]seed, output logic [63:0]grid_evolve);

logic [63:0] grid;

    datapath dut( grid, grid_evolve );

    flopenr #(64)dut2 (clk, rst, en, grid_evolve, lfsr_out, grid);

endmodule

