`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:30:15 11/05/2022
// Design Name:   alu_8bit
// Module Name:   C:/Users/DELL/Documents/newbie/alu_8bit/alu_8bit_tb.v
// Project Name:  alu_8bit
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: alu_8bit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module alu_8bit_tb;

	// Inputs
	reg [7:0] a_i;
	reg [7:0] b_i;
	reg [2:0] op_i;

	// Outputs
	wire [7:0] alu_o;

	// Instantiate the Unit Under Test (UUT)
	alu_8bit uut (
		.a_i(a_i), 
		.b_i(b_i), 
		.op_i(op_i), 
		.alu_o(alu_o)
	);

	initial begin
		// Initialize Inputs
		op_i = 3'b000; a_i = 8'hAA; b_i = 8'hAA;
		#10;
		op_i = 3'b001; a_i = 8'hAA; b_i = 8'hAA;
		#10;
		op_i = 3'b010; a_i = 8'hAA; b_i = 8'hAA;
		#10;
		op_i = 3'b011; a_i = 8'hAA; b_i = 8'hAA;
		#10;
		op_i = 3'b100; a_i = 8'hAA; b_i = 8'hAA;
		#10;
		op_i = 3'b101; a_i = 8'hAA; b_i = 8'hAA;
		#10;
		op_i = 3'b110; a_i = 8'hAA; b_i = 8'hAA;
		#10;
		op_i = 3'b111; a_i = 8'hFF; b_i = 8'hFF;
		#10;
		
		
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

