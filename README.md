# fpga_groups_project - DE0-NANO-SOC version

### <ins>Useful information:</ins>
[PeakRDL - control & status register (CSR) generator toolchain](https://peakrdl.readthedocs.io/en/latest/index.html)

[SVUnit verification framework](https://docs.svunit.org/en/stable/)

[Cyclone® V Hard Processor System (HPS) Technical Reference Manual](https://www.intel.com/content/www/us/en/docs/programmable/683126/21-2/hard-processor-system-technical-reference.html)

[Cyclone V Hard Processor System (HPS) Register Address Map and Definitions](https://www.intel.com/content/www/us/en/programmable/hps/cyclone-v/hps.html)

[AMBA AXI and ACE Protocol Specification](https://developer.arm.com/documentation/ihi0022/e)

### <ins>Update Submodules:</ins>
#### After changing branches, run the following command to update all submodules to the commit specified by the branch:

    git submodule update --init --recursive

### <ins>Generate Verilog from rdl:</ins>
#### 1. Go to rdl directory:

    cd rdl

#### 2. Generate Verilog from rdl file:

    peakrdl regblock registers.rdl -o outputs/ --cpuif axi4-lite-flat

### <ins>Simulate design</ins>
#### 1. Go to test directory:

    cd tests/modul_studenta_unit_test

#### 2. Run test in gui mode:

    ./run_svunit_gui.sh

#### 3. Run test in console mode:

    ./run_svunit.sh

### <ins>FPGA bitstream files generation from command line:</ins>
#### 1. Go to quartus directory:

    cd quartus

#### 2. Run quartus compilation:

    quartus_sh --flow compile soc_system

### <ins>FPGA bitstream files generation from Quartus GUI (alternative method):</ins>
#### 1. Go to quartus directory:

    cd quartus

#### 2. Open quartus:

    quartus soc_system.qpf &

#### 2. Run "Compile Design"

### <ins>FPGA bitstream files (different formats) generated by Quartus:</ins>

    quartus/output_files/soc_system.sof
    quartus/output_files/soc_system.rbf
