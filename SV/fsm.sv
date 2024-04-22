module FSM (clk, reset, start, lfsr_load, lfsr_rst, rst, en);

   input logic  clk;
   input logic  reset;
   input logic 	start;
   input logic lfsr_load;
   
   output logic lfsr_rst, rst, en;

   typedef enum 	logic [1:0] {S0, S1, S2} statetype;
   statetype state, nextstate;
   
   // state register
   always_ff @(posedge clk, posedge reset)
     if (reset) state <= S0;
     else       state <= nextstate;
   
   // next state logic
   always_comb
     case (state)
       S0: begin
	  lfsr_rst = 1;
    rst = 1;
    en = 0;	  
    if (~start && lfsr_load) nextstate <= S2;
    else if (start) nextstate <= S1;
    else nextstate <= S0;
       end
       S1: begin
	   lfsr_rst = 0;
    rst = 0;
    en = 1;	  	  
	 if (lfsr_load)  nextstate <= S2;
    else  nextstate <= S1;
       end
       S2: begin
	   lfsr_rst = 0;
    rst = 1;
    en = 1;	  	  
	  if (start) nextstate <= S1;
    else nextstate <= S2;
       end
       default: begin 
         lfsr_rst = 1;
    rst = 1;
    en = 0;	 	  
	  nextstate <= S0;
       end
     endcase
   
endmodule