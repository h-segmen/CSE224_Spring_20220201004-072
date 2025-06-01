set_units -time ns

create_clock -name core_clock -period 10 [get_ports CLK]

set_input_delay 2.5 -clock core_clock [all_inputs]
set_output_delay 2.5 -clock core_clock [all_outputs]