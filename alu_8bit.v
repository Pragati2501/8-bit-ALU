`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:35:34 11/05/2022 
// Design Name: 
// Module Name:    alu_8bit 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module alu_8bit(a_i, b_i,op_i,alu_o);
input [7:0] a_i;
input[7:0] b_i;
input [2:0] op_i;
output reg [7:0] alu_o;
	
localparam op_add = 3'b000;
localparam op_sub = 3'b001;
localparam op_sll = 3'b010;
localparam op_lsr = 3'b011;
localparam op_and = 3'b100;
localparam op_or = 3'b101;
localparam op_xor = 3'b110;
localparam op_equal = 3'b111;


always@(*)
begin
  case(op_i)
	op_add : alu_o = a_i + b_i;
	op_sub : alu_o = a_i - b_i;
	op_sll : alu_o = a_i << b_i;
	op_lsr : alu_o = a_i >> b_i;
	op_and : alu_o = a_i & b_i;
	op_or :  alu_o = a_i | b_i;
	op_xor : alu_o = a_i ^ b_i;
	op_equal : alu_o = 0;
  endcase
end

endmodule
