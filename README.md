# Four-Phase Clock Generator
Generating four distinct clock phases, each phase being equally spaced in time (90°).<br>
Since the *Four-Phase Clock Generator* can be considered as **a counter**, for the testbench, we initialize the input value to 0 to ensure that the pulse width of the clock pulses is equal and the phase shift is 90°, as well as to avoid the undefined values.<br>
By using two **D-type flip-flops** (four phases, two bits), we can design a four-phase clock generator circuit (synchronous):
- Input: Initialization pulse.
- Output: 4 clock pulses with 4 distinct phases (p1, p2, p3, p4), each having equal phase shift.<br>

***
***PRE-NEXT State Table:***<br>
![Screenshot 2024-12-22 145506](https://github.com/user-attachments/assets/6378ceda-7af9-4b35-a040-ccb4aba56ef3)<br>
***K-Map for D0:***<br>
![Screenshot 2024-12-22 151203](https://github.com/user-attachments/assets/bfde88b3-c5cc-4831-8d5d-4c2b9fb1831f)<br>
***K-Map for D1:***<br>
![Screenshot 2024-12-22 151431](https://github.com/user-attachments/assets/e0ee1447-7e2c-40b6-a868-9855cdf1a7e8)<br>
The circuit diagram can be implemented as follows (with two active high D-type flip-flops):<br>
![Screenshot 2024-08-08 233513](https://github.com/user-attachments/assets/e4254cf5-6eef-460c-a944-53fb9d16ee5e)
