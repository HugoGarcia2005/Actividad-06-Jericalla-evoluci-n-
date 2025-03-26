`timescale 1ns/1ns
module TB_jericalla_evo();
reg [17:0] instruccion;
reg clk_jericalla;
wire zf_jericalla;
wire [31:0] dataOut_jericalla;

jericalla_evo tb_jericalla (
	.instruccion(instruccion),
	.clk_jericalla(clk_jericalla),
	.zf_jericalla(zf_jericalla),
	.dataOut_jericalla(dataOut_jericalla)
);

initial begin
        clk_jericalla = 0;       
        forever #10 clk_jericalla = ~clk_jericalla;  
end

initial begin
	#100;
	instruccion = 18'b000001000000100000 ;
	#100;
	instruccion = 18'b001001010000100010;
	#100;
	instruccion = 18'b010001100001000011;
	#100;
	instruccion = 18'b011000000010000111;
	#100;
	instruccion = 18'b011000000010101000;
	#100;
	instruccion = 18'b011000000011001001;
	#100;
end
endmodule

