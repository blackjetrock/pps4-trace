EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L bluepill:BP U1
U 1 1 5F95E419
P 4800 2200
F 0 "U1" H 4800 3453 60  0000 C CNN
F 1 "BP" H 4800 3347 60  0000 C CNN
F 2 "BP:BLUEPILL" H 4700 2950 60  0001 C CNN
F 3 "" H 4700 2950 60  0001 C CNN
	1    4800 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x08_Male J2
U 1 1 5F960E4E
P 1350 1350
F 0 "J2" H 1458 1831 50  0000 C CNN
F 1 "Conn_01x08_Male" H 1458 1740 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 1350 1350 50  0001 C CNN
F 3 "~" H 1350 1350 50  0001 C CNN
	1    1350 1350
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x12_Male J3
U 1 1 5F963A74
P 1350 2650
F 0 "J3" H 1458 3331 50  0000 C CNN
F 1 "Conn_01x12_Male" H 1458 3240 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 1350 2650 50  0001 C CNN
F 3 "~" H 1350 2650 50  0001 C CNN
	1    1350 2650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 5F96510F
P 1000 4950
F 0 "J1" H 1108 5131 50  0000 C CNN
F 1 "Conn_01x02_Male" H 1108 5040 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1000 4950 50  0001 C CNN
F 3 "~" H 1000 4950 50  0001 C CNN
	1    1000 4950
	1    0    0    -1  
$EndComp
$Comp
L Microtan_65_CPU-cache:GND #PWR01
U 1 1 5F9695E1
P 1300 5200
F 0 "#PWR01" H 1300 5200 30  0001 C CNN
F 1 "GND" H 1300 5130 30  0001 C CNN
F 2 "" H 1300 5200 60  0000 C CNN
F 3 "" H 1300 5200 60  0000 C CNN
	1    1300 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 5050 1300 5050
Wire Wire Line
	1300 5050 1300 5200
$Comp
L Device:R_Small R11
U 1 1 5F969E8D
P 7950 5500
F 0 "R11" V 7754 5500 50  0000 C CNN
F 1 "R_Small" V 7845 5500 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 7950 5500 50  0001 C CNN
F 3 "~" H 7950 5500 50  0001 C CNN
	1    7950 5500
	0    1    1    0   
$EndComp
$Comp
L Device:D_Zener D1
U 1 1 5F96A4D7
P 8200 5750
F 0 "D1" V 8154 5830 50  0000 L CNN
F 1 "D_Zener" V 8245 5830 50  0000 L CNN
F 2 "Diode_THT:D_5KPW_P12.70mm_Horizontal" H 8200 5750 50  0001 C CNN
F 3 "~" H 8200 5750 50  0001 C CNN
	1    8200 5750
	0    1    1    0   
$EndComp
Wire Wire Line
	7200 5500 7850 5500
Wire Wire Line
	8050 5500 8200 5500
Wire Wire Line
	8200 5500 8200 5600
$Comp
L Microtan_65_CPU-cache:GND #PWR07
U 1 1 5F96B0C1
P 8200 6100
F 0 "#PWR07" H 8200 6100 30  0001 C CNN
F 1 "GND" H 8200 6030 30  0001 C CNN
F 2 "" H 8200 6100 60  0000 C CNN
F 3 "" H 8200 6100 60  0000 C CNN
	1    8200 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 6100 8200 5900
$Comp
L Device:C_Small C1
U 1 1 5F96BB5D
P 8700 5800
F 0 "C1" H 8792 5846 50  0000 L CNN
F 1 "C_Small" H 8792 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 8700 5800 50  0001 C CNN
F 3 "~" H 8700 5800 50  0001 C CNN
	1    8700 5800
	1    0    0    -1  
$EndComp
$Comp
L Microtan_65_CPU-cache:GND #PWR08
U 1 1 5F96C40D
P 8700 6100
F 0 "#PWR08" H 8700 6100 30  0001 C CNN
F 1 "GND" H 8700 6030 30  0001 C CNN
F 2 "" H 8700 6100 60  0000 C CNN
F 3 "" H 8700 6100 60  0000 C CNN
	1    8700 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 6100 8700 5900
Wire Wire Line
	8700 5700 8700 5500
Wire Wire Line
	8700 5500 8200 5500
Connection ~ 8200 5500
$Comp
L Regulator_Linear:LM7805_TO220 U2
U 1 1 5F96CB37
P 9600 5500
F 0 "U2" H 9600 5742 50  0000 C CNN
F 1 "LM7805_TO220" H 9600 5651 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 9600 5725 50  0001 C CIN
F 3 "http://www.fairchildsemi.com/ds/LM/LM7805.pdf" H 9600 5450 50  0001 C CNN
	1    9600 5500
	1    0    0    -1  
$EndComp
$Comp
L Microtan_65_CPU-cache:GND #PWR010
U 1 1 5F96DB69
P 9600 6100
F 0 "#PWR010" H 9600 6100 30  0001 C CNN
F 1 "GND" H 9600 6030 30  0001 C CNN
F 2 "" H 9600 6100 60  0000 C CNN
F 3 "" H 9600 6100 60  0000 C CNN
	1    9600 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 6100 9600 5800
Wire Wire Line
	8700 5500 9200 5500
Connection ~ 8700 5500
$Comp
L Device:C_Small C3
U 1 1 5F96E81F
P 10050 5750
F 0 "C3" H 10142 5796 50  0000 L CNN
F 1 "C_Small" H 10142 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 10050 5750 50  0001 C CNN
F 3 "~" H 10050 5750 50  0001 C CNN
	1    10050 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F96F012
P 9200 5800
F 0 "C2" H 9292 5846 50  0000 L CNN
F 1 "C_Small" H 9292 5755 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 9200 5800 50  0001 C CNN
F 3 "~" H 9200 5800 50  0001 C CNN
	1    9200 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5500 9200 5700
Connection ~ 9200 5500
Wire Wire Line
	9200 5500 9300 5500
Wire Wire Line
	9900 5500 10050 5500
Wire Wire Line
	10050 5500 10050 5650
$Comp
L Microtan_65_CPU-cache:GND #PWR011
U 1 1 5F96FE89
P 10050 6100
F 0 "#PWR011" H 10050 6100 30  0001 C CNN
F 1 "GND" H 10050 6030 30  0001 C CNN
F 2 "" H 10050 6100 60  0000 C CNN
F 3 "" H 10050 6100 60  0000 C CNN
	1    10050 6100
	1    0    0    -1  
$EndComp
$Comp
L Microtan_65_CPU-cache:GND #PWR09
U 1 1 5F970677
P 9200 6100
F 0 "#PWR09" H 9200 6100 30  0001 C CNN
F 1 "GND" H 9200 6030 30  0001 C CNN
F 2 "" H 9200 6100 60  0000 C CNN
F 3 "" H 9200 6100 60  0000 C CNN
	1    9200 6100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9200 5900 9200 6100
Wire Wire Line
	10050 5850 10050 6100
$Comp
L Microtan_65_CPU-cache:GND #PWR06
U 1 1 5F97318B
P 4950 3350
F 0 "#PWR06" H 4950 3350 30  0001 C CNN
F 1 "GND" H 4950 3280 30  0001 C CNN
F 2 "" H 4950 3350 60  0000 C CNN
F 3 "" H 4950 3350 60  0000 C CNN
	1    4950 3350
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR05
U 1 1 5F974679
P 4950 900
F 0 "#PWR05" H 4950 750 50  0001 C CNN
F 1 "+5V" H 4965 1073 50  0000 C CNN
F 2 "" H 4950 900 50  0001 C CNN
F 3 "" H 4950 900 50  0001 C CNN
	1    4950 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 900  4950 1150
Wire Wire Line
	4950 3250 4950 3350
$Comp
L power:+5V #PWR012
U 1 1 5F97577A
P 10600 5300
F 0 "#PWR012" H 10600 5150 50  0001 C CNN
F 1 "+5V" H 10615 5473 50  0000 C CNN
F 2 "" H 10600 5300 50  0001 C CNN
F 3 "" H 10600 5300 50  0001 C CNN
	1    10600 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10600 5300 10600 5500
Wire Wire Line
	10600 5500 10050 5500
Connection ~ 10050 5500
Text Notes 9650 1000 0    50   ~ 0
Outputs as well, so can drive bus.\nControl signals\nButtons, leds and non volatile storage.\n
$Comp
L Device:R_Small R1
U 1 1 5F99373B
P 1700 4950
F 0 "R1" V 1504 4950 50  0000 C CNN
F 1 "10R" V 1595 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 1700 4950 50  0001 C CNN
F 3 "~" H 1700 4950 50  0001 C CNN
	1    1700 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	1600 4950 1200 4950
Wire Wire Line
	4500 4950 7200 4950
Wire Wire Line
	7200 4950 7200 5500
$Comp
L Device:R_Small R2
U 1 1 5F9A05C8
P 2000 4950
F 0 "R2" V 1804 4950 50  0000 C CNN
F 1 "10R" V 1895 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2000 4950 50  0001 C CNN
F 3 "~" H 2000 4950 50  0001 C CNN
	1    2000 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5F9A0E24
P 2300 4950
F 0 "R3" V 2104 4950 50  0000 C CNN
F 1 "10R" V 2195 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2300 4950 50  0001 C CNN
F 3 "~" H 2300 4950 50  0001 C CNN
	1    2300 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5F9A18B7
P 2600 4950
F 0 "R4" V 2404 4950 50  0000 C CNN
F 1 "10R" V 2495 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2600 4950 50  0001 C CNN
F 3 "~" H 2600 4950 50  0001 C CNN
	1    2600 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5F9A21D2
P 2900 4950
F 0 "R5" V 2704 4950 50  0000 C CNN
F 1 "10R" V 2795 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 2900 4950 50  0001 C CNN
F 3 "~" H 2900 4950 50  0001 C CNN
	1    2900 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5F9A2BB4
P 3200 4950
F 0 "R6" V 3004 4950 50  0000 C CNN
F 1 "10R" V 3095 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3200 4950 50  0001 C CNN
F 3 "~" H 3200 4950 50  0001 C CNN
	1    3200 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R7
U 1 1 5F9A357F
P 3500 4950
F 0 "R7" V 3304 4950 50  0000 C CNN
F 1 "10R" V 3395 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3500 4950 50  0001 C CNN
F 3 "~" H 3500 4950 50  0001 C CNN
	1    3500 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R8
U 1 1 5F9A3E83
P 3800 4950
F 0 "R8" V 3604 4950 50  0000 C CNN
F 1 "10R" V 3695 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 3800 4950 50  0001 C CNN
F 3 "~" H 3800 4950 50  0001 C CNN
	1    3800 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R9
U 1 1 5F9A4883
P 4100 4950
F 0 "R9" V 3904 4950 50  0000 C CNN
F 1 "10R" V 3995 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4100 4950 50  0001 C CNN
F 3 "~" H 4100 4950 50  0001 C CNN
	1    4100 4950
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R10
U 1 1 5F9A5230
P 4400 4950
F 0 "R10" V 4204 4950 50  0000 C CNN
F 1 "10R" V 4295 4950 50  0000 C CNN
F 2 "Resistor_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P10.16mm_Horizontal" H 4400 4950 50  0001 C CNN
F 3 "~" H 4400 4950 50  0001 C CNN
	1    4400 4950
	0    1    1    0   
$EndComp
Wire Wire Line
	1800 4950 1900 4950
Wire Wire Line
	2100 4950 2200 4950
Wire Wire Line
	2400 4950 2500 4950
Wire Wire Line
	2700 4950 2800 4950
Wire Wire Line
	3000 4950 3100 4950
Wire Wire Line
	3300 4950 3400 4950
Wire Wire Line
	3600 4950 3700 4950
Wire Wire Line
	3900 4950 4000 4950
Wire Wire Line
	4200 4950 4300 4950
$Sheet
S 9200 1550 1250 750 
U 5F9ACD65
F0 "inputs" 50
F1 "inputs.sch" 50
$EndSheet
Text GLabel 1550 1050 2    50   Input ~ 0
D1
Text GLabel 1550 1150 2    50   Input ~ 0
D2
Text GLabel 1550 1250 2    50   Input ~ 0
D3
Text GLabel 1550 1350 2    50   Input ~ 0
D4
Text GLabel 1550 1450 2    50   Input ~ 0
D5
Text GLabel 1550 1550 2    50   Input ~ 0
D6
Text GLabel 1550 1650 2    50   Input ~ 0
D7
Text GLabel 1550 1750 2    50   Input ~ 0
D8
Text GLabel 1550 2150 2    50   Input ~ 0
A1
Text GLabel 1550 2250 2    50   Input ~ 0
A2
Text GLabel 1550 2350 2    50   Input ~ 0
A3
Text GLabel 1550 2450 2    50   Input ~ 0
A4
Text GLabel 1550 2550 2    50   Input ~ 0
A5
Text GLabel 1550 2650 2    50   Input ~ 0
A6
Text GLabel 1550 2750 2    50   Input ~ 0
A7
Text GLabel 1550 2850 2    50   Input ~ 0
A8
Text GLabel 1550 2950 2    50   Input ~ 0
A9
Text GLabel 1550 3050 2    50   Input ~ 0
A10
Text GLabel 1550 3150 2    50   Input ~ 0
A11
Text GLabel 1550 3250 2    50   Input ~ 0
A12
Text GLabel 1600 4150 2    50   Input ~ 0
CLKA
Text GLabel 1600 4250 2    50   Input ~ 0
CLKB
Text GLabel 1600 4350 2    50   Input ~ 0
WIO
Text GLabel 1600 3550 2    50   Input ~ 0
DO1
Text GLabel 1600 3650 2    50   Input ~ 0
DO2
Text GLabel 1600 3750 2    50   Input ~ 0
DO3
Text GLabel 1600 3850 2    50   Input ~ 0
DO4
$Comp
L Connector:Conn_01x04_Male J4
U 1 1 60AE7BB9
P 1400 3650
F 0 "J4" H 1508 3931 50  0000 C CNN
F 1 "Conn_01x04_Male" H 1508 3840 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 1400 3650 50  0001 C CNN
F 3 "~" H 1400 3650 50  0001 C CNN
	1    1400 3650
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 60AEA566
P 1400 4250
F 0 "J5" H 1508 4531 50  0000 C CNN
F 1 "Conn_01x03_Male" H 1508 4440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 1400 4250 50  0001 C CNN
F 3 "~" H 1400 4250 50  0001 C CNN
	1    1400 4250
	1    0    0    -1  
$EndComp
Text GLabel 5550 1900 2    50   Input ~ 0
IA1
Text GLabel 5550 1800 2    50   Input ~ 0
IA2
Text GLabel 5550 1700 2    50   Input ~ 0
IA3
Text GLabel 5550 1600 2    50   Input ~ 0
IA4
Text GLabel 5550 1500 2    50   Input ~ 0
IA5
Text GLabel 5550 1400 2    50   Input ~ 0
IA6
Text GLabel 4050 2700 0    50   Input ~ 0
IA7
Text GLabel 4050 2800 0    50   Input ~ 0
IA8
Text GLabel 5550 3000 2    50   Input ~ 0
IA9
Text GLabel 5550 2900 2    50   Input ~ 0
IA10
Text GLabel 5550 2800 2    50   Input ~ 0
IA11
Text GLabel 5550 2700 2    50   Input ~ 0
IA12
Text GLabel 4050 1700 0    50   Input ~ 0
ID1
Text GLabel 4050 1800 0    50   Input ~ 0
ID2
Text GLabel 4050 1900 0    50   Input ~ 0
ID3
Text GLabel 4050 2000 0    50   Input ~ 0
ID4
Text GLabel 4050 2500 0    50   Input ~ 0
IDO1
Text GLabel 4050 1400 0    50   Input ~ 0
IDO2
Text GLabel 4050 1500 0    50   Input ~ 0
IDO3
Text GLabel 4050 1600 0    50   Input ~ 0
IDO4
Text GLabel 5550 2300 2    50   Input ~ 0
ID8
Text GLabel 5550 2400 2    50   Input ~ 0
ID7
Text GLabel 5550 2500 2    50   Input ~ 0
ID6
Text GLabel 5550 2600 2    50   Input ~ 0
ID5
Text GLabel 5550 2100 2    50   Input ~ 0
ICLKA
Text GLabel 5550 2200 2    50   Input ~ 0
ICLKB
Text GLabel 5550 2000 2    50   Input ~ 0
IWIO
$Comp
L Connector:Conn_01x05_Male J6
U 1 1 60B01E85
P 2350 1250
F 0 "J6" H 2458 1631 50  0000 C CNN
F 1 "Conn_01x05_Male" H 2458 1540 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical" H 2350 1250 50  0001 C CNN
F 3 "~" H 2350 1250 50  0001 C CNN
	1    2350 1250
	1    0    0    -1  
$EndComp
Text GLabel 2550 1050 2    50   Input ~ 0
X1
Text GLabel 2550 1150 2    50   Input ~ 0
X2
Text GLabel 2550 1250 2    50   Input ~ 0
X3
Text GLabel 2550 1350 2    50   Input ~ 0
X4
Text GLabel 2550 1450 2    50   Input ~ 0
X5
Text GLabel 3000 3000 0    50   Input ~ 0
IX1
Text GLabel 3000 3100 0    50   Input ~ 0
IX2
Text GLabel 3000 3200 0    50   Input ~ 0
IX3
Text GLabel 3000 3300 0    50   Input ~ 0
IX4
Text GLabel 4050 2600 0    50   Input ~ 0
IX5
$Comp
L Charleslabs_Parts:SD_Card_Module_catalex A1
U 1 1 60DADFC0
P 2800 2250
F 0 "A1" H 3129 2296 50  0000 L CNN
F 1 "SD_Card_Module_catalex" H 3129 2205 50  0000 L CNN
F 2 "Charleslabs_Parts:SD_Card_Module" H 3750 2300 50  0001 C CNN
F 3 "" H 2500 2600 50  0001 C CNN
	1    2800 2250
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J9
U 1 1 60DB4843
P 3850 2200
F 0 "J9" H 3800 1900 50  0000 C CNN
F 1 "Conn_01x04_Male" H 3500 2600 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3850 2200 50  0001 C CNN
F 3 "~" H 3850 2200 50  0001 C CNN
	1    3850 2200
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J8
U 1 1 60DB583D
P 3400 2200
F 0 "J8" H 3372 2174 50  0000 R CNN
F 1 "Conn_01x04_Male" H 3800 1700 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3400 2200 50  0001 C CNN
F 3 "~" H 3400 2200 50  0001 C CNN
	1    3400 2200
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 60DB6938
P 3200 3100
F 0 "J7" H 3172 3074 50  0000 R CNN
F 1 "Conn_01x04_Male" H 3172 2983 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 3200 3100 50  0001 C CNN
F 3 "~" H 3200 3100 50  0001 C CNN
	1    3200 3100
	-1   0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR04
U 1 1 60DB994F
P 4800 1150
F 0 "#PWR04" H 4800 1000 50  0001 C CNN
F 1 "+3V3" H 4815 1323 50  0000 C CNN
F 2 "" H 4800 1150 50  0001 C CNN
F 3 "" H 4800 1150 50  0001 C CNN
	1    4800 1150
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR02
U 1 1 60DBA326
P 2800 1850
F 0 "#PWR02" H 2800 1700 50  0001 C CNN
F 1 "+3V3" H 2815 2023 50  0000 C CNN
F 2 "" H 2800 1850 50  0001 C CNN
F 3 "" H 2800 1850 50  0001 C CNN
	1    2800 1850
	1    0    0    -1  
$EndComp
$Comp
L Microtan_65_CPU-cache:GND #PWR03
U 1 1 60DBACD7
P 2800 2650
F 0 "#PWR03" H 2800 2650 30  0001 C CNN
F 1 "GND" H 2800 2580 30  0001 C CNN
F 2 "" H 2800 2650 60  0000 C CNN
F 3 "" H 2800 2650 60  0000 C CNN
	1    2800 2650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
