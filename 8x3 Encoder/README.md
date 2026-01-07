# 8-to-3 Encoder (Verilog HDL)

## Overview
This project implements an **8-to-3 binary encoder** using Verilog HDL with an **enable input**.  
When the enable signal is active, the encoder converts a one-hot 8-bit input into a 3-bit binary output.

---

## Module Description

### Inputs
- `i [7:0]` : 8-bit one-hot input
- `e`       : Enable signal

### Output
- `y [2:0]` : 3-bit encoded output

---

## Functionality
- If `e = 1`, the encoder outputs the binary index of the active input bit.
- If `e = 0`, the output remains `000`.
- Only one input bit is expected to be HIGH at a time (one-hot input).

### Truth Mapping (when e = 1)
| Input (i)      | Output (y) |
|---------------|------------|
| 00000001      | 000        |
| 00000010      | 001        |
| 00000100      | 010        |
| 00001000      | 011        |
| 00010000      | 100        |
| 00100000      | 101        |
| 01000000      | 110        |
| 10000000      | 111        |

---

## Design Notes
- Implemented using a combinational `always @(*)` block
- `case` statement used for input decoding
- Default output is cleared to avoid unintended latches
- This is a basic encoder, not a priority encoder

---

## Testbench
A simple testbench is included to:
- Test all valid one-hot input combinations
- Verify behavior when enable is LOW and HIGH
- Display results using `$monitor`

---

## File Structure
encoder_8x3/
│── encoder.v
│── encodertb.v
│── README.md

---
## Tools
- Verilog HDL
- Any standard Verilog simulator (ModelSim, QuestaSim, etc.)

---

## Author
Naitik Khariya  
Electronics & Communication Engineering  
MNIT Jaipur

