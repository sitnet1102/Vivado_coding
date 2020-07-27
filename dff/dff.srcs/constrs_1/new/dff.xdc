set_property -dict {PACKAGE_PIN J4 IOSTANDARD LVCMOS33} [get_ports npr]
set_property -dict {PACKAGE_PIN L3 IOSTANDARD LVCMOS33} [get_ports nclr]
set_property -dict {PACKAGE_PIN K3 IOSTANDARD LVCMOS33} [get_ports d]
set_property -dict {PACKAGE_PIN M2 IOSTANDARD LVCMOS33} [get_ports clk]
set_property -dict {PACKAGE_PIN F15 IOSTANDARD LVCMOS33} [get_ports q]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {npr_IBUF}]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {clk_IBUF}]