# verilog_components

## Overview
Some useful Verilog components that I have created and used in various projects.
Standard interfaces are used to allow for easy integration into larger designs.

## Interface
### Ready Valid (rdy/vld) Interface

The ready valid interface is a standard interface used to communicate between modules. It consists of two control signals, `rdy` and `vld`, and a data signal, `vld_data`. The `rdy` signal indicates that the destination is ready to accept data, the `vld` signal indicates that the source has valid data, and the `vld_data` signal is the data being communicated. Data is always transferred on the rising edge of the clock when both `rdy` and `vld` are high. The `rdy` signal is generated whenever the destination is ready to accept data, and the `vld` signal is generated whenever the source has valid data, `rdy` is not asserted in response to `vld` being asserted. The `rdy` signal is used to control the flow of data, and the `vld` signal is used to indicate that the data is valid.


![ready valid](https://svg.wavedrom.com/github/BrewKris/verilog_components/main/wavedrom/rdy_vld.json5?)

### Valid Acknowledge (vld/ack) Interface

The valid acknowledge interface is a standard interface used to communicate between modules. It consists of two control signals, `vld` and `ack`, and a data signal, `vld_data`. The `vld` signal indicates that the source has valid data, the `ack` signal indicates that the destination has accepted the data, and the `vld_data` signal is the data being communicated. Data is always transferred on the rising edge of the clock when both `ack` and `vld` are high.

![ready valid](https://svg.wavedrom.com/github/BrewKris/verilog_components/main/wavedrom/vld_ack.json5?)