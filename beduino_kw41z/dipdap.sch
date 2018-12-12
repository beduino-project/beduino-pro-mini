EESchema Schematic File Version 4
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 3
Title "Beduino Pro Mini"
Date ""
Rev "1.1"
Comp ""
Comment1 "License: Solderpad Hardware License 2.0"
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L beduino_nxp:LPC11U35FHI33-501 U2
U 1 1 5A1F12E7
P 5800 3900
F 0 "U2" H 5300 2550 60  0000 C CNN
F 1 "LPC11U35FHI33-501" H 6350 2550 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-32-1EP_5x5mm_Pitch0.5mm" H 6050 3300 60  0001 C CNN
F 3 "" H 6050 3300 60  0001 C CNN
	1    5800 3900
	1    0    0    -1  
$EndComp
$Comp
L Connector:USB_OTG J1
U 1 1 5A1F13EF
P 1050 3500
F 0 "J1" H 1105 3967 50  0000 C CNN
F 1 "USB_OTG" H 1105 3876 50  0000 C CNN
F 2 "Connectors:USB_Micro-B" H 1200 3450 50  0001 C CNN
F 3 "" H 1200 3450 50  0001 C CNN
	1    1050 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5A1F1813
P 1950 3500
F 0 "R1" V 1900 3700 50  0000 C CNN
F 1 "33" V 1950 3500 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1880 3500 50  0001 C CNN
F 3 "" H 1950 3500 50  0001 C CNN
	1    1950 3500
	0    1    1    0   
$EndComp
$Comp
L Device:C C1
U 1 1 5A1F1B61
P 1700 2150
F 0 "C1" H 1815 2196 50  0000 L CNN
F 1 "1u" H 1815 2105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1738 2000 50  0001 C CNN
F 3 "" H 1700 2150 50  0001 C CNN
	1    1700 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:C C4
U 1 1 5A1F1BE5
P 3000 2150
F 0 "C4" H 3115 2196 50  0000 L CNN
F 1 "10u" H 3115 2105 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3038 2000 50  0001 C CNN
F 3 "" H 3000 2150 50  0001 C CNN
	1    3000 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5A1F1F5E
P 1950 3600
F 0 "R2" V 1900 3800 50  0000 C CNN
F 1 "33" V 1950 3600 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1880 3600 50  0001 C CNN
F 3 "" H 1950 3600 50  0001 C CNN
	1    1950 3600
	0    1    1    0   
$EndComp
Wire Wire Line
	1350 3500 1800 3500
Wire Wire Line
	1350 3600 1800 3600
Wire Wire Line
	1500 1900 1700 1900
Wire Wire Line
	1700 2300 1700 2500
Wire Wire Line
	2400 2300 2400 2500
Connection ~ 2400 2500
Wire Wire Line
	2000 2000 1900 2000
Wire Wire Line
	1900 2000 1900 1900
Connection ~ 1900 1900
Wire Wire Line
	1500 1700 1500 1900
Wire Wire Line
	1500 3300 1350 3300
$Comp
L power:GND #PWR01
U 1 1 5A1F22B0
P 2400 2600
F 0 "#PWR01" H 2400 2350 50  0001 C CNN
F 1 "GND" H 2405 2427 50  0000 C CNN
F 2 "" H 2400 2600 50  0001 C CNN
F 3 "" H 2400 2600 50  0001 C CNN
	1    2400 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5A1F2319
P 1050 4000
F 0 "#PWR02" H 1050 3750 50  0001 C CNN
F 1 "GND" H 1055 3827 50  0000 C CNN
F 2 "" H 1050 4000 50  0001 C CNN
F 3 "" H 1050 4000 50  0001 C CNN
	1    1050 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1050 3900 1050 3950
Wire Wire Line
	950  3900 950  3950
Wire Wire Line
	950  3950 1050 3950
Connection ~ 1050 3950
NoConn ~ 1350 3700
$Comp
L power:+3V3 #PWR03
U 1 1 5A1F256B
P 3600 1700
AR Path="/5A1F256B" Ref="#PWR03"  Part="1" 
AR Path="/5A1F12CA/5A1F256B" Ref="#PWR03"  Part="1" 
F 0 "#PWR03" H 3600 1550 50  0001 C CNN
F 1 "+3V3" H 3615 1873 50  0000 C CNN
F 2 "" H 3600 1700 50  0001 C CNN
F 3 "" H 3600 1700 50  0001 C CNN
	1    3600 1700
	1    0    0    -1  
$EndComp
$Comp
L power:VBUS #PWR04
U 1 1 5A1F264E
P 1500 1700
F 0 "#PWR04" H 1500 1550 50  0001 C CNN
F 1 "VBUS" H 1515 1873 50  0000 C CNN
F 2 "" H 1500 1700 50  0001 C CNN
F 3 "" H 1500 1700 50  0001 C CNN
	1    1500 1700
	1    0    0    -1  
$EndComp
Connection ~ 1500 1900
NoConn ~ 2800 2000
Wire Wire Line
	1700 1900 1700 2000
Connection ~ 1700 1900
$Comp
L Switch:SW_Push SW1
U 1 1 5A1F2CFA
P 3400 3100
F 0 "SW1" H 3400 3385 50  0000 C CNN
F 1 "SW_Push" H 3400 3294 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3S-1000" H 3400 3300 50  0001 C CNN
F 3 "" H 3400 3300 50  0001 C CNN
	1    3400 3100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5A200870
P 3000 3100
F 0 "#PWR05" H 3000 2850 50  0001 C CNN
F 1 "GND" V 3005 2972 50  0000 R CNN
F 2 "" H 3000 3100 50  0001 C CNN
F 3 "" H 3000 3100 50  0001 C CNN
	1    3000 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	3600 3100 4800 3100
Wire Wire Line
	4800 3100 4800 3200
Wire Wire Line
	4800 3200 5000 3200
Connection ~ 4800 3100
$Comp
L Device:R R5
U 1 1 5A201C2B
P 4300 1850
F 0 "R5" H 4230 1804 50  0000 R CNN
F 1 "10k" H 4230 1895 50  0000 R CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4230 1850 50  0001 C CNN
F 3 "" H 4300 1850 50  0001 C CNN
	1    4300 1850
	-1   0    0    1   
$EndComp
$Comp
L Device:C C6
U 1 1 5A201CFF
P 4300 2350
F 0 "C6" H 4415 2396 50  0000 L CNN
F 1 "100n" H 4415 2305 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4338 2200 50  0001 C CNN
F 3 "" H 4300 2350 50  0001 C CNN
	1    4300 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2000 4300 2100
Wire Wire Line
	4300 2100 4900 2100
Wire Wire Line
	4900 2100 4900 3000
Wire Wire Line
	4900 3000 5000 3000
Connection ~ 4300 2100
$Comp
L power:GND #PWR06
U 1 1 5A201FAE
P 4300 2600
F 0 "#PWR06" H 4300 2350 50  0001 C CNN
F 1 "GND" H 4305 2427 50  0000 C CNN
F 2 "" H 4300 2600 50  0001 C CNN
F 3 "" H 4300 2600 50  0001 C CNN
	1    4300 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2600 4300 2500
$Comp
L power:+3V3 #PWR07
U 1 1 5A202009
P 4300 1600
AR Path="/5A202009" Ref="#PWR07"  Part="1" 
AR Path="/5A1F12CA/5A202009" Ref="#PWR07"  Part="1" 
F 0 "#PWR07" H 4300 1450 50  0001 C CNN
F 1 "+3V3" H 4315 1773 50  0000 C CNN
F 2 "" H 4300 1600 50  0001 C CNN
F 3 "" H 4300 1600 50  0001 C CNN
	1    4300 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 1600 4300 1700
Wire Wire Line
	3000 3100 3200 3100
$Comp
L Device:C C2
U 1 1 5A202171
P 2250 4300
F 0 "C2" H 2365 4346 50  0000 L CNN
F 1 "18p" H 2365 4255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2288 4150 50  0001 C CNN
F 3 "" H 2250 4300 50  0001 C CNN
	1    2250 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C3
U 1 1 5A20220F
P 2600 4300
F 0 "C3" H 2715 4346 50  0000 L CNN
F 1 "18p" H 2715 4255 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2638 4150 50  0001 C CNN
F 3 "" H 2600 4300 50  0001 C CNN
	1    2600 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4150 2250 3600
Wire Wire Line
	2100 3600 2250 3600
Wire Wire Line
	2100 3500 2600 3500
Wire Wire Line
	2600 3500 2600 4150
$Comp
L power:GND #PWR08
U 1 1 5A20244C
P 2250 4700
F 0 "#PWR08" H 2250 4450 50  0001 C CNN
F 1 "GND" H 2255 4527 50  0000 C CNN
F 2 "" H 2250 4700 50  0001 C CNN
F 3 "" H 2250 4700 50  0001 C CNN
	1    2250 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2250 4700 2250 4450
$Comp
L power:GND #PWR09
U 1 1 5A2024EC
P 2600 4700
F 0 "#PWR09" H 2600 4450 50  0001 C CNN
F 1 "GND" H 2605 4527 50  0000 C CNN
F 2 "" H 2600 4700 50  0001 C CNN
F 3 "" H 2600 4700 50  0001 C CNN
	1    2600 4700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2600 4700 2600 4450
Connection ~ 2600 3500
Connection ~ 2250 3600
$Comp
L Device:R R4
U 1 1 5A202896
P 3850 3700
F 0 "R4" V 4057 3700 50  0000 C CNN
F 1 "10k" V 3966 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3780 3700 50  0001 C CNN
F 3 "" H 3850 3700 50  0001 C CNN
	1    3850 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 3700 5000 3700
$Comp
L power:+3V3 #PWR010
U 1 1 5A20297B
P 3600 3700
AR Path="/5A20297B" Ref="#PWR010"  Part="1" 
AR Path="/5A1F12CA/5A20297B" Ref="#PWR010"  Part="1" 
F 0 "#PWR010" H 3600 3550 50  0001 C CNN
F 1 "+3V3" V 3615 3828 50  0000 L CNN
F 2 "" H 3600 3700 50  0001 C CNN
F 3 "" H 3600 3700 50  0001 C CNN
	1    3600 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3600 3700 3700 3700
$Comp
L Device:R R3
U 1 1 5A202AD1
P 3100 3850
F 0 "R3" H 3170 3896 50  0000 L CNN
F 1 "1k5" H 3170 3805 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 3030 3850 50  0001 C CNN
F 3 "" H 3100 3850 50  0001 C CNN
	1    3100 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4200 3100 4000
Wire Wire Line
	3100 3700 3100 3500
Connection ~ 3100 3500
Wire Wire Line
	3400 4400 4000 4400
Wire Wire Line
	4000 4400 4000 3800
Wire Wire Line
	4000 3800 5000 3800
Wire Wire Line
	3100 4700 3100 4600
$Comp
L power:+3V3 #PWR011
U 1 1 5A202EAF
P 3100 4700
AR Path="/5A202EAF" Ref="#PWR011"  Part="1" 
AR Path="/5A1F12CA/5A202EAF" Ref="#PWR011"  Part="1" 
F 0 "#PWR011" H 3100 4550 50  0001 C CNN
F 1 "+3V3" H 3115 4873 50  0000 C CNN
F 2 "" H 3100 4700 50  0001 C CNN
F 3 "" H 3100 4700 50  0001 C CNN
	1    3100 4700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4100 4100 4100 5000
Wire Wire Line
	4100 4100 5000 4100
Wire Wire Line
	4600 4300 4600 5000
Wire Wire Line
	4600 4300 5000 4300
$Comp
L Device:C C5
U 1 1 5A2032FB
P 4100 5300
F 0 "C5" H 4150 5400 50  0000 L CNN
F 1 "18p" H 3950 5200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4138 5150 50  0001 C CNN
F 3 "" H 4100 5300 50  0001 C CNN
	1    4100 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:C C7
U 1 1 5A20338B
P 4600 5300
F 0 "C7" H 4650 5400 50  0000 L CNN
F 1 "18p" H 4450 5200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4638 5150 50  0001 C CNN
F 3 "" H 4600 5300 50  0001 C CNN
	1    4600 5300
	1    0    0    -1  
$EndComp
Connection ~ 4100 5000
Wire Wire Line
	4500 5000 4600 5000
Wire Wire Line
	4100 5000 4200 5000
Connection ~ 4600 5000
$Comp
L power:GND #PWR012
U 1 1 5A2038B1
P 4100 5550
F 0 "#PWR012" H 4100 5300 50  0001 C CNN
F 1 "GND" H 4105 5377 50  0000 C CNN
F 2 "" H 4100 5550 50  0001 C CNN
F 3 "" H 4100 5550 50  0001 C CNN
	1    4100 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4100 5550 4100 5500
$Comp
L power:GND #PWR013
U 1 1 5A203936
P 4600 5550
F 0 "#PWR013" H 4600 5300 50  0001 C CNN
F 1 "GND" H 4605 5377 50  0000 C CNN
F 2 "" H 4600 5550 50  0001 C CNN
F 3 "" H 4600 5550 50  0001 C CNN
	1    4600 5550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 5550 4600 5450
NoConn ~ 5000 4600
NoConn ~ 5000 4700
NoConn ~ 5000 4800
NoConn ~ 5000 4900
NoConn ~ 5000 5000
$Comp
L power:GND #PWR014
U 1 1 5A203A8E
P 5800 5400
F 0 "#PWR014" H 5800 5150 50  0001 C CNN
F 1 "GND" H 5805 5227 50  0000 C CNN
F 2 "" H 5800 5400 50  0001 C CNN
F 3 "" H 5800 5400 50  0001 C CNN
	1    5800 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 5400 5800 5300
$Comp
L power:+3V3 #PWR015
U 1 1 5A203D17
P 5700 2500
AR Path="/5A203D17" Ref="#PWR015"  Part="1" 
AR Path="/5A1F12CA/5A203D17" Ref="#PWR015"  Part="1" 
F 0 "#PWR015" H 5700 2350 50  0001 C CNN
F 1 "+3V3" H 5715 2673 50  0000 C CNN
F 2 "" H 5700 2500 50  0001 C CNN
F 3 "" H 5700 2500 50  0001 C CNN
	1    5700 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5700 2500 5700 2600
$Comp
L power:+3V3 #PWR016
U 1 1 5A203D9F
P 5900 2500
AR Path="/5A203D9F" Ref="#PWR016"  Part="1" 
AR Path="/5A1F12CA/5A203D9F" Ref="#PWR016"  Part="1" 
F 0 "#PWR016" H 5900 2350 50  0001 C CNN
F 1 "+3V3" H 5915 2673 50  0000 C CNN
F 2 "" H 5900 2500 50  0001 C CNN
F 3 "" H 5900 2500 50  0001 C CNN
	1    5900 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 2500 5900 2600
$Comp
L power:+3V3 #PWR017
U 1 1 5A203E3C
P 5350 1450
AR Path="/5A203E3C" Ref="#PWR017"  Part="1" 
AR Path="/5A1F12CA/5A203E3C" Ref="#PWR017"  Part="1" 
F 0 "#PWR017" H 5350 1300 50  0001 C CNN
F 1 "+3V3" H 5365 1623 50  0000 C CNN
F 2 "" H 5350 1450 50  0001 C CNN
F 3 "" H 5350 1450 50  0001 C CNN
	1    5350 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C8
U 1 1 5A203EA2
P 5350 1700
F 0 "C8" H 5465 1746 50  0000 L CNN
F 1 "100n" H 5465 1655 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 5388 1550 50  0001 C CNN
F 3 "" H 5350 1700 50  0001 C CNN
	1    5350 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1450 5350 1550
$Comp
L power:GND #PWR018
U 1 1 5A204127
P 5350 1950
F 0 "#PWR018" H 5350 1700 50  0001 C CNN
F 1 "GND" H 5355 1777 50  0000 C CNN
F 2 "" H 5350 1950 50  0001 C CNN
F 3 "" H 5350 1950 50  0001 C CNN
	1    5350 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 1950 5350 1850
$Comp
L Connector_Generic:Conn_01x07 J2
U 1 1 5A2044F8
P 8950 3850
F 0 "J2" H 9030 3892 50  0000 L CNN
F 1 "Conn_01x07" H 9030 3801 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07_Pitch2.54mm" H 8950 3850 50  0001 C CNN
F 3 "" H 8950 3850 50  0001 C CNN
	1    8950 3850
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5A2047C2
P 8000 3650
F 0 "R9" V 7950 3450 50  0000 C CNN
F 1 "470" V 8000 3650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7930 3650 50  0001 C CNN
F 3 "" H 8000 3650 50  0001 C CNN
	1    8000 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R R10
U 1 1 5A204D96
P 8000 3850
F 0 "R10" V 7950 3650 50  0000 C CNN
F 1 "470" V 8000 3850 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7930 3850 50  0001 C CNN
F 3 "" H 8000 3850 50  0001 C CNN
	1    8000 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R R11
U 1 1 5A204DE2
P 8000 3950
F 0 "R11" V 7950 3750 50  0000 C CNN
F 1 "470" V 8000 3950 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7930 3950 50  0001 C CNN
F 3 "" H 8000 3950 50  0001 C CNN
	1    8000 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R R12
U 1 1 5A204E24
P 8000 4050
F 0 "R12" V 7950 3850 50  0000 C CNN
F 1 "470" V 8000 4050 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7930 4050 50  0001 C CNN
F 3 "" H 8000 4050 50  0001 C CNN
	1    8000 4050
	0    1    1    0   
$EndComp
$Comp
L Device:R R13
U 1 1 5A204E68
P 8000 4150
F 0 "R13" V 7950 3950 50  0000 C CNN
F 1 "470" V 8000 4150 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7930 4150 50  0001 C CNN
F 3 "" H 8000 4150 50  0001 C CNN
	1    8000 4150
	0    1    1    0   
$EndComp
Wire Wire Line
	8150 4150 8750 4150
Wire Wire Line
	8150 4050 8750 4050
Wire Wire Line
	8150 3950 8750 3950
Wire Wire Line
	8150 3850 8750 3850
$Comp
L power:GND #PWR019
U 1 1 5A205408
P 8250 3550
F 0 "#PWR019" H 8250 3300 50  0001 C CNN
F 1 "GND" V 8255 3422 50  0000 R CNN
F 2 "" H 8250 3550 50  0001 C CNN
F 3 "" H 8250 3550 50  0001 C CNN
	1    8250 3550
	0    1    1    0   
$EndComp
Wire Wire Line
	8250 3550 8750 3550
$Comp
L power:+3V3 #PWR020
U 1 1 5A205619
P 8250 3750
AR Path="/5A205619" Ref="#PWR020"  Part="1" 
AR Path="/5A1F12CA/5A205619" Ref="#PWR020"  Part="1" 
F 0 "#PWR020" H 8250 3600 50  0001 C CNN
F 1 "+3V3" V 8265 3878 50  0000 L CNN
F 2 "" H 8250 3750 50  0001 C CNN
F 3 "" H 8250 3750 50  0001 C CNN
	1    8250 3750
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8250 3750 8750 3750
Text HLabel 10300 3950 0    39   BiDi ~ 0
TGT_SWDIO
Text HLabel 10300 3850 0    39   Input ~ 0
TGT_TX
Text HLabel 10300 3750 0    39   Output ~ 0
TGT_RX
Text HLabel 10300 3650 0    39   Output ~ 0
TGT_NRESET
Wire Wire Line
	8150 3650 8750 3650
Text Label 8350 3650 0    39   ~ 0
TGT_NRESET
Text Label 8350 3850 0    39   ~ 0
TGT_RX
Text Label 8350 3950 0    39   ~ 0
TGT_TX
Text Label 8350 4050 0    39   ~ 0
TGT_SWDIO
Text Label 8350 4150 0    39   ~ 0
TGT_SWCLK
Text Label 10450 3650 0    39   ~ 0
TGT_NRESET
Text Label 10450 3750 0    39   ~ 0
TGT_RX
Text Label 10450 3850 0    39   ~ 0
TGT_TX
Text Label 10450 3950 0    39   ~ 0
TGT_SWDIO
Text Label 10450 4050 0    39   ~ 0
TGT_SWCLK
Wire Wire Line
	10300 3650 10450 3650
Wire Wire Line
	10450 3750 10300 3750
Wire Wire Line
	10450 3850 10300 3850
Wire Wire Line
	10450 3950 10300 3950
Text HLabel 10300 4050 0    39   Output ~ 0
TGT_SWCLK
Wire Wire Line
	10300 4050 10450 4050
Wire Wire Line
	7850 4150 7100 4150
Wire Wire Line
	7100 4150 7100 3300
Wire Wire Line
	7100 3300 6600 3300
Wire Wire Line
	6600 3400 7000 3400
Wire Wire Line
	7000 3400 7000 4050
Wire Wire Line
	7000 4050 7850 4050
Wire Wire Line
	7850 3650 6900 3650
Wire Wire Line
	6600 4200 7650 4200
Wire Wire Line
	7650 4200 7650 3950
Wire Wire Line
	7650 3950 7850 3950
Wire Wire Line
	7850 3850 7550 3850
Wire Wire Line
	7550 3850 7550 4300
Wire Wire Line
	7550 4300 6600 4300
$Comp
L Device:R R6
U 1 1 5A20BC15
P 7350 2300
F 0 "R6" V 7300 2100 50  0000 C CNN
F 1 "470" V 7350 2300 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7280 2300 50  0001 C CNN
F 3 "" H 7350 2300 50  0001 C CNN
	1    7350 2300
	0    1    1    0   
$EndComp
$Comp
L Device:R R7
U 1 1 5A20BC9B
P 7350 2700
F 0 "R7" V 7300 2500 50  0000 C CNN
F 1 "470" V 7350 2700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7280 2700 50  0001 C CNN
F 3 "" H 7350 2700 50  0001 C CNN
	1    7350 2700
	0    1    1    0   
$EndComp
$Comp
L Device:R R8
U 1 1 5A20BCE7
P 7350 3100
F 0 "R8" V 7300 2900 50  0000 C CNN
F 1 "470" V 7350 3100 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7280 3100 50  0001 C CNN
F 3 "" H 7350 3100 50  0001 C CNN
	1    7350 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	6600 3100 7200 3100
Wire Wire Line
	6600 3000 6950 3000
Wire Wire Line
	6950 3000 6950 2700
Wire Wire Line
	6950 2700 7200 2700
Wire Wire Line
	6600 2900 6800 2900
Wire Wire Line
	6800 2900 6800 2300
Wire Wire Line
	6800 2300 7200 2300
$Comp
L Device:LED D2
U 1 1 5A20CB53
P 7900 2300
F 0 "D2" H 7750 2150 50  0000 C CNN
F 1 "Red" H 8050 2150 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 7900 2300 50  0001 C CNN
F 3 "" H 7900 2300 50  0001 C CNN
	1    7900 2300
	1    0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 5A20CBFD
P 7900 2700
F 0 "D3" H 7750 2550 50  0000 C CNN
F 1 "Yellow" H 8050 2550 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 7900 2700 50  0001 C CNN
F 3 "" H 7900 2700 50  0001 C CNN
	1    7900 2700
	1    0    0    1   
$EndComp
$Comp
L Device:LED D4
U 1 1 5A20D147
P 7900 3100
F 0 "D4" H 7750 2950 50  0000 C CNN
F 1 "Green" H 8050 2950 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 7900 3100 50  0001 C CNN
F 3 "" H 7900 3100 50  0001 C CNN
	1    7900 3100
	1    0    0    1   
$EndComp
Wire Wire Line
	7750 2700 7500 2700
Wire Wire Line
	7500 3100 7750 3100
Wire Wire Line
	7500 2300 7750 2300
Wire Wire Line
	8050 2300 8250 2300
Wire Wire Line
	8250 2000 8250 2300
Wire Wire Line
	8250 3100 8050 3100
Wire Wire Line
	8050 2700 8250 2700
Connection ~ 8250 2700
$Comp
L power:+3V3 #PWR021
U 1 1 5A20D5BD
P 8250 2000
AR Path="/5A20D5BD" Ref="#PWR021"  Part="1" 
AR Path="/5A1F12CA/5A20D5BD" Ref="#PWR021"  Part="1" 
F 0 "#PWR021" H 8250 1850 50  0001 C CNN
F 1 "+3V3" H 8265 2173 50  0000 C CNN
F 2 "" H 8250 2000 50  0001 C CNN
F 3 "" H 8250 2000 50  0001 C CNN
	1    8250 2000
	1    0    0    -1  
$EndComp
Connection ~ 8250 2300
Wire Wire Line
	6900 3650 6900 3700
Wire Wire Line
	6900 3700 6600 3700
NoConn ~ 6600 4600
NoConn ~ 6600 4700
NoConn ~ 6600 4800
NoConn ~ 6600 4900
NoConn ~ 6600 5000
NoConn ~ 6600 3500
NoConn ~ 6600 3900
NoConn ~ 6600 4000
$Comp
L beduino_regul:TC1017 U1
U 1 1 5A22A6C0
P 2400 2000
F 0 "U1" H 2400 2325 50  0000 C CNN
F 1 "TC1017" H 2400 2234 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5" H 2400 2275 50  0001 C CNN
F 3 "" H 2100 2200 50  0001 C CNN
	1    2400 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5A23E5EA
P 3300 1900
F 0 "D1" H 3300 1684 50  0000 C CNN
F 1 "BAT60A" H 3300 1775 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323" H 3300 1900 50  0001 C CNN
F 3 "" H 3300 1900 50  0001 C CNN
	1    3300 1900
	-1   0    0    1   
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5A2EF3D0
P 4350 5000
F 0 "Y1" H 4400 5200 50  0000 L CNN
F 1 "12MHz" H 4200 5350 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_3225-4pin_3.2x2.5mm_HandSoldering" H 4350 5000 50  0001 C CNN
F 3 "" H 4350 5000 50  0001 C CNN
	1    4350 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4350 4800 4350 4700
Wire Wire Line
	4350 4700 3800 4700
Wire Wire Line
	3800 4700 3800 5500
Wire Wire Line
	3800 5500 4100 5500
Connection ~ 4100 5500
Wire Wire Line
	4350 5500 4350 5200
$Comp
L Device:Q_PMOS_GSD Q1
U 1 1 5A942948
P 3200 4400
F 0 "Q1" H 3400 4450 50  0000 L CNN
F 1 "Q_PMOS_GSD" H 2600 4300 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SOT-23" H 3400 4500 50  0001 C CNN
F 3 "" H 3200 4400 50  0001 C CNN
	1    3200 4400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3000 2300 3000 2500
Wire Wire Line
	3000 2500 2400 2500
Wire Wire Line
	2800 1900 3000 1900
Wire Wire Line
	3000 1900 3000 2000
Connection ~ 3000 1900
Wire Wire Line
	3450 1900 3600 1900
Wire Wire Line
	2400 2500 2400 2600
Wire Wire Line
	2400 2500 1700 2500
Wire Wire Line
	1900 1900 2000 1900
Wire Wire Line
	1050 3950 1050 4000
Wire Wire Line
	1500 1900 1500 3300
Wire Wire Line
	1700 1900 1900 1900
Wire Wire Line
	4800 3100 5000 3100
Wire Wire Line
	4300 2100 4300 2200
Wire Wire Line
	2600 3500 3100 3500
Wire Wire Line
	2250 3600 5000 3600
Wire Wire Line
	3100 3500 5000 3500
Wire Wire Line
	4100 5000 4100 5150
Wire Wire Line
	4600 5000 4600 5150
Wire Wire Line
	8250 2700 8250 3100
Wire Wire Line
	8250 2300 8250 2700
Wire Wire Line
	4100 5500 4100 5450
Wire Wire Line
	4100 5500 4350 5500
Wire Wire Line
	3000 1900 3150 1900
Wire Wire Line
	3600 1900 3600 1700
$EndSCHEMATC
