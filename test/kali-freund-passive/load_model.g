float EREST_ACT = -0.065       // resting membrane potential (volts)
float ELEAK = -0.075    // leak potential
float ENA = 0.120 + EREST_ACT //  0.055
//float EK = -0.015 + EREST_ACT // -0.080
float EK = -0.015 + EREST_ACT // added later
float ECA = 0.145 + EREST_ACT // 0.080

include CA1pyr_chanb14.g

function load_model( path )
	str path

	readcell { MODEL_PATH }/pc1a_r3s17n-passive.p { path }
	
	setfield {path}/# initVm -0.075
	/*
	 * This is the voltage at which the soma settles. If we set all compartments
	 * to this, the model settles a little quicker than the above 2 cases.
	 */
	echo "Setting all compartments' Vm to: -0.075"
end
