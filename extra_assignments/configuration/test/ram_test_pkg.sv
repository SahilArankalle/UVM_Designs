/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   ram_test_pkg.sv

Description 	: 	Dual Port RAM TB package
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/


package ram_test_pkg;

	// import the UVM package
	import uvm_pkg::*; 

	//include the "uvm_macros.svh", "tb_defs.sv","write_xtn.sv", 
	//"ram_wr_agent_config.sv", "ram_wr_driver.sv",
	//"ram_wr_monitor.sv","ram_wr_sequencer.sv", 
	//"ram_wr_agent.sv", "ram_wr_agt_top.sv",
	//include  "ram_test.sv" files

	

	`include "uvm_macros.svh"

	`include "tb_defs.sv"
	`include "write_xtn.sv"
	`include "ram_wr_driver.sv"
	`include "ram_wr_monitor.sv"
	`include "ram_wr_sequencer.sv"
	`include "ram_wr_agent.sv"
	`include "ram_wr_agt_top.sv"
	`include "ram_env.sv"
    `include "ram_test.sv"
endpackage
