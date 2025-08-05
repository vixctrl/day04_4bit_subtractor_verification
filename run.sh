#!/bin/bash

iverilog -o subtractor_tb 4bit_subtractor.v tb_4bit_subtractor.v
vvp subtractor_tb
gtkwave output.vcd
