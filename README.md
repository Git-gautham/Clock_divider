# Clock Divider Design (Verilog)

## 📌 Overview

This project implements a clock divider in Verilog HDL that generates divided clock signals (/2, /4, /8) from a single input clock.

## 🧠 Design Description

The design uses a 3-bit counter to divide the input clock frequency:

* `clk_div2` → LSB of counter
* `clk_div4` → 2nd bit
* `clk_div8` → 3rd bit

The design is modular:

* **Top Module**: Connects and assigns outputs
* **Submodule**: 3-bit counter

## ⚠️ Note

The divided signals are intended for **simulation purposes only**.
In real FPGA/ASIC designs, dedicated clock management resources (PLL/MMCM) should be used instead of logic-generated clocks.

## 🧪 Simulation

Simulated using Xilinx Vivado.

### Waveform Output:

![Waveform](https://github.com/Git-gautham/Clock_divider/blob/main/Waveform_screenshot.png)

## ▶️ How to Run

1. Open Vivado
2. Add source files from `/src`
3. Add testbench from `/tb`
4. Run simulation

## 📂 File Structure

* `src/` → RTL design files
* `tb/` → Testbench
* `sim/` → Simulation results

## 👤 Authors

AISWARYA VM
GAUTHAM P NAIR
LAKSHMI NAIR
