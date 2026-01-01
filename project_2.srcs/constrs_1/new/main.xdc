##############################################################################
## Constraints for Pong on SP701 Evaluation Platform (xc7s100fgga676-2)
## Based on UG1319 SP701 User Guide and official XDC references
##############################################################################

##############################################################################
## System Clock - 33.33 MHz Differential LVDS on Bank 33 MRCC pins
## Si570 oscillator output connected to bank 33 MRCC pins
##############################################################################
set_property -dict { PACKAGE_PIN AE8  IOSTANDARD LVDS } [get_ports { clk_p }];
set_property -dict { PACKAGE_PIN AE7  IOSTANDARD LVDS } [get_ports { clk_n }];
create_clock -add -name sys_clk_pin -period 30.00 -waveform {0 15} [get_ports { clk_p }];

##############################################################################
## GPIO Push Buttons - Active High (directly mapped, directly to FPGA)
## SW4-SW9 are the user buttons
##############################################################################
## GPIO_SW_C (Center) - Reset - SW9
set_property -dict { PACKAGE_PIN AB9  IOSTANDARD LVCMOS18 } [get_ports { rst }];

## GPIO_SW_N (North) - Player 1 Up - SW4
set_property -dict { PACKAGE_PIN AB8  IOSTANDARD LVCMOS18 } [get_ports { btn_p1_up }];

## GPIO_SW_S (South) - Player 1 Down - SW6
set_property -dict { PACKAGE_PIN AA8  IOSTANDARD LVCMOS18 } [get_ports { btn_p1_down }];

## GPIO_SW_E (East) - Player 2 Up - SW5
set_property -dict { PACKAGE_PIN AC9  IOSTANDARD LVCMOS18 } [get_ports { btn_p2_up }];

## GPIO_SW_W (West) - Player 2 Down - SW7
set_property -dict { PACKAGE_PIN AC8  IOSTANDARD LVCMOS18 } [get_ports { btn_p2_down }];

##############################################################################
## PMOD1 (J14) - Bank 16 - 3.3V LVCMOS - VGA Red and Green
## Reference: UG1319 Table showing PMOD pinouts
##############################################################################
## PMOD1 Upper Row (pins 1-4) - VGA Red
set_property -dict { PACKAGE_PIN C13  IOSTANDARD LVCMOS33 } [get_ports { vga_r[0] }];  # PMOD1_pin1
set_property -dict { PACKAGE_PIN D14  IOSTANDARD LVCMOS33 } [get_ports { vga_r[1] }];  # PMOD1_pin2
set_property -dict { PACKAGE_PIN D15  IOSTANDARD LVCMOS33 } [get_ports { vga_r[2] }];  # PMOD1_pin3
set_property -dict { PACKAGE_PIN D16  IOSTANDARD LVCMOS33 } [get_ports { vga_r[3] }];  # PMOD1_pin4

## PMOD1 Lower Row (pins 7-10) - VGA Green
set_property -dict { PACKAGE_PIN E13  IOSTANDARD LVCMOS33 } [get_ports { vga_g[0] }];  # PMOD1_pin7
set_property -dict { PACKAGE_PIN E14  IOSTANDARD LVCMOS33 } [get_ports { vga_g[1] }];  # PMOD1_pin8
set_property -dict { PACKAGE_PIN E15  IOSTANDARD LVCMOS33 } [get_ports { vga_g[2] }];  # PMOD1_pin9
set_property -dict { PACKAGE_PIN E16  IOSTANDARD LVCMOS33 } [get_ports { vga_g[3] }];  # PMOD1_pin10

##############################################################################
## PMOD2 (J15) - Bank 16 - 3.3V LVCMOS - VGA Blue and Sync
##############################################################################
## PMOD2 Upper Row (pins 1-4) - VGA Blue
set_property -dict { PACKAGE_PIN F13  IOSTANDARD LVCMOS33 } [get_ports { vga_b[0] }];  # PMOD2_pin1
set_property -dict { PACKAGE_PIN F14  IOSTANDARD LVCMOS33 } [get_ports { vga_b[1] }];  # PMOD2_pin2
set_property -dict { PACKAGE_PIN F15  IOSTANDARD LVCMOS33 } [get_ports { vga_b[2] }];  # PMOD2_pin3
set_property -dict { PACKAGE_PIN F16  IOSTANDARD LVCMOS33 } [get_ports { vga_b[3] }];  # PMOD2_pin4

## PMOD2 Lower Row (pins 7-10) - VGA Sync
set_property -dict { PACKAGE_PIN G13  IOSTANDARD LVCMOS33 } [get_ports { hsync }];     # PMOD2_pin7
set_property -dict { PACKAGE_PIN G14  IOSTANDARD LVCMOS33 } [get_ports { vsync }];     # PMOD2_pin8

##############################################################################
## Configuration
##############################################################################
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 50 [current_design]
