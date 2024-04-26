`timescale 1ns / 1ps
module stimulus ();

   logic  clk;
   logic [63:0] seed, grid_evolve;
   logic reset, start, lfsr_load;

   
   integer handle3;
   integer desc3;
   assign seed = 64'h0412_6424_0034_3C28;
   // Instantiate DUT
    game dut (clk, reset, start, lfsr_load, seed, grid_evolve);   
   
   // Setup the clock to toggle every 1 time units 
   initial 
     begin	
	clk = 1'b1;
	forever #5 clk = ~clk;
     end

   initial
     begin
	// Gives output file name
	handle3 = $fopen("game.out");
	// Tells when to finish simulation
  desc3 = handle3;
  $fdisplay(desc3, "--before--\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n", seed[63:56], seed[55:48], seed[47:40], seed[39:32], seed[31:24], seed[23:16], seed[15:8], seed[7:0]);
	#500 $finish;		
     end

   always @(negedge clk)
     begin
	desc3 = handle3;
        $fdisplay(desc3, "--after-- \n%b\n%b\n%b\n%b\n%b\n%b\n%b\n%b\n\n",grid_evolve[63:56], grid_evolve[55:48], grid_evolve[47:40], grid_evolve[39:32], grid_evolve[31:24], grid_evolve[23:16], grid_evolve[15:8], grid_evolve[7:0]);
     end   
   
   initial 
     begin      
    #0 reset = 1'b1;    
    #0 start = 1'b0;
    #20 reset = 1'b0;
    #0 start = 1'b1;
     end

endmodule // FSM_tb