module hazardunit(IFID_Rs, IFID_Rt, IDEX_Rt, MemRead, IFIDWrite,PCWrite,HazardMux);

	output reg	IFIDWrite, PCWrite, HazardMux;
	input	[4:0] IFID_Rs, IFID_Rt, IDEX_Rt;
	input MemRead;
	
	always @(*) begin
	if (MemRead && ((IDEX_Rt==IFID_Rs)|| (IDEX_Rt==IFID_Rt))) begin
	
	IFIDWrite = 0;
	PCWrite = 0;
	HazardMux = 1;
	end else begin
	IFIDWrite = 1;
	PCWrite = 1;
	HazardMux = 0;
	end 
	end
	

endmodule
