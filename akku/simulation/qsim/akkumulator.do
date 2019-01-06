onerror {quit -f}
vlib work
vlog -work work akkumulator.vo
vlog -work work akkumulator.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.akkumulator_vlg_vec_tst
vcd file -direction akkumulator.msim.vcd
vcd add -internal akkumulator_vlg_vec_tst/*
vcd add -internal akkumulator_vlg_vec_tst/i1/*
add wave /*
run -all
