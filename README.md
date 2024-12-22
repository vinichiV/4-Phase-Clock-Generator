# 4-Phase Clock Generator
Generating four distinct clock phases, each phase being equally spaced in time (90°).  
By using two D-type flip-flops (four phases, two bits), we can design a four-phase clock generator circuit (synchronous):
- Input: Initialization pulse.
- Output: 4 clock pulses with 4 distinct phases (p1, p2, p3, p4), each having equal phase shift.<br>
| Q1 | Q0 | Q'1 | Q'0 | D1 | D0 |
|----|----|-----|-----|----|----|
| 1  | 1  | 1   | 0   | 1  | 0  |
| 1  | 0  | 0   | 0   | 0  | 0  |
| 0  | 0  | 0   | 1   | 0  | 1  |
| 0  | 1  | 1   | 1   | 1  | 1  |

