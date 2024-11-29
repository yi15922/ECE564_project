onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_top/dut/reset_n
add wave -noupdate /tb_top/dut/clk
add wave -noupdate /tb_top/dut/dut_valid
add wave -noupdate /tb_top/dut/dut_ready
add wave -noupdate -color Cyan -itemcolor Cyan -radix hexadecimal /tb_top/dut/dut__tb__sram_input_read_address
add wave -noupdate -color Cyan -itemcolor Cyan -radix decimal /tb_top/dut/tb__dut__sram_input_read_data
add wave -noupdate -color Pink -itemcolor Pink /tb_top/dut/dut__tb__sram_weight_read_address
add wave -noupdate -color Pink -itemcolor Pink -radix decimal /tb_top/dut/tb__dut__sram_weight_read_data
add wave -noupdate /tb_top/dut/dut__tb__sram_result_write_enable
add wave -noupdate -radix decimal /tb_top/dut/dut__tb__sram_result_write_address
add wave -noupdate -radix decimal /tb_top/dut/dut__tb__sram_result_write_data
add wave -noupdate /tb_top/dut/dut__tb__sram_result_read_address
add wave -noupdate -radix decimal /tb_top/dut/tb__dut__sram_result_read_data
add wave -noupdate /tb_top/dut/dut__tb__sram_scratchpad_write_enable
add wave -noupdate -radix decimal /tb_top/dut/dut__tb__sram_scratchpad_write_address
add wave -noupdate -radix decimal /tb_top/dut/dut__tb__sram_scratchpad_write_data
add wave -noupdate /tb_top/dut/dut__tb__sram_scratchpad_read_address
add wave -noupdate -radix decimal /tb_top/dut/tb__dut__sram_scratchpad_read_data
add wave -noupdate /tb_top/dut/override_input_weight_read_base_addresses
add wave -noupdate /tb_top/dut/sram_weight_read_base_address
add wave -noupdate /tb_top/dut/write_to_scratchpad
add wave -noupdate /tb_top/dut/current_state
add wave -noupdate /tb_top/dut/save_current_read_write_addr
add wave -noupdate /tb_top/dut/input_num_rows
add wave -noupdate /tb_top/dut/input_num_cols
add wave -noupdate /tb_top/dut/weight_num_rows
add wave -noupdate /tb_top/dut/weight_num_cols
add wave -noupdate -divider MAC
add wave -noupdate -radix decimal /tb_top/dut/MAC/mac_result_z
add wave -noupdate /tb_top/dut/MAC/zero_accum_result
add wave -noupdate /tb_top/dut/MAC/sram_input_read_address
add wave -noupdate /tb_top/dut/MAC/sram_weight_read_address
add wave -noupdate -radix decimal /tb_top/dut/MAC/sram_input_read_data
add wave -noupdate -radix decimal /tb_top/dut/MAC/sram_weight_read_data
add wave -noupdate /tb_top/dut/MAC/sram_result_write_start_address
add wave -noupdate /tb_top/dut/MAC/sram_weight_read_base_address
add wave -noupdate /tb_top/dut/MAC/start_accum
add wave -noupdate /tb_top/dut/MAC/weight_read_start_address
add wave -noupdate /tb_top/dut/MAC/read_matrix_dimensions
add wave -noupdate /tb_top/dut/MAC/MAC_ready
add wave -noupdate /tb_top/dut/MAC_valid
add wave -noupdate /tb_top/dut/MAC/weight_wraparound
add wave -noupdate /tb_top/dut/MAC/input_wraparound
add wave -noupdate /tb_top/dut/sram_input_read_base_address
add wave -noupdate /tb_top/dut/MAC/current_state
add wave -noupdate /tb_top/dut/MAC/loop_count
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {955 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 317
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {937 ns} {1126 ns}
bookmark add wave bookmark0 {{909 ns} {1098 ns}} 0
bookmark add wave bookmark1 {{1569 ns} {1758 ns}} 0
bookmark add wave bookmark2 {{2258 ns} {2447 ns}} 0
bookmark add wave bookmark3 {{2907 ns} {3096 ns}} 0
bookmark add wave bookmark4 {{4764 ns} {4953 ns}} 5
bookmark add wave bookmark5 {{2010 ns} {2199 ns}} 10
bookmark add wave bookmark6 {{937 ns} {1126 ns}} 8
