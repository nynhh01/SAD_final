###################################################################

## timing contstraints
# 500 MHz -> 2ns

create_clock [get_ports clk]  -period 2  -waveform {0 1}
set_clock_uncertainty 0.3  [get_clocks clk]

#set_propagated_clock [get_clocks clk]

set_clock_transition -rise 0.05 [get_clocks clk]
set_clock_transition -fall 0.05 [get_clocks clk]

set_input_delay -clock clk  1.2  [all_inputs]


set_output_delay -clock clk  1.2  [all_outputs]


set_driving_cell -lib_cell SAEDRVT14_BUF_10 -pin X [get_ports clk]
set_driving_cell -lib_cell SAEDRVT14_FDPRBQ_V2_0P5 -pin Q [get_ports rst]

set_load -pin_load 0.004 [all_outputs]
