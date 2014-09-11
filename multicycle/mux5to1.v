// megafunction wizard: %LPM_MUX%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: LPM_MUX 

// ============================================================
// File Name: mux5to1.v
// Megafunction Name(s):
// 			LPM_MUX
//
// Simulation Library Files(s):
// 			lpm
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 11.1 Build 259 01/25/2012 SP 2 SJ Web Edition
// ************************************************************


//Copyright (C) 1991-2011 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files from any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module mux5to1 (
	data0x,
	data1x,
	data2x,
	data3x,
	data4x,
	sel,
	result);

	input	[7:0]  data0x;
	input	[7:0]  data1x;
	input	[7:0]  data2x;
	input	[7:0]  data3x;
	input	[7:0]  data4x;
	input	[2:0]  sel;
	output	[7:0]  result;

	wire [7:0] sub_wire0;
	wire [7:0] sub_wire6 = data4x[7:0];
	wire [7:0] sub_wire5 = data3x[7:0];
	wire [7:0] sub_wire4 = data2x[7:0];
	wire [7:0] sub_wire3 = data1x[7:0];
	wire [7:0] result = sub_wire0[7:0];
	wire [7:0] sub_wire1 = data0x[7:0];
	wire [39:0] sub_wire2 = {sub_wire6, sub_wire5, sub_wire4, sub_wire3, sub_wire1};

	lpm_mux	LPM_MUX_component (
				.data (sub_wire2),
				.sel (sel),
				.result (sub_wire0)
				// synopsys translate_off
				,
				.aclr (),
				.clken (),
				.clock ()
				// synopsys translate_on
				);
	defparam
		LPM_MUX_component.lpm_size = 5,
		LPM_MUX_component.lpm_type = "LPM_MUX",
		LPM_MUX_component.lpm_width = 8,
		LPM_MUX_component.lpm_widths = 3;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
// Retrieval info: PRIVATE: SYNTH_WRAPPER_GEN_POSTFIX STRING "0"
// Retrieval info: PRIVATE: new_diagram STRING "1"
// Retrieval info: LIBRARY: lpm lpm.lpm_components.all
// Retrieval info: CONSTANT: LPM_SIZE NUMERIC "5"
// Retrieval info: CONSTANT: LPM_TYPE STRING "LPM_MUX"
// Retrieval info: CONSTANT: LPM_WIDTH NUMERIC "8"
// Retrieval info: CONSTANT: LPM_WIDTHS NUMERIC "3"
// Retrieval info: USED_PORT: data0x 0 0 8 0 INPUT NODEFVAL "data0x[7..0]"
// Retrieval info: USED_PORT: data1x 0 0 8 0 INPUT NODEFVAL "data1x[7..0]"
// Retrieval info: USED_PORT: data2x 0 0 8 0 INPUT NODEFVAL "data2x[7..0]"
// Retrieval info: USED_PORT: data3x 0 0 8 0 INPUT NODEFVAL "data3x[7..0]"
// Retrieval info: USED_PORT: data4x 0 0 8 0 INPUT NODEFVAL "data4x[7..0]"
// Retrieval info: USED_PORT: result 0 0 8 0 OUTPUT NODEFVAL "result[7..0]"
// Retrieval info: USED_PORT: sel 0 0 3 0 INPUT NODEFVAL "sel[2..0]"
// Retrieval info: CONNECT: @data 0 0 8 0 data0x 0 0 8 0
// Retrieval info: CONNECT: @data 0 0 8 8 data1x 0 0 8 0
// Retrieval info: CONNECT: @data 0 0 8 16 data2x 0 0 8 0
// Retrieval info: CONNECT: @data 0 0 8 24 data3x 0 0 8 0
// Retrieval info: CONNECT: @data 0 0 8 32 data4x 0 0 8 0
// Retrieval info: CONNECT: @sel 0 0 3 0 sel 0 0 3 0
// Retrieval info: CONNECT: result 0 0 8 0 @result 0 0 8 0
// Retrieval info: GEN_FILE: TYPE_NORMAL mux5to1.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mux5to1.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mux5to1.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mux5to1.bsf TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL mux5to1_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL mux5to1_bb.v TRUE
// Retrieval info: LIB_FILE: lpm
