# EE3165 - Digital Design Verification: Lab 5: Circuit Design for Basic Standard Cells

This repository contains the circuit designs, simulation setups, and analysis data for **Lab 5: Circuit Design for Basic Standard Cells**, as part of the IC Design course at Ho Chi Minh City University of Technology (HCMUT).

Details on the theoretical background, testbench setups, result data, and in-depth analysis can be found in the detailed report: **Bao_Cao_Lab5_TKVM.pdf**.

## 📖 Objectives
- Perform schematic design and create symbols for basic standard logic gates using the **gpdk045** (45nm) technology.
- Perform DC Analysis to determine logic levels, Noise Margins, and the switching voltage $V_M$.
- Perform Transient Analysis to measure propagation delay ($t_{pd}$), rise/fall times ($t_{rise}$, $t_{fall}$), and power consumption (static/dynamic).
- Conduct an in-depth performance comparison between different circuit architectures (Static CMOS vs. Transmission Gate).

## 🧪 Experiments
### 1. NOT Logic Gate (Experiment 1)
- Design a basic Inverter circuit and sweep the VTC (Voltage Transfer Characteristic).
- Perform static and dynamic analysis, and adjust the PMOS sizing to compensate for low carrier mobility, achieving the ideal switching point $V_M = V_{DD}/2$.

### 2. NAND and NOR Logic Gates (Experiment 2)
- Design 2-input NAND and NOR gates.
- Investigate DC characteristics for different input sweep cases to observe the $V_M$ voltage shift caused by the Body effect and Stacking effect.
- Optimize transistor widths (W) to balance the switching point.

### 3. XOR and XNOR Logic Gates (Experiment 3)
- Implement an XOR gate and develop it into an XNOR gate.
- Compare and evaluate the fundamental differences between a simple logic gate (like NOR) and a complex gate (XNOR) in terms of: transistor count, internal parasitic capacitance, VTC complexity, propagation delay, and static/dynamic power consumption.

### 4. Multiplexer (MUX) Design (Experiment 4)
- Investigate and compare two Inverting MUX topologies.
- Evaluate the pros and cons of the **Static CMOS** architecture versus the **Transmission Gate (TG)** architecture.
- Conduct an in-depth analysis of the physical area footprint, timing characteristics, power efficiency, and driving capability/logic level restoration for each architecture.

## 🛠 Tools & Technologies
- **Design Environment:** Cadence Virtuoso (using Testbenches, DC/Transient Sweeps, and the Calculator tool for measurements).
- **Technology Library:** gpdk045 (45nm process).

## 📄 Documentation
- Please refer to the attached `Bao_Cao_Lab5_TKVM.pdf` file in this directory for complete data tables, circuit schematics, and detailed timing diagrams.
