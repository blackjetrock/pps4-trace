# pps4-trace

Circuit to attempt to trace the address and data busses of the PPS-4 processor. the aim is to capture the ROM contents by sniffing the bus.
PPS-4 runs on -17V so circuit sits on 0V to -17v and divides down the inputs to 3V3.
PSU runs off PPS-4 supply

There's a few ROM image files I've managed to capture.

Although the bus tracing worked, it was difficult to work out exactly which ROM was bank switched and when. I therefore built a ROM dumper, desoldered a set of ROMs from a 920 and dumped them. This gave me the bank switching regime as the ROMs only responded to certain addressing. These ROMs were concatenated, effectively, and can be run in the simulator.
Details of the bank switching are in the simulator ROM file.
