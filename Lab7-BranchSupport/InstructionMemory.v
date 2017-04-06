`timescale 1ns / 1ps
module InstructionMemory(Address, out);
	input		[63:0] Address;
	output [31:0] out;
	
	reg	[7:0] IM	[0:225];
	
	assign out={IM[Address+0], IM[Address+1], IM[Address+2], IM[Address+3]};
	
	initial 
		begin
			//Load1:
			{IM[0],IM[1],IM[2],IM[3]}=32'hF8410002;
			//Load2:
			{IM[4],IM[5],IM[6],IM[7]}=32'hF8418003;
			//ALU:
			{IM[8],IM[9],IM[10],IM[11]}=32'h8B030041;
			//Store:
			{IM[12],IM[13],IM[14],IM[15]}=32'hF8008001;
			//Load 1:Load from address 40 into $5
			//{IM[0],IM[1],IM[2],IM[3]}=32'hF8428005;
			////Load 2:Load from address 80 into $10
			//{IM[4],IM[5],IM[6],IM[7]}=32'hF845000A;
			//AND $1, $5, $10
			//{IM[8],IM[9],IM[10],IM[11]}=32'h8A0A00A1;
			//Or	$2, $5, $10
			//{IM[12],IM[13],IM[14],IM[15]}=32'hAA0A00A2;
			//Add $3, $5, $10
			//{IM[16],IM[17],IM[18],IM[19]}=32'h8B0A00A3;
			//Sub $4, $5, $10
			//{IM[20],IM[21],IM[22],IM[23]}=32'hCB0A00A4;
			//Store 1: Store to address 0 from $1
			//{IM[24],IM[25],IM[26],IM[27]}=32'hF8008001;
			//Store 2: Store to address 8 from $2
			//{IM[28],IM[29],IM[30],IM[31]}=32'hF8010002;
			//Store 3: Store to address 16 from $3
			//{IM[32],IM[33],IM[34],IM[35]}=32'hF8018003;
			//Store 4: Store to address 32 from $4
			//{IM[36],IM[37],IM[38],IM[39]}=32'hF8020004;
		end
endmodule