EESchema Schematic File Version 4
LIBS:FencingTester-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title "Fencing Tester"
Date "2016-12-29"
Rev "2.0"
Comp "Morgan Diepart"
Comment1 "Testeur d'escrime pour l'épée, fil de corps, enrouleurs et fils de piste."
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L FencingTester-rescue:ATMEGA328P-P IC1
U 1 1 584B1F6F
P 2175 2150
F 0 "IC1" H 1425 3400 50  0000 L BNN
F 1 "ATMEGA328P-P" H 2175 750 50  0000 L BNN
F 2 "Housings_DIP:DIP-28_W7.62mm_Socket_LongPads" H 2175 2150 50  0001 C CIN
F 3 "" H 2175 2150 50  0000 C CNN
	1    2175 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal Y1
U 1 1 584B6012
P 3750 1700
F 0 "Y1" V 3750 1850 50  0000 C CNN
F 1 "16MHz" V 3750 1450 50  0000 C CNN
F 2 "custom-fencingTester:Quartz" H 3750 1700 50  0001 C CNN
F 3 "" H 3750 1700 50  0000 C CNN
	1    3750 1700
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 586055FD
P 4050 1550
F 0 "C3" V 4100 1625 50  0000 L CNN
F 1 "22 pF" V 4175 1275 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4088 1400 50  0001 C CNN
F 3 "" H 4050 1550 50  0000 C CNN
	1    4050 1550
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C4
U 1 1 5860566E
P 4050 1850
F 0 "C4" V 4100 1925 50  0000 L CNN
F 1 "22 pF" V 4000 1575 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4088 1700 50  0001 C CNN
F 3 "" H 4050 1850 50  0000 C CNN
	1    4050 1850
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR01
U 1 1 58606032
P 4300 1700
F 0 "#PWR01" H 4300 1450 50  0001 C CNN
F 1 "GND" V 4300 1500 50  0000 C CNN
F 2 "" H 4300 1700 50  0000 C CNN
F 3 "" H 4300 1700 50  0000 C CNN
	1    4300 1700
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR02
U 1 1 586073D2
P 1200 3350
F 0 "#PWR02" H 1200 3100 50  0001 C CNN
F 1 "GND" H 1200 3200 50  0000 C CNN
F 2 "" H 1200 3350 50  0000 C CNN
F 3 "" H 1200 3350 50  0000 C CNN
	1    1200 3350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR03
U 1 1 586081C1
P 1100 1700
F 0 "#PWR03" H 1100 1450 50  0001 C CNN
F 1 "GND" H 1100 1550 50  0000 C CNN
F 2 "" H 1100 1700 50  0000 C CNN
F 3 "" H 1100 1700 50  0000 C CNN
	1    1100 1700
	1    0    0    -1  
$EndComp
$Comp
L Device:C C1
U 1 1 586081FF
P 1100 1550
F 0 "C1" H 1125 1650 50  0000 L CNN
F 1 "100nF" H 850 1450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1138 1400 50  0001 C CNN
F 3 "" H 1100 1550 50  0000 C CNN
	1    1100 1550
	1    0    0    -1  
$EndComp
NoConn ~ 1275 1650
Text Notes 4175 1875 1    60   ~ 0
Ceramic
Text Label 3375 2750 2    60   ~ 0
TX
Text Label 3375 2650 2    60   ~ 0
RX
Text Label 3375 2500 2    60   ~ 0
RST
$Comp
L conn:CONN_01X06 P1
U 1 1 5863AC67
P 1275 6850
F 0 "P1" H 1275 7200 50  0000 C CNN
F 1 "SERIAL" V 1375 6850 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x06_Pitch2.54mm" H 1275 6850 50  0001 C CNN
F 3 "" H 1275 6850 50  0000 C CNN
	1    1275 6850
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5863AFF9
P 1475 7100
F 0 "#PWR04" H 1475 6850 50  0001 C CNN
F 1 "GND" V 1475 6925 50  0000 C CNN
F 2 "" H 1475 7100 50  0000 C CNN
F 3 "" H 1475 7100 50  0000 C CNN
	1    1475 7100
	0    -1   -1   0   
$EndComp
NoConn ~ 1475 7000
Text Label 1700 6800 2    60   ~ 0
RX
Text Label 1700 6700 2    60   ~ 0
TX
$Comp
L Device:C C2
U 1 1 5863BBF7
P 1475 6450
F 0 "C2" H 1275 6450 50  0000 L CNN
F 1 "100nF" H 1500 6350 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1513 6300 50  0001 C CNN
F 3 "" H 1475 6450 50  0000 C CNN
	1    1475 6450
	-1   0    0    1   
$EndComp
Text Label 1700 6300 2    60   ~ 0
RST
Text Label 3775 2000 2    60   ~ 0
CAA'
Text Label 3775 2100 2    60   ~ 0
CBB'
Text Label 3775 2200 2    60   ~ 0
CCC'
$Comp
L FencingTester-rescue:Led_x2 D3
U 1 1 5863E9C0
P 5575 1275
F 0 "D3" H 5575 1050 50  0000 C CNN
F 1 "Led_x2" H 5625 1275 50  0000 C CNN
F 2 "custom-fencingTester:3PadsWires" H 5575 1275 50  0001 C CNN
F 3 "" H 5575 1275 50  0000 C CNN
	1    5575 1275
	-1   0    0    1   
$EndComp
$Comp
L FencingTester-rescue:Led_x2 D2
U 1 1 5863EAD6
P 5000 1025
F 0 "D2" H 5000 800 50  0000 C CNN
F 1 "Led_x2" H 5050 1025 50  0000 C CNN
F 2 "custom-fencingTester:3PadsWires" H 5000 1025 50  0001 C CNN
F 3 "" H 5000 1025 50  0000 C CNN
	1    5000 1025
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5863FAC7
P 4725 775
F 0 "#PWR05" H 4725 525 50  0001 C CNN
F 1 "GND" H 4725 625 50  0000 C CNN
F 2 "" H 4725 775 50  0000 C CNN
F 3 "" H 4725 775 50  0000 C CNN
	1    4725 775 
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5863FB64
P 5300 1025
F 0 "#PWR06" H 5300 775 50  0001 C CNN
F 1 "GND" H 5300 875 50  0000 C CNN
F 2 "" H 5300 1025 50  0000 C CNN
F 3 "" H 5300 1025 50  0000 C CNN
	1    5300 1025
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR07
U 1 1 5863FBF3
P 5875 1275
F 0 "#PWR07" H 5875 1025 50  0001 C CNN
F 1 "GND" H 5875 1125 50  0000 C CNN
F 2 "" H 5875 1275 50  0000 C CNN
F 3 "" H 5875 1275 50  0000 C CNN
	1    5875 1275
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R1
U 1 1 58644698
P 1475 6150
F 0 "R1" V 1555 6150 50  0000 C CNN
F 1 "10k" V 1475 6150 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1405 6150 50  0001 C CNN
F 3 "" H 1475 6150 50  0000 C CNN
	1    1475 6150
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR08
U 1 1 58644764
P 1475 6000
F 0 "#PWR08" H 1475 5850 50  0001 C CNN
F 1 "+5V" H 1475 6140 50  0000 C CNN
F 2 "" H 1475 6000 50  0000 C CNN
F 3 "" H 1475 6000 50  0000 C CNN
	1    1475 6000
	1    0    0    -1  
$EndComp
Text Notes 1000 5775 0    60   ~ 0
Serial
$Comp
L power:+5V #PWR09
U 1 1 58669B32
P 1025 1225
F 0 "#PWR09" H 1025 1075 50  0001 C CNN
F 1 "+5V" H 1025 1365 50  0000 C CNN
F 2 "" H 1025 1225 50  0000 C CNN
F 3 "" H 1025 1225 50  0000 C CNN
	1    1025 1225
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5865BA47
P 4250 3350
F 0 "#PWR010" H 4250 3100 50  0001 C CNN
F 1 "GND" H 4250 3200 50  0000 C CNN
F 2 "" H 4250 3350 50  0000 C CNN
F 3 "" H 4250 3350 50  0000 C CNN
	1    4250 3350
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 586968C2
P 3725 775
F 0 "R5" V 3675 625 50  0000 C CNN
F 1 "330" V 3725 775 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3655 775 50  0001 C CNN
F 3 "" H 3725 775 50  0000 C CNN
	1    3725 775 
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 586972F7
P 3725 875
F 0 "R6" V 3675 725 50  0000 C CNN
F 1 "330" V 3725 875 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3655 875 50  0001 C CNN
F 3 "" H 3725 875 50  0000 C CNN
	1    3725 875 
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 58697402
P 3725 1025
F 0 "R7" V 3675 875 50  0000 C CNN
F 1 "330" V 3725 1025 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3655 1025 50  0001 C CNN
F 3 "" H 3725 1025 50  0000 C CNN
	1    3725 1025
	0    1    1    0   
$EndComp
$Comp
L FencingTester_ComponentsLib:Bargraph D4
U 1 1 586EFD32
P 9725 4275
F 0 "D4" H 9725 2925 60  0000 C CNN
F 1 "Bargraph" H 9725 5175 60  0000 C CNN
F 2 "custom-fencingTester:Bargraph" H 9725 4275 60  0001 C CNN
F 3 "" H 9725 4275 60  0001 C CNN
	1    9725 4275
	1    0    0    -1  
$EndComp
NoConn ~ 9275 3525
NoConn ~ 9275 3725
NoConn ~ 9275 3925
NoConn ~ 9275 4125
NoConn ~ 9275 4325
NoConn ~ 9275 5425
NoConn ~ 9275 5225
NoConn ~ 9275 5025
NoConn ~ 9275 4525
$Comp
L Device:R R15
U 1 1 586F345D
P 9125 3625
F 0 "R15" V 9075 3475 50  0000 C CNN
F 1 "330" V 9125 3625 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9055 3625 50  0001 C CNN
F 3 "" H 9125 3625 50  0000 C CNN
	1    9125 3625
	0    1    1    0   
$EndComp
$Comp
L Device:R R16
U 1 1 586F3B29
P 9125 3825
F 0 "R16" V 9075 3675 50  0000 C CNN
F 1 "330" V 9125 3825 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9055 3825 50  0001 C CNN
F 3 "" H 9125 3825 50  0000 C CNN
	1    9125 3825
	0    1    1    0   
$EndComp
$Comp
L Device:R R17
U 1 1 586F3C8D
P 9125 4025
F 0 "R17" V 9075 3875 50  0000 C CNN
F 1 "330" V 9125 4025 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9055 4025 50  0001 C CNN
F 3 "" H 9125 4025 50  0000 C CNN
	1    9125 4025
	0    1    1    0   
$EndComp
$Comp
L Device:R R18
U 1 1 586F3DF0
P 9125 4225
F 0 "R18" V 9075 4075 50  0000 C CNN
F 1 "330" V 9125 4225 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9055 4225 50  0001 C CNN
F 3 "" H 9125 4225 50  0000 C CNN
	1    9125 4225
	0    1    1    0   
$EndComp
$Comp
L Device:R R19
U 1 1 586F3F56
P 9125 4425
F 0 "R19" V 9075 4275 50  0000 C CNN
F 1 "330" V 9125 4425 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9055 4425 50  0001 C CNN
F 3 "" H 9125 4425 50  0000 C CNN
	1    9125 4425
	0    1    1    0   
$EndComp
$Comp
L Device:R R20
U 1 1 586F40BF
P 9125 4625
F 0 "R20" V 9075 4475 50  0000 C CNN
F 1 "330" V 9125 4625 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9055 4625 50  0001 C CNN
F 3 "" H 9125 4625 50  0000 C CNN
	1    9125 4625
	0    1    1    0   
$EndComp
$Comp
L Device:R R21
U 1 1 586F4935
P 9125 4725
F 0 "R21" V 9075 4575 50  0000 C CNN
F 1 "330" V 9125 4725 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9055 4725 50  0001 C CNN
F 3 "" H 9125 4725 50  0000 C CNN
	1    9125 4725
	0    1    1    0   
$EndComp
$Comp
L Device:R R22
U 1 1 586F4AA2
P 9125 4825
F 0 "R22" V 9075 4675 50  0000 C CNN
F 1 "330" V 9125 4825 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9055 4825 50  0001 C CNN
F 3 "" H 9125 4825 50  0000 C CNN
	1    9125 4825
	0    1    1    0   
$EndComp
$Comp
L Device:R R23
U 1 1 586F4C0C
P 9125 4925
F 0 "R23" V 9075 4775 50  0000 C CNN
F 1 "330" V 9125 4925 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9055 4925 50  0001 C CNN
F 3 "" H 9125 4925 50  0000 C CNN
	1    9125 4925
	0    1    1    0   
$EndComp
$Comp
L Device:R R24
U 1 1 586F4D79
P 9125 5125
F 0 "R24" V 9075 4975 50  0000 C CNN
F 1 "330" V 9125 5125 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9055 5125 50  0001 C CNN
F 3 "" H 9125 5125 50  0000 C CNN
	1    9125 5125
	0    1    1    0   
$EndComp
$Comp
L Device:R R25
U 1 1 586F4EF5
P 9125 5325
F 0 "R25" V 9075 5175 50  0000 C CNN
F 1 "330" V 9125 5325 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9055 5325 50  0001 C CNN
F 3 "" H 9125 5325 50  0000 C CNN
	1    9125 5325
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR011
U 1 1 586FD5DC
P 10250 5425
F 0 "#PWR011" H 10250 5175 50  0001 C CNN
F 1 "GND" H 10250 5275 50  0000 C CNN
F 2 "" H 10250 5425 50  0000 C CNN
F 3 "" H 10250 5425 50  0000 C CNN
	1    10250 5425
	1    0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 586BF873
P 8600 2025
F 0 "R11" V 8680 2025 50  0000 C CNN
F 1 "1k" V 8600 2025 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8530 2025 50  0001 C CNN
F 3 "" H 8600 2025 50  0000 C CNN
	1    8600 2025
	0    1    -1   0   
$EndComp
$Comp
L Device:R R13
U 1 1 586BF8EB
P 8425 1825
F 0 "R13" V 8505 1825 50  0000 C CNN
F 1 "61k9" V 8425 1825 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8355 1825 50  0001 C CNN
F 3 "" H 8425 1825 50  0000 C CNN
	1    8425 1825
	0    -1   1    0   
$EndComp
$Comp
L Device:C C5
U 1 1 586BF8FD
P 7675 1500
F 0 "C5" V 7725 1575 50  0000 L CNN
F 1 "100nF" V 7575 1550 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7713 1350 50  0001 C CNN
F 3 "" H 7675 1500 50  0000 C CNN
	1    7675 1500
	0    -1   1    0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 586BF903
P 7525 1500
F 0 "#PWR012" H 7525 1250 50  0001 C CNN
F 1 "GND" H 7525 1350 50  0000 C CNN
F 2 "" H 7525 1500 50  0000 C CNN
F 3 "" H 7525 1500 50  0000 C CNN
	1    7525 1500
	0    1    -1   0   
$EndComp
$Comp
L conn:CONN_01X03 P3
U 1 1 586C0523
P 10325 2025
F 0 "P3" H 10325 2225 50  0000 C CNN
F 1 "CONN_01X03" H 10150 2300 50  0000 C CNN
F 2 "custom-fencingTester:3PadsWires" H 10325 2025 50  0001 C CNN
F 3 "" H 10325 2025 50  0000 C CNN
	1    10325 2025
	1    0    0    1   
$EndComp
$Comp
L conn:CONN_01X03 P2
U 1 1 586C0A47
P 10325 1425
F 0 "P2" H 10325 1625 50  0000 C CNN
F 1 "CONN_01X03" H 10150 1700 50  0000 C CNN
F 2 "custom-fencingTester:3PadsWires" H 10325 1425 50  0001 C CNN
F 3 "" H 10325 1425 50  0000 C CNN
	1    10325 1425
	1    0    0    -1  
$EndComp
$Comp
L Device:R R14
U 1 1 586C5D48
P 8775 1600
F 0 "R14" V 8855 1600 50  0000 C CNN
F 1 "300" V 8775 1600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8705 1600 50  0001 C CNN
F 3 "" H 8775 1600 50  0000 C CNN
	1    8775 1600
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR013
U 1 1 586C89E9
P 8025 1450
F 0 "#PWR013" H 8025 1300 50  0001 C CNN
F 1 "+5V" H 8025 1590 50  0000 C CNN
F 2 "" H 8025 1450 50  0000 C CNN
F 3 "" H 8025 1450 50  0000 C CNN
	1    8025 1450
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 586C9435
P 8400 2250
F 0 "R12" V 8475 2250 50  0000 C CNN
F 1 "61k9" V 8400 2250 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8330 2250 50  0001 C CNN
F 3 "" H 8400 2250 50  0000 C CNN
	1    8400 2250
	-1   0    0    -1  
$EndComp
Text Label 7150 1925 0    60   ~ 0
Rsense
Text Label 3525 1900 2    60   ~ 0
Rsense
$Sheet
S 7300 3875 1000 1225
U 586CD6B6
F0 "bargraph_driver" 60
F1 "BargraphDriver.sch" 60
F2 "S0" I L 7300 4325 60 
F3 "S1" I L 7300 4425 60 
F4 "S2" I L 7300 4525 60 
F5 "S3" I L 7300 4625 60 
F6 "L1" O R 8300 4025 60 
F7 "L2" O R 8300 4125 60 
F8 "L3" O R 8300 4225 60 
F9 "L4" O R 8300 4325 60 
F10 "L5" O R 8300 4425 60 
F11 "L6" O R 8300 4525 60 
F12 "L7" O R 8300 4625 60 
F13 "L8" O R 8300 4725 60 
F14 "L9" O R 8300 4825 60 
F15 "L10" O R 8300 4925 60 
$EndSheet
Text Notes 4025 3775 2    60   ~ 0
DUT Selector
$Comp
L power:+5V #PWR014
U 1 1 586D6CFF
P 1475 6900
F 0 "#PWR014" H 1475 6750 50  0001 C CNN
F 1 "+5V" V 1475 7075 50  0000 C CNN
F 2 "" H 1475 6900 50  0000 C CNN
F 3 "" H 1475 6900 50  0000 C CNN
	1    1475 6900
	0    1    1    0   
$EndComp
$Sheet
S 4950 2325 950  475 
U 586DEDAB
F0 "power rail" 60
F1 "PowerRail.sch" 60
F2 "BSense" I L 4950 2575 60 
F3 "Vout" I R 5900 2575 60 
$EndSheet
$Comp
L power:+5V #PWR015
U 1 1 5871DD18
P 6050 2575
F 0 "#PWR015" H 6050 2425 50  0001 C CNN
F 1 "+5V" H 6050 2715 50  0000 C CNN
F 2 "" H 6050 2575 50  0000 C CNN
F 3 "" H 6050 2575 50  0000 C CNN
	1    6050 2575
	0    1    1    0   
$EndComp
Text Label 9750 1725 2    60   ~ 0
CAA'
Text Label 9750 1825 2    60   ~ 0
CCC'
Text Label 9750 1925 2    60   ~ 0
CBB'
$Comp
L Device:R R2
U 1 1 587292DF
P 3425 2000
F 0 "R2" V 3475 1850 50  0000 C CNN
F 1 "10k" V 3425 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3355 2000 50  0001 C CNN
F 3 "" H 3425 2000 50  0000 C CNN
	1    3425 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R3
U 1 1 5872941E
P 3425 2100
F 0 "R3" V 3475 1950 50  0000 C CNN
F 1 "10k" V 3425 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3355 2100 50  0001 C CNN
F 3 "" H 3425 2100 50  0000 C CNN
	1    3425 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 587294B9
P 3425 2200
F 0 "R4" V 3475 2050 50  0000 C CNN
F 1 "10k" V 3425 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3355 2200 50  0001 C CNN
F 3 "" H 3425 2200 50  0000 C CNN
	1    3425 2200
	0    1    1    0   
$EndComp
$Comp
L FencingTester_ComponentsLib:MAX4238 AR1
U 1 1 586EB3EB
P 7975 1925
F 0 "AR1" H 8275 2175 50  0000 C CNN
F 1 "MAX4238" H 8225 1725 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7925 2025 50  0001 C CNN
F 3 "" H 8025 2125 50  0000 C CNN
	1    7975 1925
	-1   0    0    -1  
$EndComp
NoConn ~ 3650 3450
$Comp
L power:GNDA #PWR016
U 1 1 587983A8
P 8025 2300
F 0 "#PWR016" H 8025 2050 50  0001 C CNN
F 1 "GNDA" H 8025 2150 50  0000 C CNN
F 2 "" H 8025 2300 50  0000 C CNN
F 3 "" H 8025 2300 50  0000 C CNN
	1    8025 2300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR017
U 1 1 58799035
P 8750 2025
F 0 "#PWR017" H 8750 1775 50  0001 C CNN
F 1 "GNDA" H 8750 1875 50  0000 C CNN
F 2 "" H 8750 2025 50  0000 C CNN
F 3 "" H 8750 2025 50  0000 C CNN
	1    8750 2025
	0    -1   -1   0   
$EndComp
$Comp
L FencingTester-rescue:Led_x2 D1
U 1 1 5863EBA3
P 4425 775
F 0 "D1" H 4425 550 50  0000 C CNN
F 1 "Led_x2" H 4475 775 50  0000 C CNN
F 2 "custom-fencingTester:3PadsWires" H 4425 775 50  0001 C CNN
F 3 "" H 4425 775 50  0000 C CNN
	1    4425 775 
	-1   0    0    1   
$EndComp
$Comp
L Device:R R8
U 1 1 5869750C
P 3725 1125
F 0 "R8" V 3675 975 50  0000 C CNN
F 1 "330" V 3725 1125 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3655 1125 50  0001 C CNN
F 3 "" H 3725 1125 50  0000 C CNN
	1    3725 1125
	0    1    1    0   
$EndComp
$Comp
L Device:R R9
U 1 1 58697619
P 3725 1275
F 0 "R9" V 3675 1125 50  0000 C CNN
F 1 "330" V 3725 1275 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3655 1275 50  0001 C CNN
F 3 "" H 3725 1275 50  0000 C CNN
	1    3725 1275
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5869772B
P 3725 1375
F 0 "R10" V 3675 1200 50  0000 C CNN
F 1 "330" V 3725 1375 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3655 1375 50  0001 C CNN
F 3 "" H 3725 1375 50  0000 C CNN
	1    3725 1375
	0    1    1    0   
$EndComp
$Comp
L FencingTester-rescue:SP3T SW1
U 1 1 589C9F79
P 3950 3350
F 0 "SW1" H 3850 3500 50  0000 C CNN
F 1 "SP3T" H 3850 3250 50  0000 C CNN
F 2 "custom-fencingTester:SW1" H 3325 3525 50  0001 C CNN
F 3 "" H 3325 3525 50  0000 C CNN
	1    3950 3350
	-1   0    0    1   
$EndComp
$Comp
L FencingTester-rescue:SP3T SW2
U 1 1 589D091A
P 9225 1825
F 0 "SW2" H 9125 1975 50  0000 C CNN
F 1 "SP3T" H 9125 1725 50  0000 C CNN
F 2 "custom-fencingTester:SW2" H 8600 2000 50  0001 C CNN
F 3 "" H 8600 2000 50  0000 C CNN
	1    9225 1825
	1    0    0    -1  
$EndComp
NoConn ~ 3175 2400
$Comp
L power:+5V #PWR018
U 1 1 5924D28E
P 8775 1450
F 0 "#PWR018" H 8775 1300 50  0001 C CNN
F 1 "+5V" H 8775 1590 50  0000 C CNN
F 2 "" H 8775 1450 50  0000 C CNN
F 3 "" H 8775 1450 50  0000 C CNN
	1    8775 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 5924D518
P 10125 1425
F 0 "#PWR019" H 10125 1175 50  0001 C CNN
F 1 "GND" H 10125 1275 50  0000 C CNN
F 2 "" H 10125 1425 50  0000 C CNN
F 3 "" H 10125 1425 50  0000 C CNN
	1    10125 1425
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR020
U 1 1 5924D5E0
P 10125 1925
F 0 "#PWR020" H 10125 1675 50  0001 C CNN
F 1 "GND" H 10125 1775 50  0000 C CNN
F 2 "" H 10125 1925 50  0000 C CNN
F 3 "" H 10125 1925 50  0000 C CNN
	1    10125 1925
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5924D6A8
P 10125 2125
F 0 "#PWR021" H 10125 1875 50  0001 C CNN
F 1 "GND" H 10125 1975 50  0000 C CNN
F 2 "" H 10125 2125 50  0000 C CNN
F 3 "" H 10125 2125 50  0000 C CNN
	1    10125 2125
	0    1    1    0   
$EndComp
Wire Wire Line
	3175 1650 3600 1650
Wire Wire Line
	3600 1550 3750 1550
Wire Wire Line
	3600 1850 3750 1850
Wire Wire Line
	3175 1750 3600 1750
Connection ~ 3750 1550
Connection ~ 3750 1850
Wire Wire Line
	4200 1550 4200 1700
Wire Wire Line
	4200 1700 4300 1700
Connection ~ 4200 1700
Connection ~ 1275 3350
Wire Wire Line
	1275 3250 1275 3350
Wire Wire Line
	1275 3350 1200 3350
Wire Wire Line
	1275 1050 1100 1050
Wire Wire Line
	1100 1050 1100 1225
Wire Wire Line
	1100 1350 1275 1350
Connection ~ 1100 1225
Connection ~ 1100 1350
Wire Wire Line
	3175 2500 3375 2500
Wire Wire Line
	1475 6800 1700 6800
Wire Wire Line
	1475 6700 1700 6700
Wire Wire Line
	1475 6300 1700 6300
Wire Wire Line
	3200 775  3575 775 
Wire Wire Line
	3175 1050 3200 1050
Wire Wire Line
	3200 1050 3200 775 
Wire Wire Line
	3175 1150 3250 1150
Wire Wire Line
	3250 1150 3250 875 
Wire Wire Line
	3300 1250 3175 1250
Wire Wire Line
	3300 1025 3300 1250
Wire Wire Line
	3175 1350 3350 1350
Wire Wire Line
	3350 1350 3350 1125
Wire Wire Line
	3175 1450 3400 1450
Wire Wire Line
	3400 1450 3400 1275
Wire Wire Line
	3175 1550 3450 1550
Wire Wire Line
	3600 1750 3600 1850
Wire Wire Line
	3600 1650 3600 1550
Wire Wire Line
	3375 2650 3175 2650
Wire Wire Line
	3175 2750 3375 2750
Wire Wire Line
	3175 1900 3525 1900
Wire Wire Line
	3175 3250 3650 3250
Wire Wire Line
	3400 1275 3575 1275
Wire Wire Line
	3350 1125 3575 1125
Wire Wire Line
	3300 1025 3575 1025
Wire Wire Line
	3250 875  3575 875 
Wire Notes Line
	1000 5775 1750 5775
Wire Notes Line
	1750 5775 1750 7275
Wire Notes Line
	1750 7275 1000 7275
Wire Notes Line
	1000 7275 1000 5775
Wire Wire Line
	1025 1225 1100 1225
Wire Wire Line
	8350 3625 8975 3625
Wire Wire Line
	8400 3825 8975 3825
Wire Wire Line
	8450 4025 8975 4025
Wire Wire Line
	8500 4225 8975 4225
Wire Wire Line
	8600 4425 8975 4425
Wire Wire Line
	8550 4625 8975 4625
Wire Wire Line
	8975 4725 8875 4725
Wire Wire Line
	8875 4725 8875 4825
Connection ~ 8875 4825
Wire Wire Line
	8350 5325 8975 5325
Wire Wire Line
	10175 3575 10250 3575
Wire Wire Line
	10250 3575 10250 3775
Wire Wire Line
	10175 5375 10250 5375
Connection ~ 10250 5375
Wire Wire Line
	10250 5175 10175 5175
Connection ~ 10250 5175
Wire Wire Line
	10250 4975 10175 4975
Connection ~ 10250 4975
Wire Wire Line
	10250 4775 10175 4775
Connection ~ 10250 4775
Wire Wire Line
	10250 4575 10175 4575
Connection ~ 10250 4575
Wire Wire Line
	10175 4375 10250 4375
Connection ~ 10250 4375
Wire Wire Line
	10250 4175 10175 4175
Connection ~ 10250 4175
Wire Wire Line
	10175 3975 10250 3975
Connection ~ 10250 3975
Wire Wire Line
	10250 3775 10175 3775
Connection ~ 10250 3775
Wire Wire Line
	9850 2025 10125 2025
Wire Wire Line
	9850 1925 9850 2025
Wire Wire Line
	7525 1925 7525 2500
Wire Wire Line
	7525 2500 8400 2500
Wire Wire Line
	8575 1825 8775 1825
Wire Wire Line
	8250 3975 8350 3975
Wire Wire Line
	8350 3975 8350 3625
Wire Wire Line
	8250 4075 8400 4075
Wire Wire Line
	8400 4075 8400 3825
Wire Wire Line
	8250 4175 8450 4175
Wire Wire Line
	8450 4175 8450 4025
Wire Wire Line
	8250 4275 8500 4275
Wire Wire Line
	8500 4275 8500 4225
Wire Wire Line
	8250 4875 8350 4875
Wire Wire Line
	8350 4875 8350 5325
Wire Wire Line
	8250 4775 8400 4775
Wire Wire Line
	8400 4775 8400 5125
Wire Wire Line
	8250 4675 8450 4675
Wire Wire Line
	8450 4675 8450 4925
Wire Wire Line
	8400 5125 8975 5125
Wire Wire Line
	8450 4925 8975 4925
Wire Wire Line
	8500 4825 8875 4825
Wire Wire Line
	8500 4825 8500 4575
Wire Wire Line
	8500 4575 8250 4575
Wire Wire Line
	8250 4475 8550 4475
Wire Wire Line
	8550 4475 8550 4625
Wire Wire Line
	8250 4375 8600 4375
Wire Wire Line
	8600 4375 8600 4425
Wire Wire Line
	3650 3350 3175 3350
Wire Notes Line
	3450 3175 4475 3175
Wire Notes Line
	4475 3175 4475 3675
Wire Notes Line
	4475 3675 3450 3675
Wire Notes Line
	3450 3675 3450 3175
Wire Wire Line
	4875 4275 7250 4275
Wire Wire Line
	4775 4375 7250 4375
Wire Wire Line
	4675 4475 7250 4475
Wire Wire Line
	4575 4575 7250 4575
Wire Wire Line
	10125 1525 9900 1525
Wire Wire Line
	9900 1525 9900 1825
Wire Wire Line
	10125 1325 9850 1325
Wire Wire Line
	9850 1325 9850 1725
Wire Wire Line
	5900 2575 6050 2575
Wire Wire Line
	7525 1925 7150 1925
Wire Wire Line
	8025 1450 8025 1500
Wire Wire Line
	7825 1500 8025 1500
Connection ~ 8025 1500
Wire Wire Line
	7825 1500 7825 1650
Connection ~ 8775 1825
Connection ~ 7525 1925
Wire Wire Line
	3275 2200 3175 2200
Wire Wire Line
	3175 2100 3275 2100
Wire Wire Line
	3275 2000 3175 2000
Wire Wire Line
	3575 1375 3450 1375
Wire Wire Line
	3450 1375 3450 1550
Wire Wire Line
	4125 675  4025 675 
Wire Wire Line
	4025 675  4025 775 
Wire Wire Line
	4025 775  3875 775 
Wire Wire Line
	3875 875  4125 875 
Wire Wire Line
	3875 1125 4700 1125
Wire Wire Line
	3875 1375 5275 1375
Wire Wire Line
	5150 1175 5275 1175
Wire Wire Line
	5150 1175 5150 1275
Wire Wire Line
	5150 1275 3875 1275
Wire Wire Line
	4700 925  4575 925 
Wire Wire Line
	4575 925  4575 1025
Wire Wire Line
	4575 1025 3875 1025
Wire Wire Line
	3175 3150 4575 3150
Wire Wire Line
	4575 3150 4575 4575
Wire Wire Line
	3175 3050 4675 3050
Wire Wire Line
	4675 3050 4675 4475
Wire Wire Line
	3175 2950 4775 2950
Wire Wire Line
	4775 2950 4775 4375
Wire Wire Line
	3175 2850 4875 2850
Wire Wire Line
	4875 2850 4875 4275
Wire Wire Line
	8775 1825 8775 1750
Wire Wire Line
	8400 2500 8400 2400
Wire Wire Line
	8275 2025 8400 2025
Wire Wire Line
	8400 2025 8400 2100
Connection ~ 8400 2025
Wire Wire Line
	3175 2300 3475 2300
Wire Wire Line
	3475 2300 3475 2575
Wire Wire Line
	3475 2575 4950 2575
$Comp
L Device:R R43
U 1 1 59252E05
P 4000 2000
F 0 "R43" V 4050 1825 50  0000 C CNN
F 1 "120k" V 4000 2000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3930 2000 50  0001 C CNN
F 3 "" H 4000 2000 50  0000 C CNN
	1    4000 2000
	0    1    1    0   
$EndComp
$Comp
L Device:R R44
U 1 1 59252F55
P 4000 2100
F 0 "R44" V 4050 1925 50  0000 C CNN
F 1 "120k" V 4000 2100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3930 2100 50  0001 C CNN
F 3 "" H 4000 2100 50  0000 C CNN
	1    4000 2100
	0    1    1    0   
$EndComp
$Comp
L Device:R R45
U 1 1 5925304D
P 4000 2200
F 0 "R45" V 4050 2025 50  0000 C CNN
F 1 "120k" V 4000 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3930 2200 50  0001 C CNN
F 3 "" H 4000 2200 50  0000 C CNN
	1    4000 2200
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR022
U 1 1 59254A30
P 4150 2000
F 0 "#PWR022" H 4150 1850 50  0001 C CNN
F 1 "+5V" V 4150 2175 50  0000 C CNN
F 2 "" H 4150 2000 50  0000 C CNN
F 3 "" H 4150 2000 50  0000 C CNN
	1    4150 2000
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR023
U 1 1 59254AFE
P 4150 2100
F 0 "#PWR023" H 4150 1950 50  0001 C CNN
F 1 "+5V" V 4150 2275 50  0000 C CNN
F 2 "" H 4150 2100 50  0000 C CNN
F 3 "" H 4150 2100 50  0000 C CNN
	1    4150 2100
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 59254BCC
P 4150 2200
F 0 "#PWR024" H 4150 2050 50  0001 C CNN
F 1 "+5V" V 4150 2375 50  0000 C CNN
F 2 "" H 4150 2200 50  0000 C CNN
F 3 "" H 4150 2200 50  0000 C CNN
	1    4150 2200
	0    1    1    0   
$EndComp
Text Notes 3150 3875 0    60   ~ 0
Epée - Fil de corps - Off\n
Text Notes 400  8025 0    60   ~ 0
Vérifier position prise USB\n
Wire Wire Line
	3750 1550 3900 1550
Wire Wire Line
	3750 1850 3900 1850
Wire Wire Line
	4200 1700 4200 1850
Wire Wire Line
	1100 1225 1100 1350
Wire Wire Line
	1100 1350 1100 1400
Wire Wire Line
	8875 4825 8975 4825
Wire Wire Line
	10250 5375 10250 5425
Wire Wire Line
	10250 5175 10250 5375
Wire Wire Line
	10250 4975 10250 5175
Wire Wire Line
	10250 4775 10250 4975
Wire Wire Line
	10250 4575 10250 4775
Wire Wire Line
	10250 4375 10250 4575
Wire Wire Line
	10250 4175 10250 4375
Wire Wire Line
	10250 3975 10250 4175
Wire Wire Line
	10250 3775 10250 3975
Wire Wire Line
	8025 1500 8025 1550
Wire Wire Line
	8775 1825 8925 1825
Wire Wire Line
	8400 2025 8450 2025
Wire Wire Line
	9525 1825 9900 1825
Wire Wire Line
	9525 1925 9850 1925
Wire Wire Line
	9525 1725 9850 1725
Wire Wire Line
	3575 2000 3850 2000
Wire Wire Line
	3575 2100 3850 2100
Wire Wire Line
	3575 2200 3850 2200
$EndSCHEMATC
