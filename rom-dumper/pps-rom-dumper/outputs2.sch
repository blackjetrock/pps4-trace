EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 4 4
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
	1250 1825 1550 1825
Wire Wire Line
	1850 2100 1850 2025
Wire Wire Line
	1600 2100 1850 2100
Text GLabel 1600 2100 0    50   Input ~ 0
VDD
Wire Wire Line
	1850 925  1850 1100
Wire Wire Line
	1700 925  1850 925 
Wire Wire Line
	1850 1400 1850 1300
Connection ~ 1850 1400
Wire Wire Line
	2550 1400 1850 1400
Wire Wire Line
	1850 1425 1850 1400
$Comp
L Device:R_Small R?
U 1 1 641E4F75
P 1850 1200
AR Path="/641E4F75" Ref="R?"  Part="1" 
AR Path="/641AE42A/641E4F75" Ref="R?"  Part="1" 
AR Path="/641E4029/641E4F75" Ref="R32"  Part="1" 
F 0 "R32" H 1909 1246 50  0000 L CNN
F 1 "47k" H 1909 1155 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1850 1200 50  0001 C CNN
F 3 "~" H 1850 1200 50  0001 C CNN
	1    1850 1200
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641E4F7B
P 1750 1725
AR Path="/641E4F7B" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641E4F7B" Ref="TR?"  Part="1" 
AR Path="/641E4029/641E4F7B" Ref="TR16"  Part="1" 
F 0 "TR16" H 2028 1771 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 2028 1680 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1780 1875 20  0001 C CNN
F 3 "" H 1750 1725 50  0001 C CNN
	1    1750 1725
	1    0    0    -1  
$EndComp
Text GLabel 1700 925  0    50   Input ~ 0
VSS
Wire Wire Line
	1325 3375 1625 3375
Wire Wire Line
	1925 3650 1925 3575
Wire Wire Line
	1675 3650 1925 3650
Text GLabel 1675 3650 0    50   Input ~ 0
VDD
Wire Wire Line
	1925 2475 1925 2650
Wire Wire Line
	1775 2475 1925 2475
Wire Wire Line
	1925 2950 1925 2850
Connection ~ 1925 2950
Wire Wire Line
	2625 2950 1925 2950
Wire Wire Line
	1925 2975 1925 2950
$Comp
L Device:R_Small R?
U 1 1 641E5849
P 1925 2750
AR Path="/641E5849" Ref="R?"  Part="1" 
AR Path="/641AE42A/641E5849" Ref="R?"  Part="1" 
AR Path="/641E4029/641E5849" Ref="R33"  Part="1" 
F 0 "R33" H 1984 2796 50  0000 L CNN
F 1 "47k" H 1984 2705 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1925 2750 50  0001 C CNN
F 3 "~" H 1925 2750 50  0001 C CNN
	1    1925 2750
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641E584F
P 1825 3275
AR Path="/641E584F" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641E584F" Ref="TR?"  Part="1" 
AR Path="/641E4029/641E584F" Ref="TR17"  Part="1" 
F 0 "TR17" H 2103 3321 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 2103 3230 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1855 3425 20  0001 C CNN
F 3 "" H 1825 3275 50  0001 C CNN
	1    1825 3275
	1    0    0    -1  
$EndComp
Text GLabel 1775 2475 0    50   Input ~ 0
VSS
Wire Wire Line
	1225 5075 1525 5075
Wire Wire Line
	1825 5350 1825 5275
Wire Wire Line
	1575 5350 1825 5350
Text GLabel 1575 5350 0    50   Input ~ 0
VDD
Wire Wire Line
	1825 4175 1825 4350
Wire Wire Line
	1675 4175 1825 4175
Wire Wire Line
	1825 4650 1825 4550
Connection ~ 1825 4650
Wire Wire Line
	2525 4650 1825 4650
Wire Wire Line
	1825 4675 1825 4650
$Comp
L Device:R_Small R?
U 1 1 641E689E
P 1825 4450
AR Path="/641E689E" Ref="R?"  Part="1" 
AR Path="/641AE42A/641E689E" Ref="R?"  Part="1" 
AR Path="/641E4029/641E689E" Ref="R30"  Part="1" 
F 0 "R30" H 1884 4496 50  0000 L CNN
F 1 "47k" H 1884 4405 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1825 4450 50  0001 C CNN
F 3 "~" H 1825 4450 50  0001 C CNN
	1    1825 4450
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641E68A4
P 1725 4975
AR Path="/641E68A4" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641E68A4" Ref="TR?"  Part="1" 
AR Path="/641E4029/641E68A4" Ref="TR14"  Part="1" 
F 0 "TR14" H 2003 5021 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 2003 4930 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1755 5125 20  0001 C CNN
F 3 "" H 1725 4975 50  0001 C CNN
	1    1725 4975
	1    0    0    -1  
$EndComp
Text GLabel 1675 4175 0    50   Input ~ 0
VSS
Wire Wire Line
	1225 6750 1525 6750
Wire Wire Line
	1825 7025 1825 6950
Wire Wire Line
	1575 7025 1825 7025
Text GLabel 1575 7025 0    50   Input ~ 0
VDD
Wire Wire Line
	1825 5850 1825 6025
Wire Wire Line
	1675 5850 1825 5850
Wire Wire Line
	1825 6325 1825 6225
Connection ~ 1825 6325
Wire Wire Line
	2525 6325 1825 6325
Wire Wire Line
	1825 6350 1825 6325
$Comp
L Device:R_Small R?
U 1 1 641E7C68
P 1825 6125
AR Path="/641E7C68" Ref="R?"  Part="1" 
AR Path="/641AE42A/641E7C68" Ref="R?"  Part="1" 
AR Path="/641E4029/641E7C68" Ref="R31"  Part="1" 
F 0 "R31" H 1884 6171 50  0000 L CNN
F 1 "47k" H 1884 6080 50  0000 L CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.20x1.40mm_HandSolder" H 1825 6125 50  0001 C CNN
F 3 "~" H 1825 6125 50  0001 C CNN
	1    1825 6125
	1    0    0    -1  
$EndComp
$Comp
L New_Library:Si2302CDS-n-channel TR?
U 1 1 641E7C6E
P 1725 6650
AR Path="/641E7C6E" Ref="TR?"  Part="1" 
AR Path="/641AE42A/641E7C6E" Ref="TR?"  Part="1" 
AR Path="/641E4029/641E7C6E" Ref="TR15"  Part="1" 
F 0 "TR15" H 2003 6696 50  0000 L CNN
F 1 "Si2302CDS-n-channel" H 2003 6605 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 1755 6800 20  0001 C CNN
F 3 "" H 1725 6650 50  0001 C CNN
	1    1725 6650
	1    0    0    -1  
$EndComp
Text GLabel 1675 5850 0    50   Input ~ 0
VSS
Text GLabel 2550 1400 2    50   Input ~ 0
AS1
Text GLabel 2625 2950 2    50   Input ~ 0
AS2
Text GLabel 2525 4650 2    50   Input ~ 0
AS3
Text GLabel 2525 6325 2    50   Input ~ 0
AS4
Text GLabel 1250 1825 0    50   Input ~ 0
PAS1
Text GLabel 1325 3375 0    50   Input ~ 0
PAS2
Text GLabel 1225 5075 0    50   Input ~ 0
PAS3
Text GLabel 1225 6750 0    50   Input ~ 0
PAS4
$EndSCHEMATC
