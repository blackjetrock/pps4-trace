EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 4
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
L ajm:pps4-rom-a05 U2
U 1 1 6417F206
P 7400 4200
F 0 "U2" H 7350 4765 50  0000 C CNN
F 1 "pps4-rom-a05" H 7350 4674 50  0000 C CNN
F 2 "ajm_kicad:qip42" H 7150 4800 50  0001 C CNN
F 3 "" H 7150 4800 50  0001 C CNN
	1    7400 4200
	1    0    0    -1  
$EndComp
Text GLabel 6700 3900 0    50   Input ~ 0
VSS
Text GLabel 6700 5900 0    50   Input ~ 0
VSS
Text GLabel 8000 5900 2    50   Input ~ 0
VSS
Text GLabel 6700 4100 0    50   Input ~ 0
VDD
Text GLabel 7975 4400 2    50   Input ~ 0
VDD
Text GLabel 8000 4600 2    50   Input ~ 0
ID1
Text GLabel 8000 4700 2    50   Input ~ 0
ID2
Text GLabel 8000 5000 2    50   Input ~ 0
ID3
Text GLabel 8000 5100 2    50   Input ~ 0
ID4
Text GLabel 8000 4500 2    50   Input ~ 0
ID5
Text GLabel 8000 4800 2    50   Input ~ 0
ID6
Text GLabel 8000 4900 2    50   Input ~ 0
ID7
Text GLabel 8000 5200 2    50   Input ~ 0
ID8
Text GLabel 6700 4700 0    50   Input ~ 0
AB1
Text GLabel 6700 4600 0    50   Input ~ 0
AB2
Text GLabel 6700 4500 0    50   Input ~ 0
AB3
Text GLabel 8000 5300 2    50   Input ~ 0
AB4
Text GLabel 6700 5700 0    50   Input ~ 0
AB5
Text GLabel 8000 5700 2    50   Input ~ 0
AB6
Text GLabel 6700 5400 0    50   Input ~ 0
AB7
Text GLabel 8000 5500 2    50   Input ~ 0
AB8
Text GLabel 6700 5300 0    50   Input ~ 0
AB9
Text GLabel 7950 5400 2    50   Input ~ 0
AB10
Text GLabel 6700 5000 0    50   Input ~ 0
VSS
Text GLabel 6725 5100 0    50   Input ~ 0
CLKA
Text GLabel 6750 4900 0    50   Input ~ 0
CLKB
Text GLabel 8000 4000 2    50   Input ~ 0
AS1
Text GLabel 6700 4000 0    50   Input ~ 0
AS2
Text GLabel 6700 4200 0    50   Input ~ 0
AS3
Text GLabel 6700 4400 0    50   Input ~ 0
AS4
Text GLabel 8000 3900 2    50   Input ~ 0
VSS
Text GLabel 7950 4200 2    50   Input ~ 0
A11X
$Comp
L rp2040:Pico U1
U 1 1 64194002
P 2200 4725
F 0 "U1" H 2200 5940 50  0000 C CNN
F 1 "Pico" H 2200 5849 50  0000 C CNN
F 2 "rp2040:RPi_Pico_SMD_TH" V 2200 4725 50  0001 C CNN
F 3 "" H 2200 4725 50  0001 C CNN
	1    2200 4725
	1    0    0    -1  
$EndComp
Wire Wire Line
	1175 5475 1300 5475
Wire Wire Line
	1500 4975 1300 4975
Wire Wire Line
	1300 4975 1300 5475
Connection ~ 1300 5475
Wire Wire Line
	1300 5475 1500 5475
Wire Wire Line
	1300 4475 1300 4975
Connection ~ 1300 4975
Wire Wire Line
	1300 4475 1500 4475
Wire Wire Line
	1500 3975 1300 3975
Wire Wire Line
	1300 3975 1300 4475
Connection ~ 1300 4475
Text GLabel 3225 5475 2    50   Input ~ 0
VDD
Wire Wire Line
	3225 5475 3100 5475
Wire Wire Line
	2900 4975 3100 4975
Wire Wire Line
	3100 4975 3100 5475
Connection ~ 3100 5475
Wire Wire Line
	3100 5475 2900 5475
Wire Wire Line
	2900 3975 3100 3975
Wire Wire Line
	3100 3975 3100 4975
Connection ~ 3100 4975
Wire Wire Line
	2200 5875 2200 5975
Wire Wire Line
	2200 5975 3100 5975
Wire Wire Line
	3100 5975 3100 5475
$Sheet
S 750  7025 1125 575 
U 641AE42A
F0 "Sheet641AE429" 50
F1 "drivers.sch" 50
$EndSheet
Wire Wire Line
	6700 5900 6800 5900
Wire Wire Line
	6700 5300 6800 5300
Wire Wire Line
	6725 5100 6800 5100
Wire Wire Line
	6750 4900 6800 4900
Wire Wire Line
	6700 4700 6800 4700
Wire Wire Line
	6700 4500 6800 4500
Wire Wire Line
	6700 3900 6800 3900
Wire Wire Line
	6700 4100 6800 4100
Wire Wire Line
	6700 5700 6800 5700
Wire Wire Line
	7900 5400 7950 5400
Wire Wire Line
	7900 5200 8000 5200
Wire Wire Line
	7900 5000 8000 5000
Wire Wire Line
	7900 4800 8000 4800
Wire Wire Line
	7900 4600 8000 4600
Wire Wire Line
	7900 4400 7975 4400
Wire Wire Line
	7900 4200 7950 4200
Wire Wire Line
	7900 4000 8000 4000
$Sheet
S 2175 7000 1025 575 
U 641D5056
F0 "Sheet641D5055" 50
F1 "inputs.sch" 50
$EndSheet
$Sheet
S 3550 7025 975  525 
U 641E4029
F0 "Sheet641E4028" 50
F1 "outputs2.sch" 50
$EndSheet
Text GLabel 1125 4775 0    50   Input ~ 0
PAB1
Text GLabel 1125 4875 0    50   Input ~ 0
PAB2
Text GLabel 1125 5075 0    50   Input ~ 0
PAB3
Text GLabel 1125 5275 0    50   Input ~ 0
PAB5
Text GLabel 3175 5175 2    50   Input ~ 0
PCLKA
Text GLabel 3175 5275 2    50   Input ~ 0
PCLKB
Text GLabel 3225 4875 2    50   Input ~ 0
PAS2
Text GLabel 3225 4675 2    50   Input ~ 0
PAS3
Text GLabel 3225 4575 2    50   Input ~ 0
PAS4
Text GLabel 1125 3775 0    50   Input ~ 0
IP_ID1
Text GLabel 1125 3875 0    50   Input ~ 0
IP_ID2
Text GLabel 1125 4075 0    50   Input ~ 0
IP_ID3
Text GLabel 1125 4175 0    50   Input ~ 0
IP_ID4
Text GLabel 1125 4275 0    50   Input ~ 0
IP_ID5
Text GLabel 1125 4375 0    50   Input ~ 0
IP_ID6
Text GLabel 1125 4575 0    50   Input ~ 0
IP_ID7
Text GLabel 1125 4675 0    50   Input ~ 0
IP_ID8
Text GLabel 1125 5175 0    50   Input ~ 0
PAB4
Text GLabel 3175 5575 2    50   Input ~ 0
PAB10
Text GLabel 3225 5075 2    50   Input ~ 0
PAS1
Text GLabel 3175 5375 2    50   Input ~ 0
PA11X
Wire Wire Line
	1500 3875 1125 3875
Wire Wire Line
	1125 3775 1500 3775
Wire Wire Line
	1125 4075 1500 4075
Wire Wire Line
	1500 4175 1125 4175
Wire Wire Line
	1125 4275 1500 4275
Wire Wire Line
	1500 4375 1125 4375
Wire Wire Line
	1125 4575 1500 4575
Wire Wire Line
	1500 4675 1125 4675
Wire Wire Line
	1125 4775 1500 4775
Wire Wire Line
	1500 4875 1125 4875
Wire Wire Line
	1125 5075 1500 5075
Wire Wire Line
	1500 5175 1125 5175
Wire Wire Line
	1125 5275 1500 5275
Wire Wire Line
	1500 5375 1125 5375
Text GLabel 1125 5675 0    50   Input ~ 0
PAB8
Text GLabel 1125 5375 0    50   Input ~ 0
PAB6
Text GLabel 3225 5675 2    50   Input ~ 0
PAB9
Text GLabel 1125 5575 0    50   Input ~ 0
PAB7
Text GLabel 1175 5475 0    50   Input ~ 0
VDD
Wire Wire Line
	1125 5575 1500 5575
Wire Wire Line
	1500 5675 1125 5675
Wire Wire Line
	3225 5675 2900 5675
Wire Wire Line
	3175 5575 2900 5575
Wire Wire Line
	3175 5375 2900 5375
Wire Wire Line
	3175 5275 2900 5275
Wire Wire Line
	2900 5175 3175 5175
Wire Wire Line
	3225 4575 2900 4575
Wire Wire Line
	2900 4675 3225 4675
Wire Wire Line
	3225 4875 2900 4875
Wire Wire Line
	2900 5075 3225 5075
Wire Wire Line
	2150 2200 2550 2200
Wire Wire Line
	2150 2200 2150 2400
Wire Wire Line
	2150 2400 2550 2400
Connection ~ 2150 2200
$Comp
L Device:R_Small R?
U 1 1 641A8E81
P 4150 2550
AR Path="/6001B7D3/60296A19/641A8E81" Ref="R?"  Part="1" 
AR Path="/6001B7D3/641A8E81" Ref="R?"  Part="1" 
AR Path="/61535A67/641A8E81" Ref="R?"  Part="1" 
AR Path="/641A8E81" Ref="R35"  Part="1" 
AR Path="/630BAFD1/641A8E81" Ref="R?"  Part="1" 
AR Path="/630E4C46/641A8E81" Ref="R?"  Part="1" 
F 0 "R35" H 4209 2596 50  0000 L CNN
F 1 "5k" H 4209 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4150 2550 50  0001 C CNN
F 3 "~" H 4150 2550 50  0001 C CNN
	1    4150 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 641A8E87
P 2150 2650
AR Path="/6001B7D3/60296A19/641A8E87" Ref="C?"  Part="1" 
AR Path="/6001B7D3/641A8E87" Ref="C?"  Part="1" 
AR Path="/61535A67/641A8E87" Ref="C?"  Part="1" 
AR Path="/641A8E87" Ref="C1"  Part="1" 
AR Path="/630BAFD1/641A8E87" Ref="C?"  Part="1" 
AR Path="/630E4C46/641A8E87" Ref="C?"  Part="1" 
F 0 "C1" H 2242 2696 50  0000 L CNN
F 1 "22uF" H 2242 2605 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 2150 2650 50  0001 C CNN
F 3 "~" H 2150 2650 50  0001 C CNN
	1    2150 2650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 641A8E8D
P 4800 2450
AR Path="/6001B7D3/60296A19/641A8E8D" Ref="C?"  Part="1" 
AR Path="/6001B7D3/641A8E8D" Ref="C?"  Part="1" 
AR Path="/61535A67/641A8E8D" Ref="C?"  Part="1" 
AR Path="/641A8E8D" Ref="C2"  Part="1" 
AR Path="/630BAFD1/641A8E8D" Ref="C?"  Part="1" 
AR Path="/630E4C46/641A8E8D" Ref="C?"  Part="1" 
F 0 "C2" H 4892 2496 50  0000 L CNN
F 1 "22uF" H 4892 2405 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 4800 2450 50  0001 C CNN
F 3 "~" H 4800 2450 50  0001 C CNN
	1    4800 2450
	1    0    0    -1  
$EndComp
$Comp
L pspice:INDUCTOR L?
U 1 1 641A8E93
P 2850 1800
AR Path="/6001B7D3/60296A19/641A8E93" Ref="L?"  Part="1" 
AR Path="/6001B7D3/641A8E93" Ref="L?"  Part="1" 
AR Path="/61535A67/641A8E93" Ref="L?"  Part="1" 
AR Path="/641A8E93" Ref="L1"  Part="1" 
AR Path="/630BAFD1/641A8E93" Ref="L?"  Part="1" 
AR Path="/630E4C46/641A8E93" Ref="L?"  Part="1" 
F 0 "L1" H 2850 2015 50  0000 C CNN
F 1 "22uH" H 2850 1924 50  0000 C CNN
F 2 "Inductor_SMD:L_Coilcraft_LPS5030" H 2850 1800 50  0001 C CNN
F 3 "~" H 2850 1800 50  0001 C CNN
	1    2850 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 2400 2150 2550
Connection ~ 2150 2400
Connection ~ 2150 1800
Wire Wire Line
	2150 1800 2150 2200
Wire Wire Line
	3150 2200 3150 1800
Wire Wire Line
	3150 1800 3250 1800
Wire Wire Line
	3150 1800 3100 1800
Connection ~ 3150 1800
Wire Wire Line
	4150 1800 4150 2000
Connection ~ 4150 1800
Wire Wire Line
	4800 2350 4800 1800
$Comp
L Device:R_Small R?
U 1 1 641A8EA5
P 4150 2100
AR Path="/6001B7D3/60296A19/641A8EA5" Ref="R?"  Part="1" 
AR Path="/6001B7D3/641A8EA5" Ref="R?"  Part="1" 
AR Path="/61535A67/641A8EA5" Ref="R?"  Part="1" 
AR Path="/641A8EA5" Ref="R34"  Part="1" 
AR Path="/630BAFD1/641A8EA5" Ref="R?"  Part="1" 
AR Path="/630E4C46/641A8EA5" Ref="R?"  Part="1" 
F 0 "R34" H 4209 2146 50  0000 L CNN
F 1 "100k" H 4209 2055 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4150 2100 50  0001 C CNN
F 3 "~" H 4150 2100 50  0001 C CNN
	1    4150 2100
	1    0    0    -1  
$EndComp
Text Notes 3500 2100 0    50   ~ 0
Check values\n
$Comp
L Jumper:SolderJumper_2_Open JP?
U 1 1 641A8EAC
P 5150 1800
AR Path="/6001B7D3/60296A19/641A8EAC" Ref="JP?"  Part="1" 
AR Path="/6001B7D3/641A8EAC" Ref="JP?"  Part="1" 
AR Path="/61535A67/641A8EAC" Ref="JP?"  Part="1" 
AR Path="/641A8EAC" Ref="JP2"  Part="1" 
AR Path="/630BAFD1/641A8EAC" Ref="JP?"  Part="1" 
AR Path="/630E4C46/641A8EAC" Ref="JP?"  Part="1" 
F 0 "JP2" H 5150 2005 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5150 1914 50  0000 C CNN
F 2 "psion_org_2:SolderJumper-2_P1.3mm_Open_Pad0.8x0.8mm" H 5150 1800 50  0001 C CNN
F 3 "~" H 5150 1800 50  0001 C CNN
	1    5150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1800 4800 1800
Wire Wire Line
	4800 1800 5000 1800
Connection ~ 4800 1800
$Comp
L cq1re1-cache:Regulator_Switching_MT3608 U?
U 1 1 641A8EB6
P 2850 2300
AR Path="/61535A67/641A8EB6" Ref="U?"  Part="1" 
AR Path="/641A8EB6" Ref="U3"  Part="1" 
AR Path="/630BAFD1/641A8EB6" Ref="U?"  Part="1" 
AR Path="/630E4C46/641A8EB6" Ref="U?"  Part="1" 
F 0 "U3" H 2850 2667 50  0000 C CNN
F 1 "Regulator_Switching_MT3608" H 2850 2576 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-6" H 2900 2050 50  0001 L CIN
F 3 "" H 2600 2750 50  0001 C CNN
	1    2850 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:D D?
U 1 1 641A8EBC
P 3400 1800
AR Path="/630BAFD1/641A8EBC" Ref="D?"  Part="1" 
AR Path="/630E4C46/641A8EBC" Ref="D?"  Part="1" 
AR Path="/641A8EBC" Ref="D1"  Part="1" 
F 0 "D1" H 3400 1584 50  0000 C CNN
F 1 "SS36" H 3400 1675 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3400 1800 50  0001 C CNN
F 3 "~" H 3400 1800 50  0001 C CNN
	1    3400 1800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 1800 4150 1800
$Comp
L Device:C_Small C?
U 1 1 641A8EC3
P 5525 2300
AR Path="/6001B7D3/60296A19/641A8EC3" Ref="C?"  Part="1" 
AR Path="/6001B7D3/641A8EC3" Ref="C?"  Part="1" 
AR Path="/61535A67/641A8EC3" Ref="C?"  Part="1" 
AR Path="/641A8EC3" Ref="C3"  Part="1" 
AR Path="/630BAFD1/641A8EC3" Ref="C?"  Part="1" 
AR Path="/630E4C46/641A8EC3" Ref="C?"  Part="1" 
F 0 "C3" H 5617 2346 50  0000 L CNN
F 1 "10uF" H 5617 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 5525 2300 50  0001 C CNN
F 3 "~" H 5525 2300 50  0001 C CNN
	1    5525 2300
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 641A8EC9
P 5950 2300
AR Path="/6001B7D3/60296A19/641A8EC9" Ref="C?"  Part="1" 
AR Path="/6001B7D3/641A8EC9" Ref="C?"  Part="1" 
AR Path="/61535A67/641A8EC9" Ref="C?"  Part="1" 
AR Path="/641A8EC9" Ref="C4"  Part="1" 
AR Path="/630BAFD1/641A8EC9" Ref="C?"  Part="1" 
AR Path="/630E4C46/641A8EC9" Ref="C?"  Part="1" 
F 0 "C4" H 6042 2346 50  0000 L CNN
F 1 "100nF" H 6042 2255 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 5950 2300 50  0001 C CNN
F 3 "~" H 5950 2300 50  0001 C CNN
	1    5950 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 1800 5525 1800
Connection ~ 5525 1800
Wire Wire Line
	5525 1800 5950 1800
Wire Wire Line
	5950 2200 5950 1800
Connection ~ 5950 1800
Wire Wire Line
	5950 1800 6300 1800
Wire Wire Line
	5525 1800 5525 2200
$Comp
L Device:Jumper_NO_Small JP?
U 1 1 641A8ED6
P 1750 1800
AR Path="/630BAFD1/641A8ED6" Ref="JP?"  Part="1" 
AR Path="/630E4C46/641A8ED6" Ref="JP?"  Part="1" 
AR Path="/641A8ED6" Ref="JP1"  Part="1" 
F 0 "JP1" H 1750 1985 50  0000 C CNN
F 1 "Jumper_NO_Small" H 1750 1894 50  0000 C CNN
F 2 "psion_org_2:SolderJumper-2_P1.3mm_Open_Pad0.8x0.8mm" H 1750 1800 50  0001 C CNN
F 3 "~" H 1750 1800 50  0001 C CNN
	1    1750 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1250 1800 1650 1800
Wire Wire Line
	1850 1800 2150 1800
Text Notes 4250 1450 0    50   ~ 0
JP1: leave open until output of U3 is confirmed\nat 10.5V
$Comp
L Device:R_Small R?
U 1 1 641A8EE8
P 4150 2825
AR Path="/6001B7D3/60296A19/641A8EE8" Ref="R?"  Part="1" 
AR Path="/6001B7D3/641A8EE8" Ref="R?"  Part="1" 
AR Path="/61535A67/641A8EE8" Ref="R?"  Part="1" 
AR Path="/641A8EE8" Ref="R36"  Part="1" 
AR Path="/630BAFD1/641A8EE8" Ref="R?"  Part="1" 
AR Path="/630E4C46/641A8EE8" Ref="R?"  Part="1" 
F 0 "R36" H 4209 2871 50  0000 L CNN
F 1 "1k" H 4209 2780 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric" H 4150 2825 50  0001 C CNN
F 3 "~" H 4150 2825 50  0001 C CNN
	1    4150 2825
	1    0    0    -1  
$EndComp
Wire Wire Line
	3150 2400 4150 2400
Wire Wire Line
	4150 2200 4150 2400
Wire Wire Line
	4150 2450 4150 2400
Connection ~ 4150 2400
Wire Wire Line
	4150 2650 4150 2725
Wire Wire Line
	2150 3000 2850 3000
Wire Wire Line
	4150 3000 4150 2925
Wire Wire Line
	2150 2750 2150 3000
Connection ~ 2850 3000
Wire Wire Line
	2850 3000 4150 3000
Wire Wire Line
	2850 2600 2850 3000
Wire Wire Line
	4150 3000 4800 3000
Wire Wire Line
	4800 2550 4800 3000
Connection ~ 4150 3000
Wire Wire Line
	4800 3000 5525 3000
Wire Wire Line
	5525 2400 5525 3000
Connection ~ 4800 3000
Wire Wire Line
	5950 3000 5525 3000
Wire Wire Line
	5950 2400 5950 3000
Connection ~ 5525 3000
Text GLabel 2425 6125 2    50   Input ~ 0
SWD
Text GLabel 1800 6125 0    50   Input ~ 0
SWCLK
Wire Wire Line
	1800 6125 2100 6125
Wire Wire Line
	2100 6125 2100 5875
Wire Wire Line
	2300 5875 2300 6125
Wire Wire Line
	2300 6125 2425 6125
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 641E710A
P 3875 6150
F 0 "J1" H 3903 6176 50  0000 L CNN
F 1 "Conn_01x03_Female" H 3903 6085 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 3875 6150 50  0001 C CNN
F 3 "~" H 3875 6150 50  0001 C CNN
	1    3875 6150
	1    0    0    -1  
$EndComp
Text GLabel 3675 6050 0    50   Input ~ 0
SWD
Text GLabel 3675 6250 0    50   Input ~ 0
SWCLK
Text GLabel 3675 6150 0    50   Input ~ 0
VDD
Text GLabel 3250 3875 2    50   Input ~ 0
VSYS
Wire Wire Line
	3250 3875 2900 3875
Text GLabel 1250 1800 0    50   Input ~ 0
VSYS
Text GLabel 2725 3175 0    50   Input ~ 0
VDD
Wire Wire Line
	2725 3175 2850 3175
Wire Wire Line
	2150 1800 2600 1800
Wire Wire Line
	2850 3000 2850 3175
Text GLabel 6300 1800 2    50   Input ~ 0
VSS
$Comp
L Device:C_Small C5
U 1 1 6421D33D
P 8775 3775
F 0 "C5" H 8867 3821 50  0000 L CNN
F 1 "C_Small" H 8867 3730 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 8775 3775 50  0001 C CNN
F 3 "~" H 8775 3775 50  0001 C CNN
	1    8775 3775
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C6
U 1 1 6421D74C
P 9325 3775
F 0 "C6" H 9417 3821 50  0000 L CNN
F 1 "C_Small" H 9417 3730 50  0000 L CNN
F 2 "Capacitor_SMD:C_1210_3225Metric_Pad1.33x2.70mm_HandSolder" H 9325 3775 50  0001 C CNN
F 3 "~" H 9325 3775 50  0001 C CNN
	1    9325 3775
	1    0    0    -1  
$EndComp
Text GLabel 9725 3550 2    50   Input ~ 0
VSS
Text GLabel 9725 4025 2    50   Input ~ 0
VDD
Wire Wire Line
	9725 3550 9325 3550
Wire Wire Line
	8775 3550 8775 3675
Wire Wire Line
	8775 3875 8775 4025
Wire Wire Line
	8775 4025 9325 4025
Wire Wire Line
	9325 3675 9325 3550
Connection ~ 9325 3550
Wire Wire Line
	9325 3550 8775 3550
Wire Wire Line
	9325 3875 9325 4025
Connection ~ 9325 4025
Wire Wire Line
	9325 4025 9725 4025
$EndSCHEMATC
