EESchema Schematic File Version 4
LIBS:FencingTester-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
Title "Fencing Tester"
Date "2018-10-27"
Rev "2.2"
Comp "Morgan Diepart"
Comment1 "Rail d'alimentation"
Comment2 "V2.0 -> V2.1 Ajout d'un condensateur en parallèle avec R31 (UVLO au démarrage)"
Comment3 "V2.1 -> V2.2 Supression des mosfet pour le switch si USB branché (bad design)"
Comment4 ""
$EndDescr
$Comp
L FencingTester-rescue:SPST SW3
U 1 1 586E4C16
P 5950 3550
F 0 "SW3" H 5900 3650 50  0000 C CNN
F 1 "SPST" H 5950 3450 50  0000 C CNN
F 2 "custom-fencingTester:SW3" H 5950 3550 50  0001 C CNN
F 3 "" H 5950 3550 50  0000 C CNN
	1    5950 3550
	-1   0    0    -1  
$EndComp
$Comp
L FencingTester_ComponentsLib:MCP73831 U2
U 1 1 586E5899
P 3800 3750
F 0 "U2" H 3800 3225 60  0000 C CNN
F 1 "MCP73831" H 3800 4250 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-5" H 3800 3750 60  0001 C CNN
F 3 "" H 3800 3750 60  0000 C CNN
	1    3800 3750
	1    0    0    -1  
$EndComp
$Comp
L Device:R R26
U 1 1 586E58A0
P 3100 3950
F 0 "R26" V 3180 3950 50  0000 C CNN
F 1 "470" V 3100 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3030 3950 50  0001 C CNN
F 3 "" H 3100 3950 50  0000 C CNN
	1    3100 3950
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C6
U 1 1 586E58AE
P 3300 3400
F 0 "C6" H 3325 3500 50  0000 L CNN
F 1 "4.7µF" H 3075 3300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3338 3250 50  0001 C CNN
F 3 "" H 3300 3400 50  0000 C CNN
	1    3300 3400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 586E58B5
P 3300 3250
F 0 "#PWR039" H 3300 3000 50  0001 C CNN
F 1 "GND" H 3300 3100 50  0000 C CNN
F 2 "" H 3300 3250 50  0000 C CNN
F 3 "" H 3300 3250 50  0000 C CNN
	1    3300 3250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR040
U 1 1 586E58BB
P 4450 4100
F 0 "#PWR040" H 4450 3850 50  0001 C CNN
F 1 "GND" H 4450 3950 50  0000 C CNN
F 2 "" H 4450 4100 50  0000 C CNN
F 3 "" H 4450 4100 50  0000 C CNN
	1    4450 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:R R27
U 1 1 586E58C1
P 4450 3850
F 0 "R27" V 4550 3825 50  0000 C CNN
F 1 "2k" V 4450 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4380 3850 50  0001 C CNN
F 3 "" H 4450 3850 50  0000 C CNN
	1    4450 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR041
U 1 1 586E58C8
P 4950 3850
F 0 "#PWR041" H 4950 3600 50  0001 C CNN
F 1 "GND" H 4950 3700 50  0000 C CNN
F 2 "" H 4950 3850 50  0000 C CNN
F 3 "" H 4950 3850 50  0000 C CNN
	1    4950 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 586E58CE
P 4600 3700
F 0 "C7" H 4625 3800 50  0000 L CNN
F 1 "4.7µF" H 4625 3600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4638 3550 50  0001 C CNN
F 3 "" H 4600 3700 50  0000 C CNN
	1    4600 3700
	1    0    0    -1  
$EndComp
NoConn ~ 2550 3450
NoConn ~ 2550 3350
NoConn ~ 2550 3250
$Comp
L FencingTester-rescue:FUSE F1
U 1 1 586E58F2
P 7000 3550
F 0 "F1" V 7075 3575 50  0000 C CNN
F 1 "FUSE" V 6900 3475 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuse_SMD1206_HandSoldering" H 7000 3550 50  0001 C CNN
F 3 "" H 7000 3550 50  0000 C CNN
	1    7000 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:C C9
U 1 1 586F07F5
P 7600 3400
F 0 "C9" H 7650 3325 50  0000 L CNN
F 1 "10µF" H 7600 3500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7638 3250 50  0001 C CNN
F 3 "" H 7600 3400 50  0000 C CNN
	1    7600 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:L L1
U 1 1 586F0A4C
P 8550 3250
F 0 "L1" V 8500 3250 50  0000 C CNN
F 1 "2.2µH" V 8650 3250 50  0000 C CNN
F 2 "custom-fencingTester:CoilCraft-LPS3015-CMS" H 8550 3250 50  0001 C CNN
F 3 "" H 8550 3250 50  0000 C CNN
	1    8550 3250
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R33
U 1 1 586F17FF
P 9400 3800
F 0 "R33" V 9480 3800 50  0000 C CNN
F 1 "2.4M" V 9400 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9330 3800 50  0001 C CNN
F 3 "" H 9400 3800 50  0000 C CNN
	1    9400 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R34
U 1 1 586F19A3
P 9400 4100
F 0 "R34" V 9480 4100 50  0000 C CNN
F 1 "267k" V 9400 4100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9330 4100 50  0001 C CNN
F 3 "" H 9400 4100 50  0000 C CNN
	1    9400 4100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C10
U 1 1 586F1CFE
P 9150 4250
F 0 "C10" H 9175 4350 50  0000 L CNN
F 1 "100nF" H 8900 4150 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9188 4100 50  0001 C CNN
F 3 "" H 9150 4250 50  0000 C CNN
	1    9150 4250
	1    0    0    -1  
$EndComp
$Comp
L Device:C C11
U 1 1 586F1F15
P 9750 3800
F 0 "C11" H 9775 3900 50  0000 L CNN
F 1 "10µF" H 9775 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9788 3650 50  0001 C CNN
F 3 "" H 9750 3800 50  0000 C CNN
	1    9750 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R31
U 1 1 586F277E
P 7600 3700
F 0 "R31" V 7680 3700 50  0000 C CNN
F 1 "2.4M" V 7600 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7530 3700 50  0001 C CNN
F 3 "" H 7600 3700 50  0000 C CNN
	1    7600 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R32
U 1 1 586F2891
P 7600 4000
F 0 "R32" V 7675 4000 50  0000 C CNN
F 1 "220k" V 7600 4000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7530 4000 50  0001 C CNN
F 3 "" H 7600 4000 50  0000 C CNN
	1    7600 4000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR043
U 1 1 586F2935
P 8950 4050
F 0 "#PWR043" H 8950 3800 50  0001 C CNN
F 1 "GND" H 8950 3900 50  0000 C CNN
F 2 "" H 8950 4050 50  0000 C CNN
F 3 "" H 8950 4050 50  0000 C CNN
	1    8950 4050
	1    0    0    -1  
$EndComp
Text Notes 7500 3425 2    60   ~ 0
X5R\nX7R\nCeramic
Text Notes 9225 4875 2    60   ~ 0
X5R\nX7R\nLow ESR
Text HLabel 6700 3950 0    60   Input ~ 0
BSense
Text Notes 8925 3100 2    60   ~ 0
LPS3015-222ML
Text HLabel 10175 3650 2    60   Input ~ 0
Vout
$Comp
L Device:C C12
U 1 1 586FD3CB
P 9975 3800
F 0 "C12" H 10000 3900 50  0000 L CNN
F 1 "10µF" H 10000 3700 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10013 3650 50  0001 C CNN
F 3 "" H 9975 3800 50  0000 C CNN
	1    9975 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR044
U 1 1 58796209
P 7850 3950
F 0 "#PWR044" H 7850 3700 50  0001 C CNN
F 1 "GNDA" H 7850 3800 50  0000 C CNN
F 2 "" H 7850 3950 50  0000 C CNN
F 3 "" H 7850 3950 50  0000 C CNN
	1    7850 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR045
U 1 1 58797ECD
P 9400 4325
F 0 "#PWR045" H 9400 4075 50  0001 C CNN
F 1 "GNDA" H 9400 4175 50  0000 C CNN
F 2 "" H 9400 4325 50  0000 C CNN
F 3 "" H 9400 4325 50  0000 C CNN
	1    9400 4325
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR046
U 1 1 58797FFA
P 7600 4150
F 0 "#PWR046" H 7600 3900 50  0001 C CNN
F 1 "GNDA" H 7600 4000 50  0000 C CNN
F 2 "" H 7600 4150 50  0000 C CNN
F 3 "" H 7600 4150 50  0000 C CNN
	1    7600 4150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR047
U 1 1 58798059
P 9150 4400
F 0 "#PWR047" H 9150 4150 50  0001 C CNN
F 1 "GND" H 9150 4250 50  0000 C CNN
F 2 "" H 9150 4400 50  0000 C CNN
F 3 "" H 9150 4400 50  0000 C CNN
	1    9150 4400
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 587980D5
P 9750 3950
F 0 "#PWR048" H 9750 3700 50  0001 C CNN
F 1 "GND" H 9750 3800 50  0000 C CNN
F 2 "" H 9750 3950 50  0000 C CNN
F 3 "" H 9750 3950 50  0000 C CNN
	1    9750 3950
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR049
U 1 1 58798383
P 7600 3250
F 0 "#PWR049" H 7600 3000 50  0001 C CNN
F 1 "GND" H 7600 3100 50  0000 C CNN
F 2 "" H 7600 3250 50  0000 C CNN
F 3 "" H 7600 3250 50  0000 C CNN
	1    7600 3250
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR050
U 1 1 587986A1
P 4600 3850
F 0 "#PWR050" H 4600 3600 50  0001 C CNN
F 1 "GND" H 4600 3700 50  0000 C CNN
F 2 "" H 4600 3850 50  0000 C CNN
F 3 "" H 4600 3850 50  0000 C CNN
	1    4600 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR051
U 1 1 587B9B92
P 8650 4150
F 0 "#PWR051" H 8650 3900 50  0001 C CNN
F 1 "GND" H 8650 4000 50  0000 C CNN
F 2 "" H 8650 4150 50  0000 C CNN
F 3 "" H 8650 4150 50  0001 C CNN
	1    8650 4150
	1    0    0    -1  
$EndComp
$Comp
L FencingTester-rescue:USB_OTG-RESCUE-FencingTester P4
U 1 1 58A3B3EC
P 2250 3350
AR Path="/58A3B3EC" Ref="P4"  Part="1" 
AR Path="/586DEDAB/58A3B3EC" Ref="P4"  Part="1" 
F 0 "P4" V 2550 3350 50  0000 C CNN
F 1 "USB_OTG" H 2250 3550 50  0000 C CNN
F 2 "custom-fencingTester:USB_Micro-B" V 2200 3250 50  0001 C CNN
F 3 "" V 2200 3250 50  0000 C CNN
	1    2250 3350
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR052
U 1 1 58A3BBCA
P 2150 2900
F 0 "#PWR052" H 2150 2650 50  0001 C CNN
F 1 "GND" H 2150 2750 50  0000 C CNN
F 2 "" H 2150 2900 50  0000 C CNN
F 3 "" H 2150 2900 50  0000 C CNN
	1    2150 2900
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR053
U 1 1 58A3BCC8
P 2600 3150
F 0 "#PWR053" H 2600 2900 50  0001 C CNN
F 1 "GND" H 2600 3000 50  0000 C CNN
F 2 "" H 2600 3150 50  0000 C CNN
F 3 "" H 2600 3150 50  0000 C CNN
	1    2600 3150
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D14
U 1 1 58A3D321
P 3150 3700
F 0 "D14" H 3150 3800 50  0000 C CNN
F 1 "LED" H 3150 3600 50  0000 C CNN
F 2 "custom-fencingTester:ChargingLed" H 3150 3700 50  0001 C CNN
F 3 "" H 3150 3700 50  0000 C CNN
	1    3150 3700
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery_Cell BT1
U 1 1 58A3DBB5
P 4950 3750
F 0 "BT1" H 4775 3875 50  0000 L CNN
F 1 "Battery_Cell" H 4975 3725 50  0000 L CNN
F 2 "custom-fencingTester:2PadsWire" V 4950 3810 50  0001 C CNN
F 3 "" V 4950 3810 50  0000 C CNN
	1    4950 3750
	1    0    0    -1  
$EndComp
Connection ~ 3300 3550
Wire Wire Line
	8900 3550 9075 3550
Wire Wire Line
	9075 3550 9075 3250
Wire Wire Line
	7775 3250 7775 3550
Connection ~ 7775 3550
Wire Wire Line
	9075 3250 8700 3250
Wire Wire Line
	7775 3250 8400 3250
Wire Wire Line
	8900 3650 9400 3650
Wire Wire Line
	8900 3850 9250 3850
Wire Wire Line
	9250 3850 9250 3950
Wire Wire Line
	7775 3650 8050 3650
Wire Wire Line
	7775 3750 8050 3750
Connection ~ 7775 3650
Connection ~ 7600 3550
Connection ~ 9750 3650
Wire Wire Line
	9975 3950 9750 3950
Connection ~ 9750 3950
Connection ~ 9975 3650
Wire Wire Line
	9400 4325 9400 4250
Wire Wire Line
	2150 2900 2150 2950
Wire Wire Line
	2550 3150 2600 3150
Wire Wire Line
	6700 3550 6700 3950
Connection ~ 6700 3550
$Comp
L Device:C C13
U 1 1 59B5538F
P 7400 3700
F 0 "C13" H 7275 3800 50  0000 L CNN
F 1 "0.1µF" H 7175 3625 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7438 3550 50  0001 C CNN
F 3 "" H 7400 3700 50  0001 C CNN
	1    7400 3700
	1    0    0    -1  
$EndComp
Connection ~ 7600 3850
Wire Wire Line
	7775 3550 8050 3550
Wire Wire Line
	7775 3550 7775 3650
Wire Wire Line
	7775 3650 7775 3750
Wire Wire Line
	7600 3550 7775 3550
Wire Wire Line
	9750 3650 9975 3650
Wire Wire Line
	9975 3650 10175 3650
Wire Wire Line
	6700 3550 6750 3550
Wire Wire Line
	7600 3850 8050 3850
Wire Wire Line
	7850 3950 8050 3950
Wire Wire Line
	4300 3550 4600 3550
Connection ~ 4600 3550
Wire Wire Line
	4600 3550 4950 3550
Connection ~ 4950 3550
Wire Wire Line
	4950 3550 5450 3550
Wire Wire Line
	6450 3550 6700 3550
Wire Wire Line
	7250 3550 7400 3550
Connection ~ 7400 3550
Wire Wire Line
	7400 3550 7600 3550
Wire Wire Line
	9150 4100 9150 3750
Wire Wire Line
	8900 3750 9150 3750
$Comp
L FencingTester_ComponentsLib:TPS61200 U3
U 1 1 586F010D
P 8500 3750
F 0 "U3" H 8500 3400 60  0000 C CNN
F 1 "TPS61200" H 8500 4100 60  0000 C CNN
F 2 "custom-fencingTester:TPS61200" H 8500 3600 60  0001 C CNN
F 3 "" H 8500 3600 60  0001 C CNN
	1    8500 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8900 3950 8950 3950
Wire Wire Line
	8950 3950 8950 4050
Wire Wire Line
	4450 3700 4450 3650
Wire Wire Line
	4450 3650 4350 3650
Wire Wire Line
	4350 3650 4350 3750
Wire Wire Line
	4350 3750 4300 3750
Wire Wire Line
	4300 3950 4350 3950
Wire Wire Line
	4350 3950 4350 4100
Wire Wire Line
	4350 4100 4450 4100
Wire Wire Line
	4450 4100 4450 4000
Connection ~ 4450 4100
Wire Wire Line
	3300 3950 3250 3950
Wire Wire Line
	3300 3550 3300 3700
Wire Wire Line
	3000 3700 2900 3700
Wire Wire Line
	2900 3700 2900 3950
Wire Wire Line
	2900 3950 2950 3950
Wire Wire Line
	2550 3550 3300 3550
Wire Wire Line
	7400 3850 7600 3850
Connection ~ 9400 3950
Wire Wire Line
	9250 3950 9400 3950
Wire Wire Line
	9400 3650 9750 3650
Connection ~ 9400 3650
$EndSCHEMATC
