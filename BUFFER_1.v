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

reg [0:6] buffer;

always @(posedge clk) begin
	buffer[0] <= dataIn_wE_BR;
	buffer[1] <= dataIn_OP_alu;
	buffer[2] <= dataIn_SEL_dmx;
	buffer[3] <= dataIn_W_ram;
	buffer[4] <= dataIn_R_ram;
	buffer[5] <= dataIn_DR1;
	buffer[6] <= dataIn_DR2;
	dataOut_wE_BR <= buffer[0];
	dataOut_OP_alu <= buffer[1];
	dataOut_SEL_dmx <= buffer[2];
	dataOut_W_ram <= buffer[3];
	dataOut_R_ram <= buffer[4];
	dataOut_DR1 <= buffer[5];
	dataOut_DR2 <= buffer[6];
end

endmodule