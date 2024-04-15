module game(input logic clk, reset, en, input logic [63:0]seed, output logic [63:0]grid_evolve);

logic [63:0] grid;

    datapath dut( grid, grid_evolve );

    flopenr #(64)dut2 (clk, reset, en, grid_evolve, seed, grid);

endmodule

