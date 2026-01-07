# 8-to-3 Priority Encoder (Verilog HDL)

## Overview
This project implements an **8-to-3 Priority Encoder** using Verilog HDL.
The encoder supports multiple active inputs and generates the output
based on a fixed priority scheme.

The design also provides a `valid` signal to indicate whether any input
is active when the enable signal is asserted.

---

## Module Description

### Inputs
- `i [7:0]` : 8-bit input vector
- `e`       : Enable signal

### Outputs
- `y [2:0]` : 3-bit encoded output
- `valid`   : Indicates at least one input is active

---

## Priority Scheme
- **Highest priority:** `i[7]`
- **Lowest priority:** `i[0]`
- If multiple input bits are HIGH, the encoder outputs the binary value
  of the highest-priority active input.

---

## Functional Behavior
- If `e = 0`  
  - `y = 000`
  - `valid = 0`

- If `e = 1` and at least one input bit is HIGH  
  - `y` reflects the highest-priority active input  
  - `valid = 1`

- If `e = 1` and all inputs are LOW  
  - `y = 000`
  - `valid = 0`

---

## Design Notes
- Implemented using combinational `always @(*)` logic
- Priority handled using an `if–else` chain
- Default assignments prevent latch inference
- Suitable for real hardware applications such as interrupt handling

---

## Testbench
The testbench verifies:
- Operation with enable LOW
- Single active input cases
- Multiple active input cases
- Correct priority resolution and valid flag behavior

---

## Tools
- Verilog HDL
- ModelSim / QuestaSim or any Verilog simulator

---

## Author
Naitik Khariya  
Electronics & Communication Engineering  
MNIT Jaipur
