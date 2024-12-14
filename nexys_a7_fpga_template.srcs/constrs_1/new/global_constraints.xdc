########################################################################################################################
## @file global_constraints.xdc
##
## @brief This file defines global configuration and bitstream settings for the FPGA project.
##
## Detailed Description:
## This XDC (Xilinx Design Constraints) file specifies global settings that are crucial for the FPGA's initialization
## and overall operation. These constraints ensure that the FPGA is correctly configured during implementation and 
## operates reliably within the specified parameters.
##
## Key Sections:
## - **General Configuration**: Settings that affect the overall FPGA behavior and performance.
## - **Bitstream Settings**: Configuration of settings related to the FPGA bitstream, including security and
##   initialization.
## - **Startup and Debug**: Specifies settings related to startup behavior and debugging interfaces.
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

## General Configuration
set_property CONFIG_MODE SPIx4 [current_design]
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CONFIG_STARTUP_CLK CCLK [current_design]

## Bitstream Settings
# General
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.GENERAL.COMPRESSION_MODE ZIP [current_design]

# Config
set_property BITSTREAM.CONFIG.OVERTEMPPOWERDOWN ENABLE [current_design]
set_property BITSTREAM.CONFIG.WATCHDOG_TIMEOUT 500ms [current_design]
set_property BITSTREAM.CONFIG.ENCRYPTION AES256 [current_design]
set_property BITSTREAM.CONFIG.AUTHENTICATION RSA [current_design]
set_property BITSTREAM.CONFIG.DEBUG_INTERFACE_ENABLE TRUE [current_design]
