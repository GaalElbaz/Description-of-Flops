# Description-of-Flops
Learn how to simulate and Implement D, JK, T Flip Flop using System-Verilog Description in Vivado.

The files are located in .srcs/sources_1/new for the design of the flop itself, the simulation file is in .srcs/sim_1/new.

Truth Table for T FlipFlop:
| T | CLK | Q  |
|---|-----|----|
| 0 | ↑   | Q  |
| 0 | ↓   | Q  |
| 1 | ↑   | ~Q |
| 1 | ↓   | ~Q |

Truth Table for D FlipFlop:
| D | CLK | Q |
|---|-----|---|
| 0 | ↑   | 0 |
| 0 | ↓   | 0 |
| 1 | ↑   | 1 |
| 1 | ↓   | 1 |

Truth Table for JK FlipFlop:
| J | K | Q (Toggle) |
|---|---|------------|
| 0 | 0 | Q          |
| 0 | 0 | Q          |
| 0 | 1 | 0          |
| 0 | 1 | 0          |
| 1 | 0 | 1          |
| 1 | 0 | 1          |
| 1 | 1 | ~Q (toggle)|
| 1 | 1 | ~Q (toggle)|

