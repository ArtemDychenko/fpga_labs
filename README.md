# fpga_groups_project


## Getting started
Choose the appropriate branch to clone project for selected board:
* de0-nano SoC
* arria10 SoC

### Generate Verilog from rdl:
    `peakrdl regblock registers.rdl -o outputs/ --cpuif axi4-lite-flat`

### Output files generation:
1. Open quartus from folder quartus:
    `quartus soc_system.qpf`

2. Run "Compile Design"

### .rbf file generation:
1. Go to quartus/output_files
2. run command:

* de0-nano:
    
    `quartus_cpf -o bitstream_compression=on -c soc_system.sof soc_system.rbf`

* arria10: 

    `quartus_cpf --hps -o bitstream_compression=on -c soc_system.sof soc_system.rbf`
