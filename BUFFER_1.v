module BUFFER_1(
	input dataIn_wE_BR,
	input [0:3]dataIn_OP_alu,
	input dataIn_SEL_dmx,
	input dataIn_W_ram,
	input dataIn_R_ram,
	input [0:31]dataIn_DR1,
	input [0:31]dataIn_DR2,
	input clk,
	output reg dataOut_wE_BR,
	output reg [0:3]dataOut_OP_alu,
	output reg dataOut_SEL_dmx,
	output reg dataOut_W_ram,
	output reg dataOut_R_ram,
	output reg [0:31]dataOut_DR1,
	output reg [0:31]dataOut_DR2
);

always @(posedge clk) begin
	dataOut_wE_BR <= dataIn_wE_BR;
	dataOut_OP_alu <= dataIn_OP_alu;
	dataOut_SEL_dmx <= dataIn_SEL_dmx;
	dataOut_W_ram <= dataIn_W_ram;
	dataOut_R_ram <= dataIn_R_ram;
	dataOut_DR1 <= dataIn_DR1;
	dataOut_DR2 <= dataIn_DR2;
end

endmodule
