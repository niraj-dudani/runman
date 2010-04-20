////////////////////////////////////////////////////////////////////////////////
// Synput
////////////////////////////////////////////////////////////////////////////////

function init_synput( simdt, simlength )
	float simdt
	float simlength
	
	if ( { exists /synput } )
		echo "Warning: init_synput: /synput already exists. Overwriting."
	end
	
	create neutral /synput
	
	addfield ^ _count
	setfield ^ _count 0
	
	addfield ^ _simdt
	setfield ^ _simdt { simdt }
	
	addfield ^ _simlength
	setfield ^ _simlength { simlength }
end

function update_synput( simdt, simlength )
	float simdt
	float simlength
	
	if ( !{ exists /synput } )
		init_synput { simdt } { simlength }
	else
		setfield /synput _simdt { simdt }
		setfield /synput _simlength { simlength }
	end
end

function __find_synput( file )
	str file
	
	if ( ! { exists /synput } )
		echo "Error: __find_synput: /synput does not exist. Call init_synput."
		return ""
	end
	
	int count = { getfield /synput _count }
	
	// Search for existing timetable object which reads from the same file.
	int i
	int sindex = -1
	str sfile
	str tt
	for ( i = 0 ; i < count ; i = i + 1 )
		tt = "/synput/t" @ { i }
		if ( { exists { tt } } )
			sfile = { getfield { tt } fname }
			if ( { strcmp { sfile } { file } } == 0 )
				sindex = i
				i = count  // break out of loop
			end
		end
	end
	
	if ( sindex == -1 )
		return ""
	else
		return "/synput/t" @ { sindex }
	end
end

function __open_synput( file )
	str file
	
	if ( ! { exists /synput } )
		echo "Error: open_synput: /synput does not exist. Call init_synput first."
		return 0
	end
	
	// If an object does not exist for the same file, create a new one.
	str tt = { __find_synput { file } }
	if ( { strcmp { tt } "" } == 0 )
		int count = { getfield /synput _count }
		float simdt = { getfield /synput _simdt }
		float simlength = { getfield /synput _simlength }
		
		str tt = "/synput/t" @ { count }
		
		create timetable { tt }
		
		setfield { tt } \
			method 4 \
			fname { file } \
			act_val { 1.0 / simdt } \
			maxtime { simlength } // Setting maxtime is necessary in Genesis
		
		call { tt } TABFILL
		
		// This field is used to count compartments to which synaptic input is
		// added.
		addfield { tt } _count
		setfield { tt } _count 0
		
		setfield /synput _count { count + 1 }
	end
	
	return 1
end

function close_synput_all
	if ( ! { exists /synput } )
		echo "Error: close_synput_all: /synput does not exist. Call init_synput first."
		return 0
	end
	
	setfield /synput _count 0
	str s
	foreach s ( { el /synput/# } )
		delete { s }
	end
	return 1
end

// Unlikely to be needed
function close_synput( file )
	str file
	
	if ( ! { exists /synput } )
		echo "Error: close_synput: /synput does not exist. Call init_synput first."
		return 0
	end
	
	str tt = { __find_synput { file } }
	if ( { strcmp { tt } "" } == 0 )
		echo "Error: close_synput: File '"{ file }"' not opened yet."
		return 0
	end
	
	delete { tt }
	
	return 1
end

function __add_synput_to_synapse( tt, syn )
	str tt
	str syn
	
	addmsg { tt } { syn } ACTIVATION activation
	
	/*
	 * Or have a spikegen inside tt.
	 */
//	addmsg { tt }/spike { syn } SPIKE
end

function __add_synput_to_compt( tt, compt )
	str tt
	str compt
	
	int count = { getfield { tt } _count }
	
	str syn = { tt } @ "/syn" @ { count }
	create synchan { syn }
	addmsg { compt } { syn } VOLTAGE Vm
	addmsg { syn } { compt } CHANNEL Gk Ek
	
	__add_synput_to_synapse { tt } { syn }
	
	setfield { tt } _count { count + 1 }
	
	return { syn }
end

/*
 * Gives a train of synaptic stimuli to a given compartment or synapse.
 * 
 * file: should contain a list of times to give stimuli at
 * el: should be a compartment, symcompartment or synchan
 * Ek, gmax, tau1, tau2: parameters for synaptic alpha-function.
 */
function add_synput( file, el, Ek, gmax, tau1, tau2 )
	str file
	str el
	float Ek
	float gmax
	float tau1
	float tau2
	
	if ( !{ exists { el } } )
		echo "Error: add_synput: Object "{ el }" does not exist."
		return 0
	end
	
	str tt = { __find_synput { file } }
	if ( { strcmp { tt } "" } == 0 )
		if ( ! { __open_synput { file } } )
			echo "Error: add_synput: open_synput failed."
			return 0
		end
	end
	tt = { __find_synput { file } }
	
	if ( gmax < 0.0 || tau1 < 0.0 || tau2 < 0.0 )
		echo "Error: add_synput: gmax, tau1 and tau2 should be non-negative."
		return 0
	end
	
	str syn
	if ( { isa compartment { el } } || { isa symcomparment { el } } )
		syn = { __add_synput_to_compt { tt } { el } }
	elif ( { isa synchan { el } } )
		syn = { el }
		__add_synput_to_synapse { tt } { el }
	else
		echo \
			"Error: add_synput: Object type of '"{ el }"' is not any of: " \
			"compartment, symcompartment or synchan."
		return 0
	end
	
	setfield { syn } \
		Ek { Ek } \
		gmax { gmax } \
		tau1 { tau1 } \
		tau2 { tau2 }
	
	return 1
end

////////////////////////////////////////////////////////////////////////////////
// Value monitor
////////////////////////////////////////////////////////////////////////////////

function __find_value_monitor( file )
	str file
	
	int count = { getfield /monitor _count }
	
	// Search for existing asc_file object which writes to the same file.
	int i
	int mindex = -1
	str mfile
	str asc
	for ( i = 0 ; i < count ; i = i + 1 )
		asc = "/monitor/m" @ { i }
		if ( { exists { asc } } )
			mfile = { getfield { asc } filename }
			if ( { strcmp { mfile } { file } } == 0 )
				mindex = i
				i = count  // break out of loop
			end
		end
	end
	
	if ( mindex == -1 )
		return ""
	else
		return "/monitor/m" @ { mindex }
	end
end

function open_value_monitor( file, clock, save_time )
	str file
	int clock
	int save_time
	
	if ( !{ exists /monitor } )
		create neutral /monitor
		
		addfield ^ _count
		setfield ^ _count 0
	end
	
	// If an object does not exist for the same file, create a new one.
	str asc = { __find_value_monitor { file } }
	if ( { strcmp { asc } "" } == 0 )
		int count = { getfield /monitor _count }
		
		// Also clear out the file on disk
		openfile { file } w
		closefile { file }
		
		create asc_file /monitor/m{ count }
		
		setfield ^ \
			leave_open 1 \
			append 1 \
			filename { file } \
			notime { 0 == save_time }
		
		useclock ^ { clock }
		
		addfield ^ _columns
		if ( save_time )
			setfield ^ _columns "#Time "
		else
			setfield ^ _columns "# "
		end
		
		setfield /monitor _count { count + 1 }
	end
end

function close_value_monitor( file )
	str file
	
	str asc = { __find_value_monitor { file } }
	
	if ( { strcmp { asc } "" } == 0 )
		echo "Warning: close_value_monitor: Monitor not found for file "{ file }"."
	else
		call { asc } SAVE
		call { asc } FLUSH
		delete { asc }
	end
end

function monitor_value( file, el, field )
	str el, field, file
	
	str asc = { __find_value_monitor { file } }
	if ( { strcmp { asc } "" } == 0 )
		echo "Error: monitor_value: Monitor not found for file "{ file }"."
		return
	end
	
	if ( ! { exists { el } } )
		echo "Error: monitor_value: Object "{ el }" not found."
		return
	end
	
	str columns = { getfield { asc } _columns } @ { el } @ "." @ { field } @ " "
	setfield { asc } _columns { columns }
	
	addmsg { el } { asc } SAVE { field }
end

function write_value_monitor_header( file )
	str file
	
	str asc = { __find_value_monitor { file } }
	str columns
	
	if ( { strcmp { asc } "" } == 0 )
		echo "Warning: write_monitor_header: Monitor not found for file "{ file }"."
	else
		columns = { getfield { asc } _columns }
		
		call { asc } OUT_OPEN
		call { asc } OUT_WRITE { columns }
	end
end

////////////////////////////////////////////////////////////////////////////////
// Spike monitor
////////////////////////////////////////////////////////////////////////////////

function __find_spike_monitor( file )
	str file
	
	int count = { getfield /history _count }
	
	// Search for existing spikehistory object which writes to the same file.
	int i
	int hindex = -1
	str hfile
	str hist
	for ( i = 0 ; i < count ; i = i + 1 )
		hist = "/history/h" @ { i }
		if ( { exists { hist } } )
			hfile = { getfield { hist } filename }
			if ( { strcmp { hfile } { file } } == 0 )
				hindex = i
				i = count  // break out of loop
			end
		end
	end
	
	if ( hindex == -1 )
		return ""
	else
		return "/history/h" @ { hindex }
	end
end

function open_spike_monitor( file, threshold, refractory )
	str file
	float threshold
	float refractory
	
	// Create a blank file.
	// Genesis will not create a file if there are no spikes. This step will
	// ensure that we have a complete set of output files, even if some of them
	// are blank. Makes things cleaner for subsequent data analysis.
	openfile { file } w
	closefile { file }
	
	if ( !{ exists /history } )
		create neutral /history
		
		addfield ^ _count
		setfield ^ _count 0
	end
	
	// If an object does not exist for the same file, create a new one.
	str hist = { __find_spike_monitor { file } }
	if ( { strcmp { hist } "" } == 0 )
		int count = { getfield /history _count }
		
		create spikehistory /history/h{ count }
		
		addfield ^ _threshold
		setfield ^ _threshold { threshold }
		
		addfield ^ _refractory
		setfield ^ _refractory { refractory }
		
		setfield ^ filename { file } \
			ident_toggle 0 \
			leave_open 1 \
			flush 0 \
			initialize 1
		
		setfield /history _count { count + 1 }
	end
end

function close_spike_monitor( file )
	str file
	
	str hist = { __find_spike_monitor { file } }
	
	if ( { strcmp { hist } "" } == 0 )
		echo "Warning: close_spike_monitor: Monitor not found for file "{ file }"."
	else
		call { hist } SAVE
		delete { hist }
	end
end

function monitor_spikes( file, compt )
	str compt, file
	
	if ( ! { exists { compt } } )
		echo "Error: monitor_spikes: Compartment "{ compt }" not found."
		return
	end
	
	str hist = { __find_spike_monitor { file } }
	if ( { strcmp { hist } "" } == 0 )
		echo "Error: monitor_spikes: Monitor not found for file "{ file }"."
		return
	end
	
	float threshold = { getfield { hist } _threshold }
	float refractory = { getfield { hist } _refractory }
	
	str detector = { compt } @ "/_detector"
	if ( ! { exists { detector } } )
		create spikegen { detector }
		addmsg { compt } { detector } INPUT Vm
	end
	
	setfield { detector } \
		thresh { threshold } \
		abs_refract { refractory }
	
	addmsg { detector } { hist } SPIKESAVE
end

////////////////////////////////////////////////////////////////////////////////
// Individual plots: deprecated
////////////////////////////////////////////////////////////////////////////////

// Deprecated
function init_plots( runtime, clock )
	float runtime
	int clock
	
	create neutral /plots
	
	addfield ^ _count
	setfield ^ _count 0
	
	addfield ^ _clock
	setfield ^ _clock {clock}
	
	float dt = {getclock {clock}}
	if ( dt == 0.0 )
		echo "Error: init_plots: Clock "{clock}" has dt 0.0!"
		return
	end
	
	addfield ^ _ndivs
	setfield ^ _ndivs {runtime / dt}
	
	addfield ^ _runtime
	setfield ^ _runtime {runtime}
end

// Deprecated
function add_plot( el, field, file )
	str el, field, file
	int count, clock, ndivs
	float runtime
	
	count = { getfield /plots _count }
	clock = { getfield /plots _clock }
	ndivs = { getfield /plots _ndivs }
	runtime = { getfield /plots _runtime }
	
	setfield /plots _count { count + 1 }
	
	create table /plots/p{count}
	setfield ^ step_mode 3
	call ^ TABCREATE { ndivs } 0 { runtime }
	addmsg {el} ^ INPUT {field}
	useclock ^ {clock}
	
	addfield ^ _file
	setfield ^ _file { file }
end

// Deprecated
function save_plots
	int i, count
	str file
	
	count = { getfield /plots _count }
	for ( i = 0; i < count; i = i + 1 )
		file = { getfield /plots/p{i} _file }
		tab2file {file} /plots/p{i} table -mode xy -overwrite
	end
end

////////////////////////////////////////////////////////////////////////////////
// Miscellaneous
////////////////////////////////////////////////////////////////////////////////

function setup_hsolve( el, chanmode )
	int chanmode
	
	str solve = { el } @ "/solve"
	if ( { exists { solve } } )
		delete { solve }
	end
	
	create hsolve { solve }
	setfield { solve } \
		path { el }/##[TYPE=compartment] \
		comptmode 1 \
		chanmode { chanmode }
	
	call { solve } SETUP
	setmethod 11
end
