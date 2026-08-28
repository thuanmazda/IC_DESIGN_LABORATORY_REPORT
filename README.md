# EE3165 - Digital Design Verification: Lab 4: MOS Transistor Characterization

This repository contains the simulation setups, extracted data, and analysis for **Lab 4: MOS Transistor Characterization**, as part of the IC Design course at Ho Chi Minh City University of Technology (HCMUT).

Details on the theoretical background, testbench setups, result data, and in-depth analysis can be found in the detailed report: **Bao_Cao_Lab4_TKVM.pdf**.

## 📖 Objectives
- Understand the operation regions of MOSFETs (Cut-off, Triode, Saturation) through the analysis of $I_D - V_{GS}$ and $I_D - V_{DS}$ characteristics.
- Characterize `nmos1v_lvt` and `pmos1v_lvt` devices using the **gpdk045** (45nm) technology library.
- Quantitatively analyze second-order effects: 
  - Body Effect.
  - Channel Length Modulation (CLM).
- Investigate the characteristics and behavior of Stacked and Parallel transistor configurations.

## 🧪 Experiments
### 1. MOSFET Characteristics without Body Effect (Experiment 1)
- Build testbenches to sweep parameters such as $V_{DS}$, $V_{SD}$, $V_{GS}$, and channel width $W$.
- Extract and determine the threshold voltage $V_{TH}$ and linear/saturation operation parameters for NMOS and PMOS.

### 2. Body Effect (Experiment 2)
- Analyze the variation of the threshold voltage $V_{TH}$ with the potential difference $V_{SB}$ (for NMOS) and $V_{BS}$ (for PMOS).
- Sweep $V_{SB}$/$V_{BS}$ parameters, combined with $V_{DS}$/$V_{SD}$ and channel width $W$ sweeps, to evaluate the degradation of saturation current amplitude.
- Discuss the impossibility of completely eliminating the Body Effect in stacked NMOS structures due to the shared grounded P-Substrate.

### 3. Channel Length Modulation - CLM (Experiment 3)
- Investigate the variation of drain current $I_D$ with large changes in $V_{DS}$/$V_{SD}$ in the saturation region to identify device non-idealities.
- Analyze the impact of varying channel length $L$ (from 45nm to 450nm) on output resistance ($r_o$) and saturation current slope (applicable for Current Mirror optimization).
- Examine, compare, and contrast the current characteristics of Stacked and Parallel transistor branches with equivalent single transistors.

## 🛠 Tools & Technologies
- **Design Environment:** Cadence Virtuoso (running on the doelab.site server).
- **Technology Library:** bBulk gpdk045 (45nm process).
- **Analysis:** Static simulation (DC Sweep) and parameter analysis of voltage, current, output resistance, etc.

## 📄 Documentation
- Please refer to the attached `Bao_Cao_Lab4_TKVM.pdf` file in this repository for comprehensive data tables, simulation schematics, and related characteristic charts.