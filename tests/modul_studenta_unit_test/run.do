transcript on

vlib work
vmap work

vlog -sv -work work {../../rdl/outputs/registers_pkg.sv}
vlog -sv -work work {../../rdl/outputs/registers.sv}

vlog -sv -work work {../../axi4_lite/axi4_lite_pkg.sv}
vlog -sv -work work {../../axi4_lite/axi4_lite_if.sv}

vlog -sv -work work {../../axi4_lite/unit_test_pkg.sv}

vlog -sv -work work {../svunit_base/svunit_pkg.sv}

vlog -sv -work work {./modul_studenta_unit_test.sv}

vlog -sv -work work {./modul_studenta_unit_test_runner.sv}

vlog -sv -work work {../../rtl/modul_studenta.sv}

vsim -suppress 12003,8386,8440 -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L work -sv_seed random -voptargs="+acc" modul_studenta_unit_test_runner

add wave -position insertpoint  \
sim:/modul_studenta_unit_test_runner/ut/dut/clk \
sim:/modul_studenta_unit_test_runner/ut/dut/rst \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_awready \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_awvalid \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_awaddr \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_awprot \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_wready \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_wvalid \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_wdata \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_wstrb \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_bready \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_bvalid \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_bresp \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_arready \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_arvalid \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_araddr \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_arprot \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_rready \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_rvalid \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_rdata \
sim:/modul_studenta_unit_test_runner/ut/dut/s_axil_rresp \
sim:/modul_studenta_unit_test_runner/ut/dut/hwif_out \


view structure
view signals
run -all