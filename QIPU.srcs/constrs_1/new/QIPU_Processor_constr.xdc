# CONFIG SETUP
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]

# 100MHz clock
set_property -dict {PACKAGE_PIN W5 IOSTANDARD LVCMOS33} [get_ports ext_clock]
create_clock -period 10.000 -name MAIN_CLOCK -waveform {0.000 5.000} [get_ports ext_clock]

# 7-SEGMENT ANODES
#set_property -dict {PACKAGE_PIN W4 IOSTANDARD LVCMOS33} [get_ports {seven_seg_anode_out[3]}]
#set_property -dict {PACKAGE_PIN V4 IOSTANDARD LVCMOS33} [get_ports {seven_seg_anode_out[2]}]
#set_property -dict {PACKAGE_PIN U4 IOSTANDARD LVCMOS33} [get_ports {seven_seg_anode_out[1]}]
#set_property -dict {PACKAGE_PIN U2 IOSTANDARD LVCMOS33} [get_ports {seven_seg_anode_out[0]}]

# 7-SEGMENT CATHODES
#set_property -dict {PACKAGE_PIN V7 IOSTANDARD LVCMOS33} [get_ports {seven_seg_cathode_out[7]}]
#set_property -dict {PACKAGE_PIN W7 IOSTANDARD LVCMOS33} [get_ports {seven_seg_cathode_out[6]}]
#set_property -dict {PACKAGE_PIN W6 IOSTANDARD LVCMOS33} [get_ports {seven_seg_cathode_out[5]}]
#set_property -dict {PACKAGE_PIN U8 IOSTANDARD LVCMOS33} [get_ports {seven_seg_cathode_out[4]}]
#set_property -dict {PACKAGE_PIN V8 IOSTANDARD LVCMOS33} [get_ports {seven_seg_cathode_out[3]}]
#set_property -dict {PACKAGE_PIN U5 IOSTANDARD LVCMOS33} [get_ports {seven_seg_cathode_out[2]}]
#set_property -dict {PACKAGE_PIN V5 IOSTANDARD LVCMOS33} [get_ports {seven_seg_cathode_out[1]}]
#set_property -dict {PACKAGE_PIN U7 IOSTANDARD LVCMOS33} [get_ports {seven_seg_cathode_out[0]}]

# SLIDE SWITCHES
set_property -dict {PACKAGE_PIN R2 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[15]}]
set_property -dict {PACKAGE_PIN T1 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[14]}]
set_property -dict {PACKAGE_PIN U1 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[13]}]
set_property -dict {PACKAGE_PIN W2 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[12]}]
set_property -dict {PACKAGE_PIN R3 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[11]}]
set_property -dict {PACKAGE_PIN T2 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[10]}]
set_property -dict {PACKAGE_PIN T3 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[9]}]
set_property -dict {PACKAGE_PIN V2 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[8]}]
set_property -dict {PACKAGE_PIN W13 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[7]}]
set_property -dict {PACKAGE_PIN W14 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[6]}]
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[5]}]
set_property -dict {PACKAGE_PIN W15 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[4]}]
set_property -dict {PACKAGE_PIN W17 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[3]}]
set_property -dict {PACKAGE_PIN W16 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[2]}]
set_property -dict {PACKAGE_PIN V16 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[1]}]
set_property -dict {PACKAGE_PIN V17 IOSTANDARD LVCMOS33} [get_ports {slide_switches_in[0]}]

# SLIDE SWITCH LEDS
set_property -dict {PACKAGE_PIN L1 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[15]}]
set_property -dict {PACKAGE_PIN P1 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[14]}]
set_property -dict {PACKAGE_PIN N3 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[13]}]
set_property -dict {PACKAGE_PIN P3 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[12]}]
set_property -dict {PACKAGE_PIN U3 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[11]}]
set_property -dict {PACKAGE_PIN W3 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[10]}]
set_property -dict {PACKAGE_PIN V3 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[9]}]
set_property -dict {PACKAGE_PIN V13 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[8]}]
set_property -dict {PACKAGE_PIN V14 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[7]}]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[6]}]
set_property -dict {PACKAGE_PIN U15 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[5]}]
set_property -dict {PACKAGE_PIN W18 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[4]}]
set_property -dict {PACKAGE_PIN V19 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[3]}]
set_property -dict {PACKAGE_PIN U19 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[2]}]
set_property -dict {PACKAGE_PIN E19 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[1]}]
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports {slide_leds_out[0]}]

# DPAD BUTTONS
set_property -dict {PACKAGE_PIN U18 IOSTANDARD LVCMOS33} [get_ports {dpad_btns_in[0]}]
set_property -dict {PACKAGE_PIN T18 IOSTANDARD LVCMOS33} [get_ports {dpad_btns_in[1]}]
set_property -dict {PACKAGE_PIN T17 IOSTANDARD LVCMOS33} [get_ports {dpad_btns_in[2]}]
set_property -dict {PACKAGE_PIN U17 IOSTANDARD LVCMOS33} [get_ports {dpad_btns_in[3]}]
set_property -dict {PACKAGE_PIN W19 IOSTANDARD LVCMOS33} [get_ports {dpad_btns_in[4]}]