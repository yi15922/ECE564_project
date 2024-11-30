# ECE564 Final Project Report

## Abstract
The device described in `dut.sv` can be used as part of a transformer model used in NLP (natural language processing). Specifically, the hardware performs a scaled dot-product attention, which provides an NLP model self-attention capabilities. This module reads from 2 input SRAMs and performs several matrix multiplications and transpositions on both the input data and intermediate results to arrive at the scaled dot-product attention matrix. 

This module builds on an existing matrix multiplier module designed, which is now called `MyMAC`. `MyMAC` has been substantially modified to accomodate the specific requirements of this particular application. The design makes efficient use of a single scratchpad SRAM to store intermediate values and minimizes idle time during the calculation process. The lowest achievable clock period is 16.1ns. 

## 1. Introduction
- Basically repeat what the description said
- Repeat what the abstract said
- MAC: 
  - Pipelined design
  - Interlocking address calculation
  - Robust to edge case matrices
- DUT: 
  - Parallism to minimize idle time
  - Instant matrix transpose

## 2. Micro-Architecture
- Overall block diagram
- Overall FSM flow

## 3. Interface Specification
- List of signals and functions
- Timing diagram of important signals

## 4. Technical Implementation
- Modifications to MAC
  - Allowing read/write address overrides
  - Allowing num row/col overrides
  - Interlocking address calculation: more robust to fault injection
  - Added row/col outputs for transpose
- Multiplexed ports architecture to enable inputs from results and scratchpad SRAM
- At V and K result calculations, parallel write & transpose to scratchpad SRAM to reduce runtime
- Instant matrix transpose address calculation mechanism
- Efficient use of scratchpad RAM to store multiple result matrices 

## 5. Verification
- Rigorous testing with edge cases used 

## 6. Results Achieved 
- Num samples calculated in num cycles
- Area report
- Energy
- Min clock period

## 7. Conclusions
