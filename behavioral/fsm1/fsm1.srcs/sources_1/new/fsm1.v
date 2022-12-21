`timescale 1ns / 1ps





module fsm(
 output  reg lighton,
    input button,
    input Clock,
    input Reset
    );
  reg [1:0]current_state, next_state;
 parameter
  offState = 2'b00,
  on1=2'b01,
   on2=2'b10,
   on3= 2'b11;
always @ (posedge Clock or negedge Reset) 
begin: STATE_MEMORY
 if (!Reset)
 current_state <=offState;
 else
 current_state<=next_state;
end

/* NEXT STATE LOG?C BLOCK)*/
always @(current_state )
 begin:Next_State_Logic
 next_state[0]=(button & ~current_state[0]&~current_state[1]) | (current_state[1]&~current_state[0]);
next_state[1]=current_state[1]^current_state[0];
end
/*output logic*/
always @ (current_state ) // moore machine
begin: OUTPUT_LOGIC
lighton=current_state[1]|current_state[0];
end



    
endmodule
