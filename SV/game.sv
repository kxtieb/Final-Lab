module game(input logic clk, reset, en, [63:0]c, output logic [63:0]grid_evolve);


    datapath dut( grid, grid_evolve );

    flopenr #(64)dut2 (clk, reset, en, grid_evolve, grid);

endmodule

