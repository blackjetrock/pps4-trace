EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 4
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text GLabel 2125 1025 2    50   Input ~ 0
ID1
Text GLabel 1700 1725 0    50   Input ~ 0
VDD
Wire Wire Line
	1700 1725 1850 1725
$Comp
L Device:R_Small R?
U 1 1 641D56EA
P 1850 1150
AR Path="/641D56EA" Ref="R?"  Part="1" 
AR Path="/641D5056/641D56EA" Ref="R20"  Part="1" 
F 0 "R20" H 1909 1196 50  0000 L CNN
F 1 "47k" H 1909 1105 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1850 1150 50  0001 C CNN
F 3 "~" H 1850 1150 50  0001 C CNN
	1    1850 1150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 641D56F0
P 1850 1475
AR Path="/641D56F0" Ref="R?"  Part="1" 
AR Path="/641D5056/641D56F0" Ref="R21"  Part="1" 
F 0 "R21" H 1909 1521 50  0000 L CNN
F 1 "10k" H 1909 1430 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1850 1475 50  0001 C CNN
F 3 "~" H 1850 1475 50  0001 C CNN
	1    1850 1475
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1050 1850 1025
Wire Wire Line
	1850 1250 1850 1300
Wire Wire Line
	1850 1575 1850 1725
Text GLabel 1325 1300 0    50   Input ~ 0
IP_ID1
Wire Wire Line
	1325 1300 1850 1300
Connection ~ 1850 1300
Wire Wire Line
	1850 1300 1850 1375
Wire Wire Line
	1850 1025 2125 1025
Text GLabel 2050 2100 2    50   Input ~ 0
ID2
Text GLabel 1625 2800 0    50   Input ~ 0
VDD
Wire Wire Line
	1625 2800 1775 2800
$Comp
L Device:R_Small R?
U 1 1 641D5D99
P 1775 2225
AR Path="/641D5D99" Ref="R?"  Part="1" 
AR Path="/641D5056/641D5D99" Ref="R16"  Part="1" 
F 0 "R16" H 1834 2271 50  0000 L CNN
F 1 "47k" H 1834 2180 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1775 2225 50  0001 C CNN
F 3 "~" H 1775 2225 50  0001 C CNN
	1    1775 2225
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 641D5D9F
P 1775 2550
AR Path="/641D5D9F" Ref="R?"  Part="1" 
AR Path="/641D5056/641D5D9F" Ref="R17"  Part="1" 
F 0 "R17" H 1834 2596 50  0000 L CNN
F 1 "10k" H 1834 2505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1775 2550 50  0001 C CNN
F 3 "~" H 1775 2550 50  0001 C CNN
	1    1775 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	1775 2125 1775 2100
Wire Wire Line
	1775 2325 1775 2375
Wire Wire Line
	1775 2650 1775 2800
Text GLabel 1250 2375 0    50   Input ~ 0
IP_ID2
Wire Wire Line
	1250 2375 1775 2375
Connection ~ 1775 2375
Wire Wire Line
	1775 2375 1775 2450
Wire Wire Line
	1775 2100 2050 2100
Text GLabel 2025 3350 2    50   Input ~ 0
ID3
Text GLabel 1600 4050 0    50   Input ~ 0
VDD
Wire Wire Line
	1600 4050 1750 4050
$Comp
L Device:R_Small R?
U 1 1 641D664B
P 1750 3475
AR Path="/641D664B" Ref="R?"  Part="1" 
AR Path="/641D5056/641D664B" Ref="R14"  Part="1" 
F 0 "R14" H 1809 3521 50  0000 L CNN
F 1 "47k" H 1809 3430 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1750 3475 50  0001 C CNN
F 3 "~" H 1750 3475 50  0001 C CNN
	1    1750 3475
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 641D6651
P 1750 3800
AR Path="/641D6651" Ref="R?"  Part="1" 
AR Path="/641D5056/641D6651" Ref="R15"  Part="1" 
F 0 "R15" H 1809 3846 50  0000 L CNN
F 1 "10k" H 1809 3755 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1750 3800 50  0001 C CNN
F 3 "~" H 1750 3800 50  0001 C CNN
	1    1750 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 3375 1750 3350
Wire Wire Line
	1750 3575 1750 3625
Wire Wire Line
	1750 3900 1750 4050
Text GLabel 1225 3625 0    50   Input ~ 0
IP_ID3
Wire Wire Line
	1225 3625 1750 3625
Connection ~ 1750 3625
Wire Wire Line
	1750 3625 1750 3700
Wire Wire Line
	1750 3350 2025 3350
Text GLabel 2075 4575 2    50   Input ~ 0
ID4
Text GLabel 1650 5275 0    50   Input ~ 0
VDD
Wire Wire Line
	1650 5275 1800 5275
$Comp
L Device:R_Small R?
U 1 1 641D6C9B
P 1800 4700
AR Path="/641D6C9B" Ref="R?"  Part="1" 
AR Path="/641D5056/641D6C9B" Ref="R18"  Part="1" 
F 0 "R18" H 1859 4746 50  0000 L CNN
F 1 "47k" H 1859 4655 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1800 4700 50  0001 C CNN
F 3 "~" H 1800 4700 50  0001 C CNN
	1    1800 4700
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 641D6CA1
P 1800 5025
AR Path="/641D6CA1" Ref="R?"  Part="1" 
AR Path="/641D5056/641D6CA1" Ref="R19"  Part="1" 
F 0 "R19" H 1859 5071 50  0000 L CNN
F 1 "10k" H 1859 4980 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1800 5025 50  0001 C CNN
F 3 "~" H 1800 5025 50  0001 C CNN
	1    1800 5025
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 4600 1800 4575
Wire Wire Line
	1800 4800 1800 4850
Wire Wire Line
	1800 5125 1800 5275
Text GLabel 1275 4850 0    50   Input ~ 0
IP_ID4
Wire Wire Line
	1275 4850 1800 4850
Connection ~ 1800 4850
Wire Wire Line
	1800 4850 1800 4925
Wire Wire Line
	1800 4575 2075 4575
Text GLabel 3775 1800 0    50   Input ~ 0
VDD
Wire Wire Line
	3775 1800 3925 1800
$Comp
L Device:R_Small R?
U 1 1 641D7480
P 3925 1225
AR Path="/641D7480" Ref="R?"  Part="1" 
AR Path="/641D5056/641D7480" Ref="R28"  Part="1" 
F 0 "R28" H 3984 1271 50  0000 L CNN
F 1 "47k" H 3984 1180 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3925 1225 50  0001 C CNN
F 3 "~" H 3925 1225 50  0001 C CNN
	1    3925 1225
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 641D7486
P 3925 1550
AR Path="/641D7486" Ref="R?"  Part="1" 
AR Path="/641D5056/641D7486" Ref="R29"  Part="1" 
F 0 "R29" H 3984 1596 50  0000 L CNN
F 1 "10k" H 3984 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3925 1550 50  0001 C CNN
F 3 "~" H 3925 1550 50  0001 C CNN
	1    3925 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	3925 1125 3925 1100
Wire Wire Line
	3925 1325 3925 1375
Wire Wire Line
	3925 1650 3925 1800
Wire Wire Line
	3400 1375 3925 1375
Connection ~ 3925 1375
Wire Wire Line
	3925 1375 3925 1450
Wire Wire Line
	3925 1100 4200 1100
Text GLabel 3750 2975 0    50   Input ~ 0
VDD
Wire Wire Line
	3750 2975 3900 2975
$Comp
L Device:R_Small R?
U 1 1 641D7FFB
P 3900 2400
AR Path="/641D7FFB" Ref="R?"  Part="1" 
AR Path="/641D5056/641D7FFB" Ref="R26"  Part="1" 
F 0 "R26" H 3959 2446 50  0000 L CNN
F 1 "47k" H 3959 2355 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3900 2400 50  0001 C CNN
F 3 "~" H 3900 2400 50  0001 C CNN
	1    3900 2400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 641D8001
P 3900 2725
AR Path="/641D8001" Ref="R?"  Part="1" 
AR Path="/641D5056/641D8001" Ref="R27"  Part="1" 
F 0 "R27" H 3959 2771 50  0000 L CNN
F 1 "10k" H 3959 2680 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3900 2725 50  0001 C CNN
F 3 "~" H 3900 2725 50  0001 C CNN
	1    3900 2725
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 2300 3900 2275
Wire Wire Line
	3900 2500 3900 2550
Wire Wire Line
	3900 2825 3900 2975
Wire Wire Line
	3375 2550 3900 2550
Connection ~ 3900 2550
Wire Wire Line
	3900 2550 3900 2625
Wire Wire Line
	3900 2275 4175 2275
Text GLabel 3675 4025 0    50   Input ~ 0
VDD
Wire Wire Line
	3675 4025 3825 4025
$Comp
L Device:R_Small R?
U 1 1 641D8D08
P 3825 3450
AR Path="/641D8D08" Ref="R?"  Part="1" 
AR Path="/641D5056/641D8D08" Ref="R24"  Part="1" 
F 0 "R24" H 3884 3496 50  0000 L CNN
F 1 "47k" H 3884 3405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3825 3450 50  0001 C CNN
F 3 "~" H 3825 3450 50  0001 C CNN
	1    3825 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 641D8D0E
P 3825 3775
AR Path="/641D8D0E" Ref="R?"  Part="1" 
AR Path="/641D5056/641D8D0E" Ref="R25"  Part="1" 
F 0 "R25" H 3884 3821 50  0000 L CNN
F 1 "10k" H 3884 3730 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3825 3775 50  0001 C CNN
F 3 "~" H 3825 3775 50  0001 C CNN
	1    3825 3775
	1    0    0    -1  
$EndComp
Wire Wire Line
	3825 3350 3825 3325
Wire Wire Line
	3825 3550 3825 3600
Wire Wire Line
	3825 3875 3825 4025
Wire Wire Line
	3300 3600 3825 3600
Connection ~ 3825 3600
Wire Wire Line
	3825 3600 3825 3675
Wire Wire Line
	3825 3325 4100 3325
Text GLabel 3650 5200 0    50   Input ~ 0
VDD
Wire Wire Line
	3650 5200 3800 5200
$Comp
L Device:R_Small R?
U 1 1 641D9AD7
P 3800 4625
AR Path="/641D9AD7" Ref="R?"  Part="1" 
AR Path="/641D5056/641D9AD7" Ref="R22"  Part="1" 
F 0 "R22" H 3859 4671 50  0000 L CNN
F 1 "47k" H 3859 4580 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3800 4625 50  0001 C CNN
F 3 "~" H 3800 4625 50  0001 C CNN
	1    3800 4625
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R?
U 1 1 641D9ADD
P 3800 4950
AR Path="/641D9ADD" Ref="R?"  Part="1" 
AR Path="/641D5056/641D9ADD" Ref="R23"  Part="1" 
F 0 "R23" H 3859 4996 50  0000 L CNN
F 1 "10k" H 3859 4905 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 3800 4950 50  0001 C CNN
F 3 "~" H 3800 4950 50  0001 C CNN
	1    3800 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4525 3800 4500
Wire Wire Line
	3800 4725 3800 4775
Wire Wire Line
	3800 5050 3800 5200
Wire Wire Line
	3275 4775 3800 4775
Connection ~ 3800 4775
Wire Wire Line
	3800 4775 3800 4850
Wire Wire Line
	3800 4500 4075 4500
Text GLabel 4200 1100 2    50   Input ~ 0
ID5
Text GLabel 4175 2275 2    50   Input ~ 0
ID6
Text GLabel 4100 3325 2    50   Input ~ 0
ID7
Text GLabel 4075 4500 2    50   Input ~ 0
ID8
Text GLabel 3400 1375 0    50   Input ~ 0
IP_ID5
Text GLabel 3375 2550 0    50   Input ~ 0
IP_ID6
Text GLabel 3300 3600 0    50   Input ~ 0
IP_ID7
Text GLabel 3275 4775 0    50   Input ~ 0
IP_ID8
$EndSCHEMATC
