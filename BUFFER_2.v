module BUFFER_2 (
	input dataIn_wE_BR,
	input dataIn_W_ram,
	input dataIn_R_ram,
	input [0:31] dataIn_DW_alu,
	input [0:31]dataIn_DR1,
	input [0:31]dataIn_DR2,
	input clk,
	output reg dataOut_wE_BR,
	output reg dataOut_W_ram,
	output reg dataOut_R_ram,
	output reg [0:31]dataOut_DW_alu,
	output reg [0:31]dataOut_DR1,
	output reg [0:31]dataOut_DR2
);

reg [0:5] buffer; 

always @(posedge clk) begin
	buffer[0] <= dataIn_wE_BR;
	buffer[1] <= dataIn_W_ram;
	buffer[2] <= dataIn_R_ram;
	buffer[3] <= dataIn_DW_alu;
	buffer[4] <= dataIn_DR1;
	buffer[5] <= dataIn_DR2;
	dataOut_wE_BR <= buffer[0];
	dataOut_W_ram <= buffer[1];
	dataOut_R_ram <= buffer[2];
	dataOut_DW_alu <= buffer[3];
	dataOut_DR1 <= buffer[4];
	dataOut_DR2 <= buffer[5];
end

endmodule