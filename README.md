# EE3165 - Digital Design Verification: Lab 1

This repository contains the RTL designs and testbenches for **Lab 1: Hardware Description and Digital Design Verification** as part of the IC Design course at Ho Chi Minh City University of Technology (HCMUT).

## Project Overview
The project covers fundamental digital circuit designs using **SystemVerilog**, transitioning from combinational logic to complex sequential finite state machines (FSM). It includes both structural (logic-expression) and behavioral modeling styles.

### Experiments Included:
1. **Combinational Circuits**: 8-bit Ripple-Carry Adder/Subtractor with Overflow and Carry-out detection.
2. **Sequential Circuits**: Accumulator designs (evaluating latency and pipelining trade-offs using Input/Output registers).
3. **FSM Implementation (Logic-Expression)**: Sequence detector FSM (detects four consecutive `0`s or `1`s with overlapping) using Boolean logic equations for both **Binary** and **One-hot** encodings.
4. **FSM Implementation (Behavioral)**: Sequence detector FSM re-implemented using behavioral `always_comb` and `case` statements with asynchronous resets.

## Repository Structure
* `00_src/` : SystemVerilog RTL design files.
* `01_tb/`  : SystemVerilog Testbench files for simulation.
* `docs/`   : Detailed lab report (PDF) and waveform simulation screenshots.

## Tools Used
* **HDL:** SystemVerilog
* **Simulation:** Cadence Xcelium / SimVision
* **Editor:** VS Code / Vim

## Verification
All designs have been verified using self-checking testbenches or waveform analysis. Refer to the `docs/` folder for timing diagrams demonstrating proper circuit behavior (including corner cases like asynchronous resets, sequence overlapping, and signed overflows).
