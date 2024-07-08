# fpga_groups_project


## Getting started
Choose the appropriate branch to clone project for selected board:
* de0-nano SoC
* arria10 SoC

### Generate Verilog from rdl:
    peakrdl regblock registers.rdl -o outputs/ --cpuif axi4-lite-flat

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

### Updating image on SDMMC
#### De0 Nano Board:
1. Copy .wic image to sdmmc: use Win32DiskImage or any other available tool

2. Copy soc_system.rbf to sdmmc

#### Arria10 SoC DevKit Board:
1. Create `fit_spl_fpga.its` file with the following content:

```
// SPDX-Licence-Identifirt: GPL-2.0
/*
* Copyright (C) 2019 Intel Corporation <www.intel.com>
*
*/

/dts-v1/;
/ {
    description = "FIT image with FPGA bistream";
    #address-cells = <1>;

    images {
        fpga-periph-1{
            description = "FPGA peripheral bitstream";
            data = /incbin/("soc_system.periph.rbf");
            type = "fpga";
            arch = "arm";
            compression = "none";
        };
    };

    configurations {
        default = "config-1";
        config-1 {
            description = "Boot with FPGA early IO release config";
            fpga = "fpga-periph-1";
        };
    };

};
```

2. Make image for U-boot: `mkimage -E -f fit_spl_fpga.its fit_spl_fpga.itb`

3. Copy .wic image to sdmmc: use Win32DiskImage or any other available tool

4. Copy 3 files to sdmmc: `fit_spl_fpga.itb`, `soc_system.core.rbf` and `soc_system.periph.rbf`

5. Rename  `a10soc-devkit.dtb` to `socfpga_arria10_socdk_sdmmc.dtb`
