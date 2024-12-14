# Getting Started

This guide will walk you through the process of setting up the `nexys-a7-fpga-template` project and getting started with FPGA development on the Nexys A7 Board.

## Prerequisites

Before you begin, ensure you have the following tools installed:

-   [Vivado Design Suite](https://www.amd.com/en/products/software/adaptive-socs-and-fpgas/vivado.html) installed on your computer.
-   If using [VSCode](https://code.visualstudio.com/)
    -   Install the recommended workspace extensions.
    -   Install [verible](https://github.com/chipsalliance/verible) and place the binaries in `C:\Program Files\verible`.

## Installation

Follow these steps to set up the project on your local machine:

1. Clone the repository:

    ```bash
    git clone git@github.com:CCarrMcMahon/nexys-a7-fpga-template.git
    ```

2. Open the project in Vivado:

-   **Method 1**: Open Vivado Design Suite, then navitage to `File > Open Project` and select the `nexys_a7_fpga_template.xpr` file.
-   **Method 2**: Navigate to the cloned repository and double-click the `nexys_a7_fpga_template.xpr` file to open it directly in vivado.

## Project Structure

Here's an overview of the key directories and files in this template:

-   `docs/`: Documentation files.
-   `nexys_a7_fpga_template.runs/`: Contains files generated from synthesis and implementation.
    -   `impl_1/`: Implementation files such as utilization reports and the `nexys_a7_fpga_template.bit` file used for programming the FPGA.
    -   `synth_1/`: Synthesis file such as utilization reports.
-   `nexys_a7_fpga_template.sim/`: Contains simulation files and testbenches.
-   `nexys_a7_fpga_template.srcs/`: Contains various source files.
    -   `constrs_1/`: Includes constraint files for the Nexys A7 board.
    -   `sources_1/`: Includes the source files for your FPGA design.
-   `nexys_a7_fpga_template.xpr`: Vivado project file.

## Building and Programming

### Synthesize and Implement

1. Open the Vivado project.
2. In the Flow Navigator, click on `Run Synthesis`.
3. After synthesis completes, click on `Run Implementation`.
4. Review and address any design rule violations or warnings.

### Generate Bitstream

1. Once implementation completes, click on `Generate Bitstream`.
2. After the bitstream generation is complete, click on `Open Hardware Manager`.

### Program the Board

1. Connect your Nexys A7 board to your computer via USB.
2. In the Hardware Manager, click on `Auto Connect` to connect to the board.
3. Select the generated bitstream file (`*.bit`) and click on `Program Device`.

## Running Simulations

To verify your design, you can run simulations using the provided testbenches:

1. Navigate to the `sim` directory.
2. Use the provided simulation scripts to run the simulations and analyze the results.
