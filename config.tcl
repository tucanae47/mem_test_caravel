set ::env(DESIGN_NAME) memtest
set ::env(VERILOG_FILES) [glob $::env(OPENLANE_ROOT)/designs/memtest/src/*.v]

set script_dir [file dirname [file normalize [info script]]]

set ::env(SYNTH_READ_BLACKBOX_LIB) 1
# Fill this
set ::env(CLOCK_PERIOD) "10"
set ::env(CLOCK_PORT) "CLK"
set ::env(CLOCK_TREE_SYNTH) 0

set ::env(FP_PIN_ORDER_CFG) $::env(DESIGN_DIR)/pin_order.cfg

set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 1000 800"
set ::env(GLB_RT_OBS) "met5 $::env(DIE_AREA)"

#set ::env(FP_CORE_UTIL) 80
# set ::env(PL_TARGET_DENSITY) 0.

set ::env(PDN_CFG) $script_dir/pdn.tcl
set ::env(GLB_RT_MAXLAYER) 5

set ::env(PL_OPENPHYSYN_OPTIMIZATIONS) 0
set ::env(PL_TARGET_DENSITY) 0.85
set ::env(CELL_PAD) 0
set ::env(ROUTING_CORES) 12
set ::env(DIODE_INSERTION_STRATEGY) 3

#set filename $::env(DESIGN_DIR)/$::env(PDK)_$::env(STD_CELL_LIBRARY)_config.tcl
#if { [file exists $filename] == 1} {
#	source $filename
#}

