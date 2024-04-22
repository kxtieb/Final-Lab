`timescale 1ns/1ps
module stimulus ();
logic [15:0] seed, shift_seed;
logic clk, reset;
logic [31:0]vectornum;

 integer handle3;
   integer desc3;


lfsr dut(seed, clk, reset, shift_seed);


initial 
     begin	
	clk = 1'b1;
	forever #5 clk = ~clk;
end

initial
     begin
	// Gives output file name
	handle3 = $fopen("lfsr.out");
     desc3 = handle3;
     vectornum = 0;
	// Tells when to finish simulation
	#500 $display("HERE INITIAL");
     //#1000 $finish;		
end

   always @(negedge clk)
     begin
     //$fdisplay(desc3, "%b || %b", seed, shift_seed);
     $fdisplay(desc3, "%b", shift_seed);
     vectornum = vectornum + 1;
     if(vectornum === 65537) begin
     $display("Here");
     $finish;
     end
     end

initial
     begin
        #0 seed = 16'h3c28;
        #0 reset = 1'b1;
        #20 reset = 1'b0;
        
end

     endmodule