/**
  @brief A fibonacci linear feedback shift register module

  @input clk    clock
  @input nReset active-low reset
  @input init   initial value following a reset
  @output out   current output
*/
module Exercise2 (
    input clk,
    input nReset,
    input [15:0] init,
    output logic [15:0] out
);

 logic [15:0] Value; 

 always @(posedge clk)
 begin
 if (!nReset)
 Value <= init;
 else
 Value <= {Value[14:0], Value[15] ^ Value[13] ^ Value[12] ^ Value[10]};
 end 

 assign out = Value; 


endmodule
