`timescale 1ns / 1ps
module stimulus ();

   logic  clk;
   logic  reset;
   logic start;
   logic lfsr_load;
   
   logic  lfsr_rst, rst, en;
   
   integer handle3;
   integer desc3;
   
   // Instantiate DUT
   FSM dut (clk, reset, start, lfsr_load, lfsr_rst, rst, en);   
   
   // Setup the clock to toggle every 1 time units 
   initial 
     begin	
	clk = 1'b1;
	forever #5 clk = ~clk;
     end

   initial
     begin
	// Gives output file name
	handle3 = $fopen("fsm.out");
	// Tells when to finish simulation
	#500 $finish;		
     end

   always 
     begin
	desc3 = handle3;
	#5 $fdisplay(desc3, "%b %b || %b %b %b", 
		     start, lfsr_load,  lfsr_rst, rst, en);
     end   
   
   initial 
     begin      
	#0   reset = 1'b1;
	#41  reset = 1'b0;	
     #20 start = 1'b1;
     #40 lfsr_load = 1'b1;
	
     end

endmodule // FSM_tb