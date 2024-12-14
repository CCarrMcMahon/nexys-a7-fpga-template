########################################################################################################################
## @file power_constraints.xdc
##
## @brief This file defines the power constraints for the FPGA project.
##
## Detailed Description:
## This XDC (Xilinx Design Constraints) file specifies the power-related constraints for the FPGA project. These 
## constraints include voltage levels, current limits, and other power management settings required for optimal 
## performance and reliability of the design.
##
## Key Commands:
## - **set_power_supply**: Specifies the power supply voltages for various power rails.
## - **set_power_budget**: Defines the maximum power consumption for the design.
## - **set_current_limit**: Sets current limits for power supplies to prevent over-current conditions.
##
## Revision History:
## - v1.0: Initial release.
##
## License Info:
## This file is provided under the [Your License Name Here]. Please review the terms and conditions before use.
##
## Author: [Your Name]
## Date: [Current Date]
########################################################################################################################

# Power Supply Constraints
set_power_supply -vcco_0  3.3 [current_design]
set_power_supply -vcco_14 3.3 [current_design]
set_power_supply -vcco_15 3.3 [current_design]
set_power_supply -vcco_16 3.3 [current_design]
set_power_supply -vcco_34 3.3 [current_design]
set_power_supply -vcco_35 3.3 [current_design]
set_power_supply -vccaux 1.8 [current_design]
set_power_supply -vccint 1.0 [current_design]
set_power_supply -vccbram 1.0 [current_design]
set_power_supply -vccbatt_0 1.8 [current_design]

# Power Budget Constraints
set_power_budget -max_power 5.0 -unit W [current_design]

# Current Limit Constraints
set_current_limit -vcco  1.0 [current_design]
set_current_limit -vccint 1.5 [current_design]

