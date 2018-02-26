EESchema Schematic File Version 2
LIBS:beduino_kw41z-rescue
LIBS:beduino_regul
LIBS:beduino_nxp
LIBS:beduino_conn
LIBS:MyAntennas
LIBS:74xgxx
LIBS:74xx
LIBS:ac-dc
LIBS:actel
LIBS:adc-dac
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:analog_switches
LIBS:atmel
LIBS:audio
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos4000
LIBS:cmos_ieee
LIBS:conn
LIBS:contrib
LIBS:cypress
LIBS:dc-dc
LIBS:device
LIBS:digital-audio
LIBS:diode
LIBS:display
LIBS:dsp
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intel
LIBS:interface
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:linear
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:memory
LIBS:microchip
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:microcontrollers
LIBS:modules
LIBS:motor_drivers
LIBS:motorola
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:onsemi
LIBS:opto
LIBS:Oscillators
LIBS:philips
LIBS:power
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:regul
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:siliconi
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:texas
LIBS:transf
LIBS:transistors
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:valves
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:xilinx
LIBS:zetex
LIBS:Zilog
LIBS:beduino_kw41z-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 3 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 2050 1300 2    39   Input ~ 0
TGT_NRESET
Text HLabel 2050 1700 2    39   BiDi ~ 0
TGT_SWDIO
Text HLabel 2050 1800 2    39   Input ~ 0
TGT_SWCLK
Text HLabel 2050 1500 2    39   Input ~ 0
TGT_RX
Text HLabel 2050 1600 2    39   Output ~ 0
TGT_TX
$Comp
L Conn_01x07 J3
U 1 1 5A2111DE
P 1250 1500
F 0 "J3" H 1330 1542 50  0000 L CNN
F 1 "Conn_01x07" H 1330 1451 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07_Pitch2.54mm" H 1250 1500 50  0001 C CNN
F 3 "" H 1250 1500 50  0001 C CNN
	1    1250 1500
	-1   0    0    -1  
$EndComp
$Comp
L GND #PWR022
U 1 1 5A2114C3
P 2050 1200
F 0 "#PWR022" H 2050 950 50  0001 C CNN
F 1 "GND" V 2055 1072 50  0000 R CNN
F 2 "" H 2050 1200 50  0001 C CNN
F 3 "" H 2050 1200 50  0001 C CNN
	1    2050 1200
	0    -1   1    0   
$EndComp
Wire Wire Line
	2050 1200 1450 1200
Wire Wire Line
	1450 1300 2050 1300
Wire Wire Line
	1450 1400 3100 1400
Wire Wire Line
	1450 1500 2050 1500
Wire Wire Line
	2050 1600 1450 1600
Wire Wire Line
	1450 1700 2050 1700
Wire Wire Line
	2050 1800 1450 1800
Text Label 1900 1300 2    39   ~ 0
TGT_NRESET
Text Label 1900 1500 2    39   ~ 0
TGT_RX
Text Label 1900 1600 2    39   ~ 0
TGT_TX
Text Label 1900 1700 2    39   ~ 0
TGT_SWDIO
Text Label 1900 1800 2    39   ~ 0
TGT_SWCLK
$Comp
L TC1017 U3
U 1 1 5A22AEBB
P 2100 2800
F 0 "U3" H 2100 3125 50  0000 C CNN
F 1 "TC1017" H 2100 3034 50  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-353_SC-70-5" H 2100 3075 50  0001 C CNN
F 3 "" H 1800 3000 50  0001 C CNN
	1    2100 2800
	1    0    0    -1  
$EndComp
$Comp
L C C9
U 1 1 5A22AFC5
P 1200 2950
F 0 "C9" H 1315 2996 50  0000 L CNN
F 1 "1u" H 1315 2905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1238 2800 50  0001 C CNN
F 3 "" H 1200 2950 50  0001 C CNN
	1    1200 2950
	1    0    0    -1  
$EndComp
$Comp
L C C12
U 1 1 5A22B051
P 2650 2950
F 0 "C12" H 2765 2996 50  0000 L CNN
F 1 "10u" H 2765 2905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2688 2800 50  0001 C CNN
F 3 "" H 2650 2950 50  0001 C CNN
	1    2650 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1700 2800 1600 2800
Wire Wire Line
	1600 2800 1600 2700
Wire Wire Line
	1200 2700 1700 2700
Connection ~ 1600 2700
NoConn ~ 2500 2800
Wire Wire Line
	2100 3100 2100 3300
Connection ~ 2100 3200
$Comp
L GND #PWR023
U 1 1 5A22B245
P 2100 3300
F 0 "#PWR023" H 2100 3050 50  0001 C CNN
F 1 "GND" H 2105 3127 50  0000 C CNN
F 2 "" H 2100 3300 50  0001 C CNN
F 3 "" H 2100 3300 50  0001 C CNN
	1    2100 3300
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR024
U 1 1 5A22B297
P 3200 2150
F 0 "#PWR024" H 3200 2000 50  0001 C CNN
F 1 "+3V3" V 3215 2278 50  0000 L CNN
F 2 "" H 3200 2150 50  0001 C CNN
F 3 "" H 3200 2150 50  0001 C CNN
	1    3200 2150
	1    0    0    -1  
$EndComp
$Comp
L VCC #PWR025
U 1 1 5A22B501
P 1200 2600
F 0 "#PWR025" H 1200 2450 50  0001 C CNN
F 1 "VCC" H 1217 2773 50  0000 C CNN
F 2 "" H 1200 2600 50  0001 C CNN
F 3 "" H 1200 2600 50  0001 C CNN
	1    1200 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1200 2600 1200 2800
$Comp
L Battery_Cell BT1
U 1 1 5A22B60A
P 3800 3000
F 0 "BT1" H 3918 3096 50  0000 L CNN
F 1 "Battery_Cell" H 3918 3005 50  0000 L CNN
F 2 "Battery_Holders:Keystone_1058_1x2032-CoinCell" V 3800 3060 50  0001 C CNN
F 3 "" V 3800 3060 50  0001 C CNN
	1    3800 3000
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y3
U 1 1 5A22B78A
P 6500 4150
F 0 "Y3" H 6500 4400 50  0000 C CNN
F 1 "32KHz" H 6500 4300 50  0000 C CNN
F 2 "Crystals:Crystal_SMD_3215-2pin_3.2x1.5mm" H 6500 4150 50  0001 C CNN
F 3 "" H 6500 4150 50  0001 C CNN
	1    6500 4150
	0    -1   -1   0   
$EndComp
$Comp
L L L1
U 1 1 5A22BA58
P 2550 6500
F 0 "L1" V 2372 6500 50  0000 C CNN
F 1 "5.1n" V 2463 6500 50  0000 C CNN
F 2 "Inductors_SMD:L_0603_HandSoldering" H 2550 6500 50  0001 C CNN
F 3 "" H 2550 6500 50  0001 C CNN
	1    2550 6500
	0    1    1    0   
$EndComp
$Comp
L C C10
U 1 1 5A22BB2C
P 2300 6750
F 0 "C10" H 2415 6796 50  0000 L CNN
F 1 "0.7p" H 2415 6705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2338 6600 50  0001 C CNN
F 3 "" H 2300 6750 50  0001 C CNN
	1    2300 6750
	1    0    0    -1  
$EndComp
$Comp
L C C11
U 1 1 5A22BB66
P 2850 6750
F 0 "C11" H 2965 6796 50  0000 L CNN
F 1 "0.7p" H 2965 6705 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 2888 6600 50  0001 C CNN
F 3 "" H 2850 6750 50  0001 C CNN
	1    2850 6750
	1    0    0    -1  
$EndComp
Connection ~ 2300 6500
Wire Wire Line
	2700 6500 2950 6500
Wire Wire Line
	2300 6500 2300 6600
Connection ~ 2300 7000
Wire Wire Line
	2850 6900 2850 7100
Wire Wire Line
	2850 6500 2850 6600
Connection ~ 2850 6500
Text Label 2950 6500 0    39   ~ 0
ANT
$Comp
L Module_CONN U4
U 1 1 5A22CE47
P 5400 1750
F 0 "U4" H 5400 2547 60  0000 C CNN
F 1 "Module_CONN" H 5400 2441 60  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x12_Pitch2.54mm" H 5400 1750 60  0001 C CNN
F 3 "" H 5400 1750 60  0001 C CNN
	1    5400 1750
	1    0    0    -1  
$EndComp
$Comp
L MKW41Z-RESCUE-beduino_kw41z U5
U 1 1 5A230805
P 8750 4400
F 0 "U5" H 8750 4700 60  0000 C CNN
F 1 "MKW41Z" H 7800 6150 60  0000 C CNN
F 2 "Housings_DFN_QFN:QFN-48-1EP_7x7mm_Pitch0.5mm" H 8750 4400 60  0001 C CNN
F 3 "" H 8750 4400 60  0001 C CNN
	1    8750 4400
	1    0    0    -1  
$EndComp
$Comp
L C C14
U 1 1 5A230963
P 7900 1400
F 0 "C14" H 8015 1446 50  0000 L CNN
F 1 "100n" H 8015 1355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 7938 1250 50  0001 C CNN
F 3 "" H 7900 1400 50  0001 C CNN
	1    7900 1400
	1    0    0    -1  
$EndComp
$Comp
L C C15
U 1 1 5A2309FF
P 8350 1400
F 0 "C15" H 8465 1446 50  0000 L CNN
F 1 "100n" H 8465 1355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8388 1250 50  0001 C CNN
F 3 "" H 8350 1400 50  0001 C CNN
	1    8350 1400
	1    0    0    -1  
$EndComp
$Comp
L C C16
U 1 1 5A230A41
P 8800 1400
F 0 "C16" H 8915 1446 50  0000 L CNN
F 1 "100n" H 8915 1355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 8838 1250 50  0001 C CNN
F 3 "" H 8800 1400 50  0001 C CNN
	1    8800 1400
	1    0    0    -1  
$EndComp
$Comp
L C C17
U 1 1 5A230A83
P 9250 1400
F 0 "C17" H 9365 1446 50  0000 L CNN
F 1 "100n" H 9365 1355 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 9288 1250 50  0001 C CNN
F 3 "" H 9250 1400 50  0001 C CNN
	1    9250 1400
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR026
U 1 1 5A230B2A
P 7900 1150
F 0 "#PWR026" H 7900 1000 50  0001 C CNN
F 1 "+3V3" H 7915 1323 50  0000 C CNN
F 2 "" H 7900 1150 50  0001 C CNN
F 3 "" H 7900 1150 50  0001 C CNN
	1    7900 1150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR027
U 1 1 5A230B5E
P 8350 1150
F 0 "#PWR027" H 8350 1000 50  0001 C CNN
F 1 "+3V3" H 8365 1323 50  0000 C CNN
F 2 "" H 8350 1150 50  0001 C CNN
F 3 "" H 8350 1150 50  0001 C CNN
	1    8350 1150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR028
U 1 1 5A230B8B
P 8800 1150
F 0 "#PWR028" H 8800 1000 50  0001 C CNN
F 1 "+3V3" H 8815 1323 50  0000 C CNN
F 2 "" H 8800 1150 50  0001 C CNN
F 3 "" H 8800 1150 50  0001 C CNN
	1    8800 1150
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR029
U 1 1 5A230BB8
P 9250 1150
F 0 "#PWR029" H 9250 1000 50  0001 C CNN
F 1 "+3V3" H 9265 1323 50  0000 C CNN
F 2 "" H 9250 1150 50  0001 C CNN
F 3 "" H 9250 1150 50  0001 C CNN
	1    9250 1150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR030
U 1 1 5A230C6D
P 7900 1650
F 0 "#PWR030" H 7900 1400 50  0001 C CNN
F 1 "GND" H 7905 1477 50  0000 C CNN
F 2 "" H 7900 1650 50  0001 C CNN
F 3 "" H 7900 1650 50  0001 C CNN
	1    7900 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR031
U 1 1 5A230D00
P 8350 1650
F 0 "#PWR031" H 8350 1400 50  0001 C CNN
F 1 "GND" H 8355 1477 50  0000 C CNN
F 2 "" H 8350 1650 50  0001 C CNN
F 3 "" H 8350 1650 50  0001 C CNN
	1    8350 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 5A230D2D
P 8800 1650
F 0 "#PWR032" H 8800 1400 50  0001 C CNN
F 1 "GND" H 8805 1477 50  0000 C CNN
F 2 "" H 8800 1650 50  0001 C CNN
F 3 "" H 8800 1650 50  0001 C CNN
	1    8800 1650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR033
U 1 1 5A230D5A
P 9250 1650
F 0 "#PWR033" H 9250 1400 50  0001 C CNN
F 1 "GND" H 9255 1477 50  0000 C CNN
F 2 "" H 9250 1650 50  0001 C CNN
F 3 "" H 9250 1650 50  0001 C CNN
	1    9250 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 1150 7900 1250
Wire Wire Line
	8350 1150 8350 1250
Wire Wire Line
	8800 1150 8800 1250
Wire Wire Line
	9250 1150 9250 1250
Wire Wire Line
	9250 1550 9250 1650
Wire Wire Line
	8800 1550 8800 1650
Wire Wire Line
	8350 1550 8350 1650
Wire Wire Line
	7900 1550 7900 1650
Wire Wire Line
	6300 4600 7450 4600
Wire Wire Line
	6500 4300 6500 4400
Wire Wire Line
	6500 4400 7450 4400
Wire Wire Line
	6500 4000 6500 3900
Wire Wire Line
	6500 3900 6700 3900
Wire Wire Line
	6700 3900 6700 4300
Wire Wire Line
	6700 4300 7450 4300
Wire Wire Line
	6300 5100 6700 5100
Wire Wire Line
	6700 5100 6700 4700
Wire Wire Line
	6700 4700 7450 4700
Text Label 6900 3500 0    39   ~ 0
TGT_NRESET
Text Label 6900 3600 0    39   ~ 0
TGT_RX
Text Label 6900 3700 0    39   ~ 0
TGT_TX
Text Label 6900 3300 0    39   ~ 0
TGT_SWDIO
Text Label 6900 3400 0    39   ~ 0
TGT_SWCLK
Wire Wire Line
	6900 3600 7450 3600
Wire Wire Line
	7450 3700 6900 3700
Wire Wire Line
	7450 3500 6900 3500
Wire Wire Line
	6900 3400 7450 3400
Wire Wire Line
	7450 3300 6900 3300
Text Label 7150 4000 0    39   ~ 0
ANT
Text Label 7150 4100 0    39   ~ 0
GANT
Wire Wire Line
	7150 4000 7450 4000
Wire Wire Line
	7450 4100 7150 4100
Wire Wire Line
	2300 6900 2300 7000
Text Label 2950 7000 0    39   ~ 0
GANT
Connection ~ 2850 7000
$Comp
L GND #PWR034
U 1 1 5A232820
P 2850 7100
F 0 "#PWR034" H 2850 6850 50  0001 C CNN
F 1 "GND" H 2855 6927 50  0000 C CNN
F 2 "" H 2850 7100 50  0001 C CNN
F 3 "" H 2850 7100 50  0001 C CNN
	1    2850 7100
	1    0    0    -1  
$EndComp
NoConn ~ 7450 5400
NoConn ~ 7450 5500
NoConn ~ 7450 5200
NoConn ~ 7450 5100
$Comp
L +3V3 #PWR035
U 1 1 5A232CFB
P 7250 5000
F 0 "#PWR035" H 7250 4850 50  0001 C CNN
F 1 "+3V3" V 7265 5128 50  0000 L CNN
F 2 "" H 7250 5000 50  0001 C CNN
F 3 "" H 7250 5000 50  0001 C CNN
	1    7250 5000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7250 5000 7450 5000
$Comp
L GND #PWR036
U 1 1 5A232E00
P 7350 4900
F 0 "#PWR036" H 7350 4650 50  0001 C CNN
F 1 "GND" V 7355 4772 50  0000 R CNN
F 2 "" H 7350 4900 50  0001 C CNN
F 3 "" H 7350 4900 50  0001 C CNN
	1    7350 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	7350 4900 7450 4900
$Comp
L D_Schottky D7
U 1 1 5A2331B9
P 2850 2700
F 0 "D7" H 2850 2484 50  0000 C CNN
F 1 "BAT60A" H 2850 2575 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323" H 2850 2700 50  0001 C CNN
F 3 "" H 2850 2700 50  0001 C CNN
	1    2850 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2500 2700 2700 2700
Wire Wire Line
	3800 3200 3800 3100
Wire Wire Line
	3800 2800 3800 2700
$Comp
L D_Schottky D8
U 1 1 5A233D98
P 3550 2700
F 0 "D8" H 3550 2916 50  0000 C CNN
F 1 "BAT60A" H 3550 2825 50  0000 C CNN
F 2 "Diodes_SMD:D_SOD-323" H 3550 2700 50  0001 C CNN
F 3 "" H 3550 2700 50  0001 C CNN
	1    3550 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 2700 3700 2700
Connection ~ 3200 2700
Wire Wire Line
	1200 3200 3800 3200
Wire Wire Line
	7850 6100 7850 6300
Wire Wire Line
	7850 6200 9550 6200
Wire Wire Line
	9350 6200 9350 6100
Wire Wire Line
	9250 6100 9250 6200
Connection ~ 9250 6200
Wire Wire Line
	9150 6100 9150 6200
Connection ~ 9150 6200
Wire Wire Line
	9050 6100 9050 6200
Connection ~ 9050 6200
Wire Wire Line
	8950 6100 8950 6200
Connection ~ 8950 6200
Wire Wire Line
	8850 6100 8850 6200
Connection ~ 8850 6200
Wire Wire Line
	8750 6100 8750 6200
Connection ~ 8750 6200
Wire Wire Line
	8650 6100 8650 6200
Connection ~ 8650 6200
Wire Wire Line
	8550 6100 8550 6200
Connection ~ 8550 6200
Wire Wire Line
	8450 6100 8450 6200
Connection ~ 8450 6200
Wire Wire Line
	8350 6100 8350 6200
Connection ~ 8350 6200
Wire Wire Line
	8250 6100 8250 6200
Connection ~ 8250 6200
Wire Wire Line
	8150 6100 8150 6200
Connection ~ 8150 6200
Wire Wire Line
	8050 6100 8050 6200
Connection ~ 8050 6200
Wire Wire Line
	7950 6100 7950 6200
Connection ~ 7950 6200
Connection ~ 1200 2700
Wire Wire Line
	1200 3100 1200 3200
$Comp
L LED D5
U 1 1 5A2355D9
P 2450 4450
F 0 "D5" H 2441 4666 50  0000 C CNN
F 1 "Red" H 2441 4575 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 2450 4450 50  0001 C CNN
F 3 "" H 2450 4450 50  0001 C CNN
	1    2450 4450
	1    0    0    -1  
$EndComp
$Comp
L R R14
U 1 1 5A23565E
P 2050 4450
F 0 "R14" V 2257 4450 50  0000 C CNN
F 1 "470" V 2166 4450 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1980 4450 50  0001 C CNN
F 3 "" H 2050 4450 50  0001 C CNN
	1    2050 4450
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 4450 1900 4450
Wire Wire Line
	2300 4450 2200 4450
$Comp
L +3V3 #PWR037
U 1 1 5A235940
P 2700 4350
F 0 "#PWR037" H 2700 4200 50  0001 C CNN
F 1 "+3V3" V 2715 4478 50  0000 L CNN
F 2 "" H 2700 4350 50  0001 C CNN
F 3 "" H 2700 4350 50  0001 C CNN
	1    2700 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 4350 2700 4450
Wire Wire Line
	2700 4450 2600 4450
Wire Wire Line
	8250 2450 8250 2650
Wire Wire Line
	8250 2550 9150 2550
Wire Wire Line
	9150 2550 9150 2650
Wire Wire Line
	8350 2550 8350 2650
Connection ~ 8350 2550
Wire Wire Line
	8450 2550 8450 2650
Connection ~ 8450 2550
Wire Wire Line
	8550 2550 8550 2650
Connection ~ 8550 2550
Wire Wire Line
	8650 2550 8650 2650
Connection ~ 8650 2550
Wire Wire Line
	8750 2550 8750 2650
Connection ~ 8750 2550
Wire Wire Line
	8850 2550 8850 2650
Connection ~ 8850 2550
Wire Wire Line
	8950 2550 8950 2650
Connection ~ 8950 2550
Wire Wire Line
	9050 2550 9050 2650
Connection ~ 9050 2550
$Comp
L +3V3 #PWR038
U 1 1 5A236B1D
P 8250 2450
F 0 "#PWR038" H 8250 2300 50  0001 C CNN
F 1 "+3V3" H 8265 2623 50  0000 C CNN
F 2 "" H 8250 2450 50  0001 C CNN
F 3 "" H 8250 2450 50  0001 C CNN
	1    8250 2450
	1    0    0    -1  
$EndComp
Connection ~ 8250 2550
$Comp
L GND #PWR039
U 1 1 5A236D0D
P 7850 6300
F 0 "#PWR039" H 7850 6050 50  0001 C CNN
F 1 "GND" H 7855 6127 50  0000 C CNN
F 2 "" H 7850 6300 50  0001 C CNN
F 3 "" H 7850 6300 50  0001 C CNN
	1    7850 6300
	1    0    0    -1  
$EndComp
Connection ~ 7850 6200
Wire Wire Line
	9450 6200 9450 6100
Connection ~ 9350 6200
Wire Wire Line
	9550 6200 9550 6100
Connection ~ 9450 6200
$Comp
L R R16
U 1 1 5A237BA2
P 4700 6450
F 0 "R16" H 4770 6496 50  0000 L CNN
F 1 "10k" H 4770 6405 50  0000 L CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 4630 6450 50  0001 C CNN
F 3 "" H 4700 6450 50  0001 C CNN
	1    4700 6450
	1    0    0    -1  
$EndComp
$Comp
L SW_Push SW2
U 1 1 5A237C58
P 4300 6700
F 0 "SW2" H 4300 6985 50  0000 C CNN
F 1 "Reset" H 4300 6894 50  0000 C CNN
F 2 "Buttons_Switches_SMD:SW_SPST_B3S-1100" H 4300 6900 50  0001 C CNN
F 3 "" H 4300 6900 50  0001 C CNN
	1    4300 6700
	1    0    0    -1  
$EndComp
$Comp
L C C13
U 1 1 5A237D36
P 4700 6950
F 0 "C13" H 4815 6996 50  0000 L CNN
F 1 "100n" H 4815 6905 50  0000 L CNN
F 2 "Capacitors_SMD:C_0603_HandSoldering" H 4738 6800 50  0001 C CNN
F 3 "" H 4700 6950 50  0001 C CNN
	1    4700 6950
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR040
U 1 1 5A237E14
P 4000 6800
F 0 "#PWR040" H 4000 6550 50  0001 C CNN
F 1 "GND" H 4005 6627 50  0000 C CNN
F 2 "" H 4000 6800 50  0001 C CNN
F 3 "" H 4000 6800 50  0001 C CNN
	1    4000 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 6800 4000 6700
Wire Wire Line
	4000 6700 4100 6700
Wire Wire Line
	4500 6700 4900 6700
Wire Wire Line
	4700 6600 4700 6800
Connection ~ 4700 6700
$Comp
L GND #PWR041
U 1 1 5A238143
P 4700 7200
F 0 "#PWR041" H 4700 6950 50  0001 C CNN
F 1 "GND" H 4705 7027 50  0000 C CNN
F 2 "" H 4700 7200 50  0001 C CNN
F 3 "" H 4700 7200 50  0001 C CNN
	1    4700 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 7100 4700 7200
$Comp
L +3V3 #PWR042
U 1 1 5A2382ED
P 4700 6200
F 0 "#PWR042" H 4700 6050 50  0001 C CNN
F 1 "+3V3" H 4715 6373 50  0000 C CNN
F 2 "" H 4700 6200 50  0001 C CNN
F 3 "" H 4700 6200 50  0001 C CNN
	1    4700 6200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 6200 4700 6300
Text Label 4900 6700 0    39   ~ 0
TGT_NRESET
Text Label 1800 4450 2    39   ~ 0
LED_Red
Text Label 10050 3700 0    39   ~ 0
LED_Green
Wire Wire Line
	10050 4700 9850 4700
Text Label 5800 1400 0    39   ~ 0
TGT_NRESET
Text Label 5800 1600 0    39   ~ 0
A3
Text Label 5800 1700 0    39   ~ 0
A2
Text Label 5800 1800 0    39   ~ 0
A1
Text Label 5800 1900 0    39   ~ 0
A0
Text Label 5800 2000 0    39   ~ 0
SCK
Text Label 5800 2100 0    39   ~ 0
MISO
Text Label 5800 2200 0    39   ~ 0
MOSI
Text Label 5800 2300 0    39   ~ 0
D10
Text Label 5000 2300 2    39   ~ 0
D9
Text Label 5000 2200 2    39   ~ 0
SCL
Text Label 5000 2100 2    39   ~ 0
SDA
Text Label 5000 2000 2    39   ~ 0
D6
Text Label 5000 1900 2    39   ~ 0
D5
Text Label 5000 1800 2    39   ~ 0
D4
Text Label 5000 1700 2    39   ~ 0
D3
Text Label 5000 1600 2    39   ~ 0
D2
Text Label 5000 1400 2    39   ~ 0
TGT_NRESET
Text Label 5000 1300 2    39   ~ 0
TGT_RX
Text Label 5000 1200 2    39   ~ 0
TGT_TX
Wire Wire Line
	5000 1200 5200 1200
Wire Wire Line
	5200 1300 5000 1300
Wire Wire Line
	5000 1400 5200 1400
Wire Wire Line
	5200 1600 5000 1600
Wire Wire Line
	5000 1700 5200 1700
Wire Wire Line
	5200 1800 5000 1800
Wire Wire Line
	5000 1900 5200 1900
Wire Wire Line
	5200 2000 5000 2000
Wire Wire Line
	5000 2100 5200 2100
Wire Wire Line
	5200 2200 5000 2200
Wire Wire Line
	5000 2300 5200 2300
Wire Wire Line
	5600 2300 5800 2300
Wire Wire Line
	5800 2200 5600 2200
Wire Wire Line
	5600 2100 5800 2100
Wire Wire Line
	5800 2000 5600 2000
Wire Wire Line
	5600 1900 5800 1900
Wire Wire Line
	5800 1800 5600 1800
Wire Wire Line
	5600 1700 5800 1700
Wire Wire Line
	5800 1600 5600 1600
Wire Wire Line
	5600 1400 5800 1400
$Comp
L GND #PWR043
U 1 1 5A23A52F
P 5000 1500
F 0 "#PWR043" H 5000 1250 50  0001 C CNN
F 1 "GND" V 5005 1372 50  0000 R CNN
F 2 "" H 5000 1500 50  0001 C CNN
F 3 "" H 5000 1500 50  0001 C CNN
	1    5000 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	5000 1500 5200 1500
$Comp
L GND #PWR044
U 1 1 5A23A641
P 5800 1300
F 0 "#PWR044" H 5800 1050 50  0001 C CNN
F 1 "GND" V 5805 1172 50  0000 R CNN
F 2 "" H 5800 1300 50  0001 C CNN
F 3 "" H 5800 1300 50  0001 C CNN
	1    5800 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5800 1300 5600 1300
$Comp
L +3V3 #PWR045
U 1 1 5A23A7D3
P 5800 1500
F 0 "#PWR045" H 5800 1350 50  0001 C CNN
F 1 "+3V3" V 5815 1628 50  0000 L CNN
F 2 "" H 5800 1500 50  0001 C CNN
F 3 "" H 5800 1500 50  0001 C CNN
	1    5800 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 1500 5600 1500
$Comp
L VCC #PWR046
U 1 1 5A23A9B1
P 5800 1200
F 0 "#PWR046" H 5800 1050 50  0001 C CNN
F 1 "VCC" V 5817 1328 50  0000 L CNN
F 2 "" H 5800 1200 50  0001 C CNN
F 3 "" H 5800 1200 50  0001 C CNN
	1    5800 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 1200 5600 1200
Text Label 10050 5200 0    39   ~ 0
D2
Text Label 10050 5100 0    39   ~ 0
D3
Text Label 10050 5000 0    39   ~ 0
D4
Text Label 10050 4900 0    39   ~ 0
D5
Text Label 10050 4600 0    39   ~ 0
A0
Text Label 10050 4500 0    39   ~ 0
A1
Text Label 10050 4400 0    39   ~ 0
A2
Text Label 10050 4300 0    39   ~ 0
A3
Text Label 10050 4100 0    39   ~ 0
D9
Text Label 10050 4000 0    39   ~ 0
SCL
Text Label 10050 3900 0    39   ~ 0
SDA
Text Label 10050 3800 0    39   ~ 0
D6
Text Label 10050 3600 0    39   ~ 0
SCK
Text Label 10050 3500 0    39   ~ 0
MOSI
Text Label 10050 3400 0    39   ~ 0
MISO
Text Label 10050 3300 0    39   ~ 0
D10
Wire Wire Line
	9850 3300 10050 3300
Wire Wire Line
	10050 3400 9850 3400
Wire Wire Line
	9850 3500 10050 3500
Wire Wire Line
	10050 3600 9850 3600
Wire Wire Line
	9850 3800 10050 3800
Wire Wire Line
	10050 3900 9850 3900
Wire Wire Line
	9850 4000 10050 4000
Wire Wire Line
	10050 4100 9850 4100
Wire Wire Line
	9850 4300 10050 4300
Wire Wire Line
	10050 4400 9850 4400
Wire Wire Line
	9850 4500 10050 4500
Wire Wire Line
	10050 4600 9850 4600
Wire Wire Line
	9850 4900 10050 4900
Wire Wire Line
	10050 5000 9850 5000
Wire Wire Line
	9850 5100 10050 5100
Wire Wire Line
	10050 5200 9850 5200
Wire Wire Line
	1900 6500 2400 6500
Wire Wire Line
	2000 7000 2950 7000
$Comp
L LED D6
U 1 1 5A23F737
P 2450 5400
F 0 "D6" H 2441 5616 50  0000 C CNN
F 1 "Green" H 2441 5525 50  0000 C CNN
F 2 "LEDs:LED_0603_HandSoldering" H 2450 5400 50  0001 C CNN
F 3 "" H 2450 5400 50  0001 C CNN
	1    2450 5400
	1    0    0    -1  
$EndComp
$Comp
L R R15
U 1 1 5A23F73D
P 2050 5400
F 0 "R15" V 2257 5400 50  0000 C CNN
F 1 "470" V 2166 5400 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 1980 5400 50  0001 C CNN
F 3 "" H 2050 5400 50  0001 C CNN
	1    2050 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1800 5400 1900 5400
Wire Wire Line
	2300 5400 2200 5400
$Comp
L +3V3 #PWR047
U 1 1 5A23F745
P 2700 5300
F 0 "#PWR047" H 2700 5150 50  0001 C CNN
F 1 "+3V3" V 2715 5428 50  0000 L CNN
F 2 "" H 2700 5300 50  0001 C CNN
F 3 "" H 2700 5300 50  0001 C CNN
	1    2700 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 5300 2700 5400
Wire Wire Line
	2700 5400 2600 5400
Text Label 1800 5400 2    39   ~ 0
LED_Green
Text Label 10050 4700 0    39   ~ 0
LED_Red
Wire Wire Line
	9850 3700 10050 3700
NoConn ~ 7450 4500
Text Notes 2450 6900 0    39   ~ 0
DNP
Text Notes 5150 4550 0    59   ~ 0
10pf loading capacitance\nintegrated into the MCU
$Comp
L Jumper_NC_Small JP1
U 1 1 5A2547D3
P 3200 2350
F 0 "JP1" V 3154 2425 50  0000 L CNN
F 1 "Power" V 3245 2425 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 3200 2350 50  0001 C CNN
F 3 "" H 3200 2350 50  0001 C CNN
	1    3200 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	3200 2700 3200 2450
Wire Wire Line
	3200 2250 3200 2150
$Comp
L Crystal_GND24 Y2
U 1 1 5A256482
P 6300 4850
F 0 "Y2" V 6254 5091 50  0000 L CNN
F 1 "32MHz" V 6345 5091 50  0000 L CNN
F 2 "Crystals:Crystal_SMD_3225-4pin_3.2x2.5mm_HandSoldering" H 6300 4850 50  0001 C CNN
F 3 "" H 6300 4850 50  0001 C CNN
	1    6300 4850
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 5100 6300 5000
Wire Wire Line
	6300 4700 6300 4600
Wire Wire Line
	6500 4850 6500 5250
Wire Wire Line
	6500 5250 6100 5250
Wire Wire Line
	6100 5250 6100 4850
$Comp
L GND #PWR048
U 1 1 5A256A71
P 6300 5350
F 0 "#PWR048" H 6300 5100 50  0001 C CNN
F 1 "GND" V 6305 5222 50  0000 R CNN
F 2 "" H 6300 5350 50  0001 C CNN
F 3 "" H 6300 5350 50  0001 C CNN
	1    6300 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 5250 6300 5350
Connection ~ 6300 5250
$Comp
L SWRA117D ANT1
U 1 1 5A257AAD
P 1950 6000
F 0 "ANT1" V 1763 6221 60  0000 C CNN
F 1 "SWRA117D" V 1869 6221 60  0000 C CNN
F 2 "MyAntennas:SWRA117D" H 2150 6000 60  0001 C CNN
F 3 "" H 2150 6000 60  0001 C CNN
	1    1950 6000
	0    -1   1    0   
$EndComp
Wire Wire Line
	1900 6650 2000 6650
Wire Wire Line
	2000 6650 2000 7000
Wire Wire Line
	2650 2700 2650 2800
Connection ~ 2650 2700
Wire Wire Line
	2650 3100 2650 3200
Connection ~ 2650 3200
Wire Wire Line
	3000 2700 3400 2700
Wire Wire Line
	3100 1400 3100 2700
Connection ~ 3100 2700
Wire Wire Line
	3200 2450 3150 2450
Wire Wire Line
	3150 2450 3150 2250
Wire Wire Line
	3150 2250 3200 2250
$EndSCHEMATC
