# 1-to-4 Demultiplexer (Verilog HDL)

## Overview
This project implements a **1-to-4 Demultiplexer** using **Verilog HDL**.  
A demultiplexer routes a single input signal to one of multiple outputs based on the select lines.

---

##  Module Description

**Inputs:**
- `i` : 1-bit data input
- `s` : 2-bit select line

**Outputs:**
- `y` : 4-bit output (one-hot encoded)

---

## Working Principle
- When input `i = 1`, only one output line becomes HIGH based on the value of select lines `s`.
- When input `i = 0`, all outputs remain LOW regardless of `s`.

### Output Mapping:
| Select (s) | Output (y) |
|------------|-----------|
| 00         | 0001      |
| 01         | 0010      |
| 10         | 0100      |
| 11         | 1000      |

---

## 🧩 Verilog Implementation
The design is implemented using:
- Combinational `always @(*)` block
- `case` statement for select deco
