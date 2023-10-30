# CONFIG SETUP
set_property -dict { CFGBVS VCCO CONFIG_VOLTAGE 3.3 } [current_design]

# 100MHz clock
set_property -dict { PACKAGE_PIN W5  IOSTANDARD LVCMOS33 } [get_ports { hw_clk_i }]

# 7-SEGMENT ANODES
set_property -dict { PACKAGE_PIN W4  IOSTANDARD LVCMOS33 } [get_ports { hw_svn_seg_anodes_o[3] }]
set_property -dict { PACKAGE_PIN V4  IOSTANDARD LVCMOS33 } [get_ports { hw_svn_seg_anodes_o[2] }]
set_property -dict { PACKAGE_PIN U4  IOSTANDARD LVCMOS33 } [get_ports { hw_svn_seg_anodes_o[1] }]
set_property -dict { PACKAGE_PIN U2  IOSTANDARD LVCMOS33 } [get_ports { hw_svn_seg_anodes_o[0] }]

# 7-SEGMENT CATHODES
set_property -dict { PACKAGE_PIN V7  IOSTANDARD LVCMOS33 } [get_ports { hw_svn_seg_cathodes_o[7] }]
set_property -dict { PACKAGE_PIN W7  IOSTANDARD LVCMOS33 } [get_ports { hw_svn_seg_cathodes_o[6] }]
set_property -dict { PACKAGE_PIN W6  IOSTANDARD LVCMOS33 } [get_ports { hw_svn_seg_cathodes_o[5] }]
set_property -dict { PACKAGE_PIN U8  IOSTANDARD LVCMOS33 } [get_ports { hw_svn_seg_cathodes_o[4] }]
set_property -dict { PACKAGE_PIN V8  IOSTANDARD LVCMOS33 } [get_ports { hw_svn_seg_cathodes_o[3] }]
set_property -dict { PACKAGE_PIN U5  IOSTANDARD LVCMOS33 } [get_ports { hw_svn_seg_cathodes_o[2] }]
set_property -dict { PACKAGE_PIN V5  IOSTANDARD LVCMOS33 } [get_ports { hw_svn_seg_cathodes_o[1] }]
set_property -dict { PACKAGE_PIN U7  IOSTANDARD LVCMOS33 } [get_ports { hw_svn_seg_cathodes_o[0] }]

# DPAD BUTTONS
set_property -dict { PACKAGE_PIN U18 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_dpad_btns_i[0] }]
set_property -dict { PACKAGE_PIN T18 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_dpad_btns_i[1] }]
set_property -dict { PACKAGE_PIN T17 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_dpad_btns_i[2] }]
set_property -dict { PACKAGE_PIN U17 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_dpad_btns_i[3] }]
set_property -dict { PACKAGE_PIN W19 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_dpad_btns_i[4] }]

# SLIDE SWITCHES
set_property -dict { PACKAGE_PIN R2  IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[15] }]
set_property -dict { PACKAGE_PIN T1  IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[14] }]
set_property -dict { PACKAGE_PIN U1  IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[13] }]
set_property -dict { PACKAGE_PIN W2  IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[12] }]
set_property -dict { PACKAGE_PIN R3  IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[11] }]
set_property -dict { PACKAGE_PIN T2  IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[10] }]
set_property -dict { PACKAGE_PIN T3  IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[9] }]
set_property -dict { PACKAGE_PIN V2  IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[8] }]
set_property -dict { PACKAGE_PIN W13 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[7] }]
set_property -dict { PACKAGE_PIN W14 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[6] }]
set_property -dict { PACKAGE_PIN V15 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[5] }]
set_property -dict { PACKAGE_PIN W15 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[4] }]
set_property -dict { PACKAGE_PIN W17 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[3] }]
set_property -dict { PACKAGE_PIN W16 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[2] }]
set_property -dict { PACKAGE_PIN V16 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[1] }]
set_property -dict { PACKAGE_PIN V17 IOSTANDARD LVCMOS33 PULLDOWN true } [get_ports { hw_slide_switches_i[0] }]

# SLIDE SWITCH LEDS
set_property -dict { PACKAGE_PIN L1  IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[15] }]
set_property -dict { PACKAGE_PIN P1  IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[14] }]
set_property -dict { PACKAGE_PIN N3  IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[13] }]
set_property -dict { PACKAGE_PIN P3  IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[12] }]
set_property -dict { PACKAGE_PIN U3  IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[11] }]
set_property -dict { PACKAGE_PIN W3  IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[10] }]
set_property -dict { PACKAGE_PIN V3  IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[9] }]
set_property -dict { PACKAGE_PIN V13 IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[8] }]
set_property -dict { PACKAGE_PIN V14 IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[7] }]
set_property -dict { PACKAGE_PIN U14 IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[6] }]
set_property -dict { PACKAGE_PIN U15 IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[5] }]
set_property -dict { PACKAGE_PIN W18 IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[4] }]
set_property -dict { PACKAGE_PIN V19 IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[3] }]
set_property -dict { PACKAGE_PIN U19 IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[2] }]
set_property -dict { PACKAGE_PIN E19 IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[1] }]
set_property -dict { PACKAGE_PIN U16 IOSTANDARD LVCMOS33 } [get_ports { hw_slide_leds_o[0] }]

# VGA Connector
set_property -dict { PACKAGE_PIN G19 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_red_o[0] }]
set_property -dict { PACKAGE_PIN H19 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_red_o[1] }]
set_property -dict { PACKAGE_PIN J19 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_red_o[2] }]
set_property -dict { PACKAGE_PIN N19 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_red_o[3] }]
set_property -dict { PACKAGE_PIN J17 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_green_o[0] }]
set_property -dict { PACKAGE_PIN H17 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_green_o[1] }]
set_property -dict { PACKAGE_PIN G17 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_green_o[2] }]
set_property -dict { PACKAGE_PIN D17 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_green_o[3] }]
set_property -dict { PACKAGE_PIN N18 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_blue_o[0] }]
set_property -dict { PACKAGE_PIN L18 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_blue_o[1] }]
set_property -dict { PACKAGE_PIN K18 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_blue_o[2] }]
set_property -dict { PACKAGE_PIN J18 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_blue_o[3] }]
set_property -dict { PACKAGE_PIN P19 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_hsync_o }]
set_property -dict { PACKAGE_PIN R19 IOSTANDARD LVCMOS33 } [get_ports { hw_vga_vsync_o }]

# UART
set_property -dict { PACKAGE_PIN B18 IOSTANDARD LVCMOS33 } [get_ports { hw_uart_rx_i }]
set_property -dict { PACKAGE_PIN A18 IOSTANDARD LVCMOS33 } [get_ports { hw_uart_tx_o }]


#set_multicycle_path 3 -from [get_pins { vga_controller/output_mode_reg[*]/C }] -to [get_pins { video_memory/vram_reg_*/ADDRBWRADDR[*] }]