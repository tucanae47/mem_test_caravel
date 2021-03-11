set ::env(DESIGN_NAME) memtest
set ::env(VERILOG_FILES) [glob $::env(OPENLANE_ROOT)/designs/memtest/src/*.v]

set script_dir [file dirname [file normalize [info script]]]

# Fill this
set ::env(CLOCK_PERIOD) "10"
set ::env(CLOCK_PORT) "CLK"
set ::env(CLOCK_TREE_SYNTH) 0


set ::env(FP_SIZING) absolute
set ::env(DIE_AREA) "0 0 1000 800"


set ::env(GLB_RT_MAXLAYER) 5

set ::env(DESIGN_IS_CORE) 0
set ::env(PL_TARGET_DENSITY) 0.4
set ::env(FP_CORE_UTIL) 50

set ::env(CELL_PAD) 2
set ::env(ROUTING_CORES) 12
set ::env(DIODE_INSERTION_STRATEGY) 5


