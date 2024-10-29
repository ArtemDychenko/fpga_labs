# fpga_groups_project - DE0-NANO-SOC version

### <ins>Generate Verilog from rdl:</ins>
#### 1. Go to rdl directory:

    cd rdl

#### 2. Generate Verilog from rdl file:

    peakrdl regblock registers.rdl -o outputs/ --cpuif axi4-lite-flat

### <ins>Simulate design</ins>
#### 1. Go to test directory:

    cd tests/modul_studenta_unit_test

#### 2. Run test with gui mode:

    vsim -do run.do

#### 3. Run test with console mode:

    vsim -c -do run.do

### <ins>Output files generation:</ins>
#### 1. Go to quartus directory:

    cd quartus

#### 2. Open quartus:

    quartus soc_system.qpf &

#### 2. Run "Compile Design"

### <ins>RBF file generation:</ins>
#### 1. Go to quartus/output_files

    cd quartus/output_files

#### 2. Generate soc_system.rbf file:

    quartus_cpf -o bitstream_compression=on -c soc_system.sof soc_system.rbf