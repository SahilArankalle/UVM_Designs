/************************************************************************
  
Copyright 2019 - Maven Silicon Softech Pvt Ltd.  
  
www.maven-silicon.com 
  
All Rights Reserved. 
This source code is an unpublished work belongs to Maven Silicon Softech Pvt Ltd. 
It is not to be shared with or used by any third parties who have not enrolled for our paid 
training courses or received any written authorization from Maven Silicon.
  
Filename		:   ram_wr_test.sv

Descrition 		: 	Test class for dual port ram_testbench
  
Author Name		:   Putta Satish

Support e-mail	: 	For any queries, reach out to us on "techsupport_vm@maven-silicon.com" 

Version			:	1.0

************************************************************************/

//------------------------------------------
// CLASS DESCRIPTION
//------------------------------------------

// Extend ram_wr_test from uvm_test
class ram_wr_test extends uvm_test;

   // Factory Registration
	`uvm_component_utils(ram_wr_test)

   // Declare the ram_env handle
	ram_env envh;

	//------------------------------------------
	// METHODS
	//------------------------------------------

	// Standard UVM Methods:
	extern function new(string name = "ram_wr_test",uvm_component parent);
	extern function void build_phase(uvm_phase phase);
	extern function void connect_phase(uvm_phase phase);
	extern function void end_of_elaboration_phase(uvm_phase phase);
	extern function void start_of_simulation_phase(uvm_phase phase);
	extern task run_phase(uvm_phase phase);
	extern function void extract_phase(uvm_phase phase);
	extern function void check_phase(uvm_phase phase);
	extern function void report_phase(uvm_phase phase);

endclass


//-----------------  constructor new method  -------------------//
function ram_wr_test::new(string name="ram_wr_test", uvm_component parent );
	super.new(name,parent);
endfunction

       
  
// Add UVM phases
// NOTE : Call super.*_phase() in every phase method ,* indicates build,connect,etc  
//        Print using `uvm_info("RAM_WR_TEST","This is build phase",UVM_LOW)  in all the phases 
   

//-----------------  Add UVM build() phase   -------------------//
// Create the instance of ram_env in the build phase

function void ram_wr_test::build_phase(uvm_phase phase);
	super.build_phase(phase);
	envh = ram_env::type_id::create("envh", this);
	`uvm_info("RAM_WR_TEST", "This is build phase in ram_wr_test", UVM_LOW)
endfunction

//-----------------  Add UVM connect() phase   -------------------//

function void ram_wr_test::connect_phase(uvm_phase phase);
	super.connect_phase(phase);
	`uvm_info("RAM_WR_TEST", "This is connect phase in ram_wr_test", UVM_LOW)
endfunction

//-----------------  Add UVM end_of_elaboration() phase   -------------------//

function void ram_wr_test::end_of_elaboration_phase(uvm_phase phase);
	super.end_of_elaboration_phase(phase);
	`uvm_info("RAM_WR_TEST", "This is end_of_elaboration phase in ram_wr_test", UVM_LOW)
endfunction

//-----------------  Add UVM start_of_simulation() phase   -------------------//

function void ram_wr_test::start_of_simulation_phase(uvm_phase phase);
	super.start_of_simulation_phase(phase);
	`uvm_info("RAM_WR_TEST", "This is start_of_simulation phase in ram_wr_test", UVM_LOW)
endfunction

//-----------------  Add UVM run() phase   -------------------//
// Raise and drop objections  
// With in raising ans dropping the objections add 100 delay in the run phase before printing

task ram_wr_test::run_phase(uvm_phase phase);
	super.run();
	phase.raise_objection(this);
	#100;
	`uvm_info("RAM_WR_TEST", "This is run_phase in ram_wr_test", UVM_LOW)
	phase.drop_objection(this);
endtask


//-----------------  Add UVM extract() phase   -------------------//

 function void ram_wr_test::extract_phase(uvm_phase phase);
	super.extract_phase(phase);
	`uvm_info("RAM_WR_TEST", "This is extract phase in ram_wr_test", UVM_LOW)
endfunction
 
//-----------------  Add UVM check() phase   -------------------//

function void ram_wr_test::check_phase(uvm_phase phase);
	super.check_phase(phase);
	`uvm_info("RAM_WR_TEST", "This is check phase in ram_wr_test", UVM_LOW)
endfunction

//-----------------  Add UVM report() phase   -------------------//

function void ram_wr_test::report_phase(uvm_phase phase);
	super.report_phase(phase);
	`uvm_info("RAM_WR_TEST", "This is report phase in ram_wr_test", UVM_LOW)
endfunction
   


   


