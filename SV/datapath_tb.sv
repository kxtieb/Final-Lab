`timescale 1ns / 1ps
module stimulus ();

   logic  clk;
   logic [63:0] grid, grid_evolve;
   

   
   integer handle3;
   integer desc3;
   
   // Instantiate DUT
    datapath dut (grid, grid_evolve);   
   
   // Setup the clock to toggle every 1 time units 
   initial 
     begin	
	clk = 1'b1;
	forever #5 clk = ~clk;
     end

   initial
     begin
	// Gives output file name
	handle3 = $fopen("datapath.out");
	// Tells when to finish simulation
	#500 $finish;		
     end

   always 
     begin
	desc3 = handle3;
	#5 $fdisplay(desc3, "--before--\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n --after-- \n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n\n", grid[63:56], grid[55:48], grid[47:40], grid[39:32], grid[31:24], grid[23:16], grid[15:8], grid[7:0], grid_evolve[63:56], grid_evolve[55:48], grid_evolve[47:40], grid_evolve[39:32], grid_evolve[31:24], grid_evolve[23:16], grid_evolve[15:8], grid_evolve[7:0]);
     end   
   
   initial 
     begin      
	#0   grid = 64'h0412_6424_0034_3C28;
     end

endmodule // FSM_tb