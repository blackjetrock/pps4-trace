EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Wire Wire Line
	1100 1650 1400 1650
Text GLabel 1100 1650 0    50   Input ~ 0
PAB1
Wire Wire Line
	1700 1925 1700 1850
Wire Wire Line
	1450 1925 1700 1925
Text GLabel 1450 1925 0    50   Input ~ 0
VDD
Wire Wire Line
	1700 750  1700 925 
Wire Wire Line
	1550 750  1700 750 
Wire Wire Line
	1700 1225 1700 1125
Connection ~ 1700 1225
Wire Wire Line
	2400 1225 1700 1225
Wire Wire Line
	1700 1250 1700 1225
$Comp
L Device:R_Small R?
U 1 1 641B199E
P 1700 1025
AR Path="/641B199E" Ref="R?"  Part="1" 
AR Path="/641AE42A/641B199E" Ref="R2"  Part="1" 
F 0 "R2" H 1759 1071 50  0000 L CNN
F 1 "47k" H 1759 980 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1700 1025 50  0001 C CNN
F 3 "~" H 1700 1025 50  0001 C CNN
	1    1700 1025
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641B19A4
P 1600 1550
AR Path="/641B19A4" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641B19A4" Ref="TR2"  Part="1" 
F 0 "TR2" H 1878 1596 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 1878 1505 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1630 1700 20  0001 C CNN
F 3 "" H 1600 1550 50  0001 C CNN
	1    1600 1550
	1    0    0    -1  
$EndComp
Text GLabel 2400 1225 2    50   Input ~ 0
AB1
Text GLabel 1550 750  0    50   Input ~ 0
VSS
Wire Wire Line
	1200 3350 1500 3350
Text GLabel 1200 3350 0    50   Input ~ 0
PAB2
Wire Wire Line
	1800 3625 1800 3550
Wire Wire Line
	1550 3625 1800 3625
Text GLabel 1550 3625 0    50   Input ~ 0
VDD
Wire Wire Line
	1800 2450 1800 2625
Wire Wire Line
	1650 2450 1800 2450
Wire Wire Line
	1800 2925 1800 2825
Connection ~ 1800 2925
Wire Wire Line
	2500 2925 1800 2925
Wire Wire Line
	1800 2950 1800 2925
$Comp
L Device:R_Small R?
U 1 1 641B22A0
P 1800 2725
AR Path="/641B22A0" Ref="R?"  Part="1" 
AR Path="/641AE42A/641B22A0" Ref="R4"  Part="1" 
F 0 "R4" H 1859 2771 50  0000 L CNN
F 1 "47k" H 1859 2680 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1800 2725 50  0001 C CNN
F 3 "~" H 1800 2725 50  0001 C CNN
	1    1800 2725
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641B22A6
P 1700 3250
AR Path="/641B22A6" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641B22A6" Ref="TR4"  Part="1" 
F 0 "TR4" H 1978 3296 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 1978 3205 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1730 3400 20  0001 C CNN
F 3 "" H 1700 3250 50  0001 C CNN
	1    1700 3250
	1    0    0    -1  
$EndComp
Text GLabel 2500 2925 2    50   Input ~ 0
AB2
Text GLabel 1650 2450 0    50   Input ~ 0
VSS
Wire Wire Line
	1075 4925 1375 4925
Text GLabel 1075 4925 0    50   Input ~ 0
PAB3
Wire Wire Line
	1675 5200 1675 5125
Wire Wire Line
	1425 5200 1675 5200
Text GLabel 1425 5200 0    50   Input ~ 0
VDD
Wire Wire Line
	1675 4025 1675 4200
Wire Wire Line
	1525 4025 1675 4025
Wire Wire Line
	1675 4500 1675 4400
Connection ~ 1675 4500
Wire Wire Line
	2375 4500 1675 4500
Wire Wire Line
	1675 4525 1675 4500
$Comp
L Device:R_Small R?
U 1 1 641B2C53
P 1675 4300
AR Path="/641B2C53" Ref="R?"  Part="1" 
AR Path="/641AE42A/641B2C53" Ref="R1"  Part="1" 
F 0 "R1" H 1734 4346 50  0000 L CNN
F 1 "47k" H 1734 4255 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1675 4300 50  0001 C CNN
F 3 "~" H 1675 4300 50  0001 C CNN
	1    1675 4300
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641B2C59
P 1575 4825
AR Path="/641B2C59" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641B2C59" Ref="TR1"  Part="1" 
F 0 "TR1" H 1853 4871 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 1853 4780 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1605 4975 20  0001 C CNN
F 3 "" H 1575 4825 50  0001 C CNN
	1    1575 4825
	1    0    0    -1  
$EndComp
Text GLabel 2375 4500 2    50   Input ~ 0
AB3
Text GLabel 1525 4025 0    50   Input ~ 0
VSS
Wire Wire Line
	1100 6625 1400 6625
Text GLabel 1100 6625 0    50   Input ~ 0
PAB4
Wire Wire Line
	1700 6900 1700 6825
Wire Wire Line
	1450 6900 1700 6900
Text GLabel 1450 6900 0    50   Input ~ 0
VDD
Wire Wire Line
	1700 5725 1700 5900
Wire Wire Line
	1550 5725 1700 5725
Wire Wire Line
	1700 6200 1700 6100
Connection ~ 1700 6200
Wire Wire Line
	2400 6200 1700 6200
Wire Wire Line
	1700 6225 1700 6200
$Comp
L Device:R_Small R?
U 1 1 641B4004
P 1700 6000
AR Path="/641B4004" Ref="R?"  Part="1" 
AR Path="/641AE42A/641B4004" Ref="R3"  Part="1" 
F 0 "R3" H 1759 6046 50  0000 L CNN
F 1 "47k" H 1759 5955 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1700 6000 50  0001 C CNN
F 3 "~" H 1700 6000 50  0001 C CNN
	1    1700 6000
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641B400A
P 1600 6525
AR Path="/641B400A" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641B400A" Ref="TR3"  Part="1" 
F 0 "TR3" H 1878 6571 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 1878 6480 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1630 6675 20  0001 C CNN
F 3 "" H 1600 6525 50  0001 C CNN
	1    1600 6525
	1    0    0    -1  
$EndComp
Text GLabel 2400 6200 2    50   Input ~ 0
AB4
Text GLabel 1550 5725 0    50   Input ~ 0
VSS
Wire Wire Line
	3475 1775 3775 1775
Text GLabel 3475 1775 0    50   Input ~ 0
PAB5
Wire Wire Line
	4075 2050 4075 1975
Wire Wire Line
	3825 2050 4075 2050
Text GLabel 3825 2050 0    50   Input ~ 0
VDD
Wire Wire Line
	4075 875  4075 1050
Wire Wire Line
	3925 875  4075 875 
Wire Wire Line
	4075 1350 4075 1250
Connection ~ 4075 1350
Wire Wire Line
	4775 1350 4075 1350
Wire Wire Line
	4075 1375 4075 1350
$Comp
L Device:R_Small R?
U 1 1 641B523D
P 4075 1150
AR Path="/641B523D" Ref="R?"  Part="1" 
AR Path="/641AE42A/641B523D" Ref="R5"  Part="1" 
F 0 "R5" H 4134 1196 50  0000 L CNN
F 1 "47k" H 4134 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4075 1150 50  0001 C CNN
F 3 "~" H 4075 1150 50  0001 C CNN
	1    4075 1150
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641B5243
P 3975 1675
AR Path="/641B5243" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641B5243" Ref="TR5"  Part="1" 
F 0 "TR5" H 4253 1721 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 4253 1630 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4005 1825 20  0001 C CNN
F 3 "" H 3975 1675 50  0001 C CNN
	1    3975 1675
	1    0    0    -1  
$EndComp
Text GLabel 4775 1350 2    50   Input ~ 0
AB5
Text GLabel 3925 875  0    50   Input ~ 0
VSS
Wire Wire Line
	3500 3400 3800 3400
Text GLabel 3500 3400 0    50   Input ~ 0
PAB6
Wire Wire Line
	4100 3675 4100 3600
Wire Wire Line
	3850 3675 4100 3675
Text GLabel 3850 3675 0    50   Input ~ 0
VDD
Wire Wire Line
	4100 2500 4100 2675
Wire Wire Line
	3950 2500 4100 2500
Wire Wire Line
	4100 2975 4100 2875
Connection ~ 4100 2975
Wire Wire Line
	4800 2975 4100 2975
Wire Wire Line
	4100 3000 4100 2975
$Comp
L Device:R_Small R?
U 1 1 641B621B
P 4100 2775
AR Path="/641B621B" Ref="R?"  Part="1" 
AR Path="/641AE42A/641B621B" Ref="R6"  Part="1" 
F 0 "R6" H 4159 2821 50  0000 L CNN
F 1 "47k" H 4159 2730 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4100 2775 50  0001 C CNN
F 3 "~" H 4100 2775 50  0001 C CNN
	1    4100 2775
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641B6221
P 4000 3300
AR Path="/641B6221" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641B6221" Ref="TR6"  Part="1" 
F 0 "TR6" H 4278 3346 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 4278 3255 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4030 3450 20  0001 C CNN
F 3 "" H 4000 3300 50  0001 C CNN
	1    4000 3300
	1    0    0    -1  
$EndComp
Text GLabel 4800 2975 2    50   Input ~ 0
AB6
Text GLabel 3950 2500 0    50   Input ~ 0
VSS
Wire Wire Line
	3625 5025 3925 5025
Text GLabel 3625 5025 0    50   Input ~ 0
PAB7
Wire Wire Line
	4225 5300 4225 5225
Wire Wire Line
	3975 5300 4225 5300
Text GLabel 3975 5300 0    50   Input ~ 0
VDD
Wire Wire Line
	4225 4125 4225 4300
Wire Wire Line
	4075 4125 4225 4125
Wire Wire Line
	4225 4600 4225 4500
Connection ~ 4225 4600
Wire Wire Line
	4925 4600 4225 4600
Wire Wire Line
	4225 4625 4225 4600
$Comp
L Device:R_Small R?
U 1 1 641B78BD
P 4225 4400
AR Path="/641B78BD" Ref="R?"  Part="1" 
AR Path="/641AE42A/641B78BD" Ref="R8"  Part="1" 
F 0 "R8" H 4284 4446 50  0000 L CNN
F 1 "47k" H 4284 4355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4225 4400 50  0001 C CNN
F 3 "~" H 4225 4400 50  0001 C CNN
	1    4225 4400
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641B78C3
P 4125 4925
AR Path="/641B78C3" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641B78C3" Ref="TR8"  Part="1" 
F 0 "TR8" H 4403 4971 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 4403 4880 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4155 5075 20  0001 C CNN
F 3 "" H 4125 4925 50  0001 C CNN
	1    4125 4925
	1    0    0    -1  
$EndComp
Text GLabel 4925 4600 2    50   Input ~ 0
AB7
Text GLabel 4075 4125 0    50   Input ~ 0
VSS
Wire Wire Line
	3550 6775 3850 6775
Text GLabel 3550 6775 0    50   Input ~ 0
PAB8
Wire Wire Line
	4150 7050 4150 6975
Wire Wire Line
	3900 7050 4150 7050
Text GLabel 3900 7050 0    50   Input ~ 0
VDD
Wire Wire Line
	4150 5875 4150 6050
Wire Wire Line
	4000 5875 4150 5875
Wire Wire Line
	4150 6350 4150 6250
Connection ~ 4150 6350
Wire Wire Line
	4850 6350 4150 6350
Wire Wire Line
	4150 6375 4150 6350
$Comp
L Device:R_Small R?
U 1 1 641B8FC1
P 4150 6150
AR Path="/641B8FC1" Ref="R?"  Part="1" 
AR Path="/641AE42A/641B8FC1" Ref="R7"  Part="1" 
F 0 "R7" H 4209 6196 50  0000 L CNN
F 1 "47k" H 4209 6105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 4150 6150 50  0001 C CNN
F 3 "~" H 4150 6150 50  0001 C CNN
	1    4150 6150
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641B8FC7
P 4050 6675
AR Path="/641B8FC7" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641B8FC7" Ref="TR7"  Part="1" 
F 0 "TR7" H 4328 6721 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 4328 6630 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4080 6825 20  0001 C CNN
F 3 "" H 4050 6675 50  0001 C CNN
	1    4050 6675
	1    0    0    -1  
$EndComp
Text GLabel 4850 6350 2    50   Input ~ 0
AB8
Text GLabel 4000 5875 0    50   Input ~ 0
VSS
Wire Wire Line
	5800 1850 6100 1850
Text GLabel 5800 1850 0    50   Input ~ 0
PAB9
Wire Wire Line
	6400 2125 6400 2050
Wire Wire Line
	6150 2125 6400 2125
Text GLabel 6150 2125 0    50   Input ~ 0
VDD
Wire Wire Line
	6400 950  6400 1125
Wire Wire Line
	6250 950  6400 950 
Wire Wire Line
	6400 1425 6400 1325
Connection ~ 6400 1425
Wire Wire Line
	7100 1425 6400 1425
Wire Wire Line
	6400 1450 6400 1425
$Comp
L Device:R_Small R?
U 1 1 641BA136
P 6400 1225
AR Path="/641BA136" Ref="R?"  Part="1" 
AR Path="/641AE42A/641BA136" Ref="R9"  Part="1" 
F 0 "R9" H 6459 1271 50  0000 L CNN
F 1 "47k" H 6459 1180 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6400 1225 50  0001 C CNN
F 3 "~" H 6400 1225 50  0001 C CNN
	1    6400 1225
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641BA13C
P 6300 1750
AR Path="/641BA13C" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641BA13C" Ref="TR9"  Part="1" 
F 0 "TR9" H 6578 1796 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 6578 1705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6330 1900 20  0001 C CNN
F 3 "" H 6300 1750 50  0001 C CNN
	1    6300 1750
	1    0    0    -1  
$EndComp
Text GLabel 7100 1425 2    50   Input ~ 0
AB9
Text GLabel 6250 950  0    50   Input ~ 0
VSS
Wire Wire Line
	5900 3525 6200 3525
Text GLabel 5900 3525 0    50   Input ~ 0
PAB10
Wire Wire Line
	6500 3800 6500 3725
Wire Wire Line
	6250 3800 6500 3800
Text GLabel 6250 3800 0    50   Input ~ 0
VDD
Wire Wire Line
	6500 2625 6500 2800
Wire Wire Line
	6350 2625 6500 2625
Wire Wire Line
	6500 3100 6500 3000
Connection ~ 6500 3100
Wire Wire Line
	7200 3100 6500 3100
Wire Wire Line
	6500 3125 6500 3100
$Comp
L Device:R_Small R?
U 1 1 641BB8EC
P 6500 2900
AR Path="/641BB8EC" Ref="R?"  Part="1" 
AR Path="/641AE42A/641BB8EC" Ref="R10"  Part="1" 
F 0 "R10" H 6559 2946 50  0000 L CNN
F 1 "47k" H 6559 2855 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6500 2900 50  0001 C CNN
F 3 "~" H 6500 2900 50  0001 C CNN
	1    6500 2900
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641BB8F2
P 6400 3425
AR Path="/641BB8F2" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641BB8F2" Ref="TR10"  Part="1" 
F 0 "TR10" H 6678 3471 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 6678 3380 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6430 3575 20  0001 C CNN
F 3 "" H 6400 3425 50  0001 C CNN
	1    6400 3425
	1    0    0    -1  
$EndComp
Text GLabel 7200 3100 2    50   Input ~ 0
AB10
Text GLabel 6350 2625 0    50   Input ~ 0
VSS
Wire Wire Line
	6000 5100 6300 5100
Text GLabel 6000 5100 0    50   Input ~ 0
A11X
Wire Wire Line
	6600 5375 6600 5300
Wire Wire Line
	6350 5375 6600 5375
Text GLabel 6350 5375 0    50   Input ~ 0
VDD
Wire Wire Line
	6600 4200 6600 4375
Wire Wire Line
	6450 4200 6600 4200
Wire Wire Line
	6600 4675 6600 4575
Connection ~ 6600 4675
Wire Wire Line
	7300 4675 6600 4675
Wire Wire Line
	6600 4700 6600 4675
$Comp
L Device:R_Small R?
U 1 1 641BDB35
P 6600 4475
AR Path="/641BDB35" Ref="R?"  Part="1" 
AR Path="/641AE42A/641BDB35" Ref="R11"  Part="1" 
F 0 "R11" H 6659 4521 50  0000 L CNN
F 1 "47k" H 6659 4430 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 6600 4475 50  0001 C CNN
F 3 "~" H 6600 4475 50  0001 C CNN
	1    6600 4475
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641BDB3B
P 6500 5000
AR Path="/641BDB3B" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641BDB3B" Ref="TR11"  Part="1" 
F 0 "TR11" H 6778 5046 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 6778 4955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 6530 5150 20  0001 C CNN
F 3 "" H 6500 5000 50  0001 C CNN
	1    6500 5000
	1    0    0    -1  
$EndComp
Text GLabel 7300 4675 2    50   Input ~ 0
A11X
Text GLabel 6450 4200 0    50   Input ~ 0
VSS
Wire Wire Line
	8475 1775 8775 1775
Text GLabel 8475 1775 0    50   Input ~ 0
PCLKA
Wire Wire Line
	9075 2050 9075 1975
Wire Wire Line
	8825 2050 9075 2050
Text GLabel 8825 2050 0    50   Input ~ 0
VDD
Wire Wire Line
	9075 875  9075 1050
Wire Wire Line
	8925 875  9075 875 
Wire Wire Line
	9075 1350 9075 1250
Connection ~ 9075 1350
Wire Wire Line
	9775 1350 9075 1350
Wire Wire Line
	9075 1375 9075 1350
$Comp
L Device:R_Small R?
U 1 1 641C03FB
P 9075 1150
AR Path="/641C03FB" Ref="R?"  Part="1" 
AR Path="/641AE42A/641C03FB" Ref="R12"  Part="1" 
F 0 "R12" H 9134 1196 50  0000 L CNN
F 1 "47k" H 9134 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9075 1150 50  0001 C CNN
F 3 "~" H 9075 1150 50  0001 C CNN
	1    9075 1150
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641C0401
P 8975 1675
AR Path="/641C0401" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641C0401" Ref="TR12"  Part="1" 
F 0 "TR12" H 9253 1721 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 9253 1630 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9005 1825 20  0001 C CNN
F 3 "" H 8975 1675 50  0001 C CNN
	1    8975 1675
	1    0    0    -1  
$EndComp
Text GLabel 9775 1350 2    50   Input ~ 0
CLKA
Text GLabel 8925 875  0    50   Input ~ 0
VSS
Wire Wire Line
	8725 3375 9025 3375
Text GLabel 8725 3375 0    50   Input ~ 0
PCLKB
Wire Wire Line
	9325 3650 9325 3575
Wire Wire Line
	9075 3650 9325 3650
Text GLabel 9075 3650 0    50   Input ~ 0
VDD
Wire Wire Line
	9325 2475 9325 2650
Wire Wire Line
	9175 2475 9325 2475
Wire Wire Line
	9325 2950 9325 2850
Connection ~ 9325 2950
Wire Wire Line
	10025 2950 9325 2950
Wire Wire Line
	9325 2975 9325 2950
$Comp
L Device:R_Small R?
U 1 1 641C2EC4
P 9325 2750
AR Path="/641C2EC4" Ref="R?"  Part="1" 
AR Path="/641AE42A/641C2EC4" Ref="R13"  Part="1" 
F 0 "R13" H 9384 2796 50  0000 L CNN
F 1 "47k" H 9384 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 9325 2750 50  0001 C CNN
F 3 "~" H 9325 2750 50  0001 C CNN
	1    9325 2750
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641C2ECA
P 9225 3275
AR Path="/641C2ECA" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641C2ECA" Ref="TR13"  Part="1" 
F 0 "TR13" H 9503 3321 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 9503 3230 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9255 3425 20  0001 C CNN
F 3 "" H 9225 3275 50  0001 C CNN
	1    9225 3275
	1    0    0    -1  
$EndComp
Text GLabel 10025 2950 2    50   Input ~ 0
CLKB
Text GLabel 9175 2475 0    50   Input ~ 0
VSS
$EndSCHEMATC
