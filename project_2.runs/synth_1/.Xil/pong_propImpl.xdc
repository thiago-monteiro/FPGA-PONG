set_property SRC_FILE_INFO {cfile:{C:/Users/Thiago Monteiro/Downloads/FPGA-PONG/project_2.srcs/constrs_1/new/main.xdc} rfile:../../../project_2.srcs/constrs_1/new/main.xdc id:1} [current_design]
set_property src_info {type:XDC file:1 line:10 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AE8  IOSTANDARD LVDS } [get_ports { clk_p }];
set_property src_info {type:XDC file:1 line:11 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AE7  IOSTANDARD LVDS } [get_ports { clk_n }];
set_property src_info {type:XDC file:1 line:12 export:INPUT save:INPUT read:READ} [current_design]
create_clock -add -name sys_clk_pin -period 30.00 -waveform {0 15} [get_ports { clk_p }];
set_property src_info {type:XDC file:1 line:19 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AB9  IOSTANDARD LVCMOS18 } [get_ports { rst }];
set_property src_info {type:XDC file:1 line:22 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AB8  IOSTANDARD LVCMOS18 } [get_ports { btn_p1_up }];
set_property src_info {type:XDC file:1 line:25 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AA8  IOSTANDARD LVCMOS18 } [get_ports { btn_p1_down }];
set_property src_info {type:XDC file:1 line:28 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AC9  IOSTANDARD LVCMOS18 } [get_ports { btn_p2_up }];
set_property src_info {type:XDC file:1 line:31 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN AC8  IOSTANDARD LVCMOS18 } [get_ports { btn_p2_down }];
set_property src_info {type:XDC file:1 line:38 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN C13  IOSTANDARD LVCMOS33 } [get_ports { vga_r[0] }];  # PMOD1_pin1
set_property src_info {type:XDC file:1 line:39 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D14  IOSTANDARD LVCMOS33 } [get_ports { vga_r[1] }];  # PMOD1_pin2
set_property src_info {type:XDC file:1 line:40 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D15  IOSTANDARD LVCMOS33 } [get_ports { vga_r[2] }];  # PMOD1_pin3
set_property src_info {type:XDC file:1 line:41 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN D16  IOSTANDARD LVCMOS33 } [get_ports { vga_r[3] }];  # PMOD1_pin4
set_property src_info {type:XDC file:1 line:44 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E13  IOSTANDARD LVCMOS33 } [get_ports { vga_g[0] }];  # PMOD1_pin7
set_property src_info {type:XDC file:1 line:45 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E14  IOSTANDARD LVCMOS33 } [get_ports { vga_g[1] }];  # PMOD1_pin8
set_property src_info {type:XDC file:1 line:46 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E15  IOSTANDARD LVCMOS33 } [get_ports { vga_g[2] }];  # PMOD1_pin9
set_property src_info {type:XDC file:1 line:47 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN E16  IOSTANDARD LVCMOS33 } [get_ports { vga_g[3] }];  # PMOD1_pin10
set_property src_info {type:XDC file:1 line:53 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F13  IOSTANDARD LVCMOS33 } [get_ports { vga_b[0] }];  # PMOD2_pin1
set_property src_info {type:XDC file:1 line:54 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F14  IOSTANDARD LVCMOS33 } [get_ports { vga_b[1] }];  # PMOD2_pin2
set_property src_info {type:XDC file:1 line:55 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F15  IOSTANDARD LVCMOS33 } [get_ports { vga_b[2] }];  # PMOD2_pin3
set_property src_info {type:XDC file:1 line:56 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN F16  IOSTANDARD LVCMOS33 } [get_ports { vga_b[3] }];  # PMOD2_pin4
set_property src_info {type:XDC file:1 line:59 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G13  IOSTANDARD LVCMOS33 } [get_ports { hsync }];     # PMOD2_pin7
set_property src_info {type:XDC file:1 line:60 export:INPUT save:INPUT read:READ} [current_design]
set_property -dict { PACKAGE_PIN G14  IOSTANDARD LVCMOS33 } [get_ports { vsync }];     # PMOD2_pin8
