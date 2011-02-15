// genesis

echo "
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
"

addglobal str METHOD "hsolve"
addglobal int CHANMODE 0
addglobal float SIMDT 50e-6
addglobal float IODT 100e-6
addglobal float SIMLENGTH 0.4
addglobal int VERBOSE 1

// Params for spike-detection
addglobal float MONITOR_SPIKES_THRESHOLD -0.025
addglobal float MONITOR_SPIKES_REFRACTORY 2e-3

// Params for monitoring values (asc_file)
addglobal int MONITOR_VALUE_SAVE_TIME 1

// Default params for synaptic-input
float SYN_EK = 0.0
float SYN_GMAX = 1e-8
float SYN_TAU1 = 1e-3
float SYN_TAU2 = 1e-3

// Default params for mg-block
float MGBLOCK_CMg = 2.0
float MGBLOCK_A = 3.0
float MGBLOCK_B = 0.0167

str sim_dir = $1
str MODEL_PATH = $2
str iteration_first_s = $3
str iteration_last_s = $4
int iteration_first = -1
int iteration_last = -1
if ( { strcmp { iteration_first_s } "" } != 0 )
	iteration_first = { iteration_first_s }
end
if ( { strcmp { iteration_last_s } "" } != 0 )
	iteration_last = { iteration_last_s }
end

setenv SIMPATH { getenv SIMPATH } { MODEL_PATH }

str out_dir = { sim_dir } @ "/output"
str value_prefix = { out_dir } @ "/values-"
str spike_prefix = { out_dir } @ "/spikes-"
str input_file = { sim_dir } @ "/input"
str model_el = "/model"
str csv_separator = "	"

include compatibility.g
include runman-utility.g
include myg-csv.g
include load_model.g

//=====================================
// Solver
//=====================================
function init_solvers
	if ( { strcmp { getglobal METHOD } "hsolve" } == 0 )
		setup_hsolve { model_el } { getglobal CHANMODE }
	end
end

//=====================================
// Clocks
//=====================================
int IOCLOCK = 2
function set_clocks
	setclock 0 { getglobal SIMDT }
	setclock 1 { getglobal SIMDT }
	setclock 2 { getglobal IODT }
end
set_clocks

//=====================================
// Processing input file
//=====================================
function clean_file( file )
	openfile { file } w
	closefile { file }
end

function init_global_file( location )
	str location
	str global_file = { location } @ "/global-file"
	clean_file { global_file }
	return { global_file }
end

str global_file = { init_global_file { sim_dir } }
str value_file
str spike_file
int line_num = 1
int iteration = -1
int iterating = 0
int in_comment_block = 0

extern process_line

function skip_iteration
	return ( ! ( \
			iteration == -1 || \
			( iteration_first == -1 || iteration >= iteration_first ) && \
			( iteration_last == -1 || iteration < iteration_last ) \
		) )
end

function execute_global
	int line_num_bac = line_num
	line_num = 1
	
	openfile { global_file } r
	while ( { process_line { readfile { global_file } } } )
		line_num = line_num + 1
	end
	closefile { global_file }
	
	line_num = line_num_bac
end

function run_sim
	write_value_monitor_header { value_file }
	
	init_solvers
	reset
	step { getglobal SIMLENGTH } -t
end

function iteration_begin
	iteration = iteration + 1
	iterating = 1
	
	if ( { skip_iteration } )
		echo "iteration: "{ iteration }" (Skipped)"
		return
	end
	
	echo "iteration: "{ iteration }
	
	value_file = { value_prefix } @ { iteration }
	open_value_monitor \
		{ value_file } \
		{ IOCLOCK } \
		{ getglobal MONITOR_VALUE_SAVE_TIME }
	
	spike_file = { spike_prefix } @ { iteration }
	open_spike_monitor \
		{ spike_file } \
		{ getglobal MONITOR_SPIKES_THRESHOLD } \
		{ getglobal MONITOR_SPIKES_REFRACTORY }
	
	/*
	 * Close 'global_file' when the first iteration is encountered.
	 */
	if ( iteration == 0 )
		closefile { global_file }
	end
	
	execute_global
end

function iteration_end
	iterating = 0
	
	if ( { skip_iteration } )
		return
	end
	
	run_sim
	close_value_monitor { value_file }
	close_spike_monitor { spike_file }
	close_synput_all
end

function error( msg )
	str msg
	echo "Error: File '"{ input_file }"', Line #"{ line_num }": "{ msg }
end

function warning( msg )
	str msg
	echo "Warning: File '"{ input_file }"', Line #"{ line_num }": "{ msg }
end

function process_line
	int i
	if ( 0 )
		echo
		echo line: { line_num }
		echo argc: { argc }
		for ( i = 0 ; i <= { argc }; i = i + 1 )
			echo { i } { argv { i } }
		end
	end
	
	// EOF
	if ( { { strlen { argv { argc } } } == 0 } )
		return 0
	end
	
	// Finding position of comments (#'ed text)
	int argcount = { argc }
	for ( i = 1; i <= { argc }; i = i + 1 )
		if ( { findchar { argv { i } } # } == 0 )
			argcount = i - 1
			i = { argc } + 1    // break out of loop
		end
	end
	// From here on use 'argcount' instead of { argc }
	
	// Blank line
	if ( argcount == 0 )
		return 1
	end
	
	/*
	 * Simple handling of C-style multi-line comment block.
	 * 
	 * The opening token is expected to be the first token in a line, while a
	 * closing token is expected to be the last token in its line.
	 * 
	 * Also, if an opening token does not have a matching closing one, then the
	 * entire file following the opening token is ignored.
	 */
	if ( { strcmp { argv 1 } "/*" } == 0 )
		if ( in_comment_block )
			warning \
				"Beginning of comment-block ('/*') found inside another comment block."
		elif ( { strcmp { argv { argcount } } "*/" } == 0 )
			// Checking if a line starting with '/*' ends with '*/'.
			// If it does, then ignore this line and return from this function,
			// and don't bother about identifying this as a starting of a 
			// comment block.
			return 1
		else
			in_comment_block = 1
		end
	elif ( { strcmp { argv { argcount } } "*/" } == 0 )
		if ( in_comment_block )
			in_comment_block = 0
			
			return 1
		else
			error "Unmatched '*/'."
		end
	end
	
	if ( in_comment_block )
		return 1
	end
	
	str command = { argv 1 }
	
	/*
	 * While in the global section, write all the commands to a file, so that
	 * we can fetch them later and execute them at the beginning of every
	 * iteration.
	 */
	if ( iteration == -1 && { strcmp { command  } "iteration-begin" } != 0 )
		for ( i = 1; i <= { argcount }; i = i + 1 )
			writefile { global_file } { argv { i } }" " -n
		end
		writefile { global_file }
		
		return 1
	end
	
	if ( ! iterating && iteration >= 0 && { strcmp { command } "iteration-begin" } != 0 )
		error "Global statements allowed only before iterations begin."
		
		return 0
	end
	
	int success = 1
	if ( { strcmp { command } "iteration-begin" } == 0 )
		if ( iterating )
			error "Iterations cannot be nested."
		else
			iteration_begin
		end
	elif ( { strcmp { command } "iteration-end" } == 0 )
		if ( ! iterating )
			error "Unmatched 'iteration-end'."
		else
			iteration_end
		end
	elif ( { skip_iteration } )
		/*
		 * Do nothing.
		 */
	elif ( { strcmp { command } "set" } == 0 )
		if ( argcount != 3 )
			error "Usage: "{ command }" variable value"
		else
			setglobal { argv 2 } { argv 3 }
			// Update anything that depends on global variables, but has already
			// been set at the beginning of an iteration.
			// e.g.: SIMDT and SIMLENGTH should be registered with /synput, in case
			// they have been changed.
			update_synput { getglobal SIMDT } { getglobal SIMLENGTH }
			update_value_input { getglobal SIMDT } { getglobal SIMLENGTH }
			open_value_monitor \
				{ value_file } \
				{ IOCLOCK } \
				{ getglobal MONITOR_VALUE_SAVE_TIME }
			
			// Also update clocks
			set_clocks
		end
	elif ( { strcmp { command } "monitor-value" } == 0 )
		if ( argcount != 3 )
			error "Usage: "{ command }" object field"
		else
			success = { monitor_value { value_file } { argv 2 } { argv 3 } }
		end
	elif ( { strcmp { command } "synaptic-input-defaults" } == 0 )
		if ( argcount != 5 )
			error "Usage: "{ command }" Ek gmax tau1 tau2"
		else
			SYN_EK = { argv 2 }
			SYN_GMAX = { argv 3 }
			SYN_TAU1 = { argv 4 }
			SYN_TAU2 = { argv 5 }
		end
	elif ( { strcmp { command } "synaptic-input" } == 0 )
		if ( argcount != 7 && argcount != 3 )
			error "Usage: "{ command }" compartment file [ Ek gmax tau1 tau2 ]"
		else
			float Ek, gmax, tau1, tau2
			
			str compt = { argv 2 }
			str file = { sim_dir } @ "/" @ { argv 3 }
			
			if ( argcount == 7 )
				Ek = { argv 4 }
				gmax = { argv 5 }
				tau1 = { argv 6 }
				tau2 = { argv 7 }
			else
				Ek = SYN_EK
				gmax = SYN_GMAX
				tau1 = SYN_TAU1
				tau2 = SYN_TAU2
			end
			
			success = \
				{ add_synput { file } { compt } { Ek } { gmax } { tau1 } { tau2 } }
		end
	elif ( { strcmp { command } "synaptic-input-mgblock-defaults" } == 0 )
		if ( argcount != 4 )
			error "Usage: "{ command }" CMg A B"
		else
			MGBLOCK_CMg = { argv 2 }
			MGBLOCK_A = { argv 3 }
			MGBLOCK_B = { argv 4 }
		end
	elif ( { strcmp { command } "synaptic-input-mgblock" } == 0 )
		/*
		 * Allows one to add an "Mg block" element at a synapse. In principle
		 * this form could be merged into the existing unblocked synaptic-input
		 * command, but that would change syntax and break backward compat.
		 * 
		 * Also, this command accepts optional arguments for specifying
		 * properties of the synaptic input and Mg block. If the the Mg block
		 * properties are absent, it would be ambiguous whether the Mg block
		 * should be left out, or if the default Mg block parameters should be
		 * used. Could add extra syntax to handle that, but simplest just to
		 * add this new command.
		 * 
		 * The optional switches are "+syn" and "+mgblock". Instead of the
		 * traditional "-syn", "-mgblock", this is used because the "-" symbol
		 * was trying to trigger optional arguments in some string handling
		 * function calls (deep inside 'strcmp', i guess).
		 */
		int args_ok = 1
		int si = -1     // Index at which "+syn" args begin.
		int mbi = -1    // Index at which "+mgblock" args begin.
		
		/*
		 * Checking and parsing args.
		 * 
		 * Bad way to do this. Better to have a function that "consumes" args,
		 * but then this will also do.
		 */
		if ( argcount == 3 )
			// Do nothing
		elif ( argcount == 7 && { strcmp { argv 4 } "+mgblock" } == 0 )
			mbi = 4
		elif ( argcount == 8 && { strcmp { argv 4 } "+syn" } == 0 )
			si = 4
		elif ( argcount == 12 && { strcmp { argv 4 } "+mgblock" } == 0 && { strcmp { argv 8 } "+syn" } == 0 )
			mbi = 4
			si = 8
		elif ( argcount == 12 && { strcmp { argv 4 } "+syn" } == 0 && { strcmp { argv 9 } "+mgblock" } == 0 )
			mbi = 9
			si = 4
		else
			args_ok = 0
		end
		
		if ( ! args_ok )
			error "Usage: "{ command }" compartment file [ +syn Ek gmax tau1 tau2 ] [ +mgblock CMg A B ]"
		else
			float Ek, gmax, tau1, tau2
			float CMg, A, B
			
			str compt = { argv 2 }
			str file = { sim_dir } @ "/" @ { argv 3 }
			
			if ( si == -1 )
				Ek = SYN_EK
				gmax = SYN_GMAX
				tau1 = SYN_TAU1
				tau2 = SYN_TAU2
			else
				Ek = { argv { si + 1} }
				gmax = { argv { si + 2 } }
				tau1 = { argv { si + 3 } }
				tau2 = { argv { si + 4 } }
			end
			
			if ( mbi == -1 )
				CMg = MGBLOCK_CMg
				A = MGBLOCK_A
				B = MGBLOCK_B
			else
				CMg = { argv { mbi + 1 } }
				A = { argv { mbi + 2 } }
				B = { argv { mbi + 3 } }
			end
			
			success = \
				{ add_synput_mgblock { file } { compt } { Ek } { gmax } { tau1 } { tau2 } { CMg } { A } { B } }
		end
	elif ( { strcmp { command } "value-input" } == 0 )
		if ( argcount != 4 )
			error "Usage: "{ command }" object msg file"
		else
			str object = { argv 2 }
			str msg = { argv 3 }
			str file = { sim_dir } @ "/" @ { argv 4 }
			
			success = \
				{ add_value_input { file } { object } { msg } }
		end
	// The following code will save tree state before the simulation is run, and
	// hence is not useful. Besides, it is not tested.
	//~ elif ( { strcmp { command } "save-tree-state-csv" } == 0 )
		//~ if ( argcount < 4 )
			//~ error "Usage: "{ command }" file element_type field1 [ field2 [ field3 [...] ] ]"
		//~ else
			//~ str file = { argv 2 }
			//~ str element_type = { argv 3 }
			//~ str fields = ""
			//~ 
			//~ int i
			//~ for ( i = 4 ; i <= argcount ; i = i + 1 )
				//~ fields = fields @ { argv { i } }
			//~ end
			//~ 
			//~ save_tree_state_csv \
				//~ { file } \
				//~ { model_el } \
				//~ { element_type } \
				//~ { fields } \
				//~ { csv_separator }
		//~ end
	elif ( { strcmp { command } "load-state-csv" } == 0 )
		str separator = "	"
		
		if ( argcount != 2 && argcount != 3 )
			error "Usage: "{ command }" file [ vm_init ]"
		else
			str file = { argv 2 }
			if ( argcount == 3 )
				CSV_VM_INIT = { argv 3 }
			else
				CSV_VM_INIT = 1
			end
			
			load_state_csv \
				{ file } \
				{ separator }
		end
	else
		error "Command '"{ command }"' not recognized."
	end
	
	if ( ! success )
		error "Command '"{ command }"' failed."
		
		return 0
	end
	
	return 1
end

load_model { model_el }
ce { model_el }

openfile { global_file } a
init_synput { getglobal SIMDT } { getglobal SIMLENGTH }
init_value_input { getglobal SIMDT } { getglobal SIMLENGTH }
openfile { input_file } r
while ( { process_line { readfile { input_file } } } )
	line_num = line_num + 1
end
closefile { input_file }

/*
 * This is needed to read commands from 'global_file' and execute them in case
 * the input file does not contain any iterations.
 */
if ( iteration == -1 )
	iteration_begin
	run_sim
	iteration_end
end

clean_file { global_file }

echo "
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
"

quit
