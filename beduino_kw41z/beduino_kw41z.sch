EESchema Schematic File Version 3
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:74xgxx
LIBS:ac-dc
LIBS:actel
LIBS:allegro
LIBS:Altera
LIBS:analog_devices
LIBS:battery_management
LIBS:bbd
LIBS:bosch
LIBS:brooktre
LIBS:cmos_ieee
LIBS:dc-dc
LIBS:diode
LIBS:driver_gate
LIBS:elec-unifil
LIBS:ESD_Protection
LIBS:ftdi
LIBS:gennum
LIBS:graphic_symbols
LIBS:hc11
LIBS:infineon
LIBS:intersil
LIBS:ir
LIBS:Lattice
LIBS:leds
LIBS:LEM
LIBS:logic_programmable
LIBS:maxim
LIBS:mechanical
LIBS:microchip_dspic33dsc
LIBS:microchip_pic10mcu
LIBS:microchip_pic12mcu
LIBS:microchip_pic16mcu
LIBS:microchip_pic18mcu
LIBS:microchip_pic24mcu
LIBS:microchip_pic32mcu
LIBS:modules
LIBS:motor_drivers
LIBS:motors
LIBS:msp430
LIBS:nordicsemi
LIBS:nxp
LIBS:nxp_armmcu
LIBS:nxp_kinetis
LIBS:nxp_s08
LIBS:onsemi
LIBS:Oscillators
LIBS:powerint
LIBS:Power_Management
LIBS:pspice
LIBS:references
LIBS:relays
LIBS:rfcom
LIBS:RFSolutions
LIBS:sensors
LIBS:silabs
LIBS:stm8
LIBS:stm32
LIBS:supertex
LIBS:switches
LIBS:transf
LIBS:triac_thyristor
LIBS:ttl_ieee
LIBS:video
LIBS:wiznet
LIBS:Worldsemi
LIBS:Xicor
LIBS:zetex
LIBS:Zilog
LIBS:beduino_regul
LIBS:beduino_nxp
LIBS:beduino_conn
LIBS:beduino_kw41z-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 3
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Sheet
S 2300 1650 1450 1450
U 5A1F12CA
F0 "DIPDAP" 60
F1 "dipdap.sch" 60
F2 "TGT_NRESET" O R 3750 2300 39 
F3 "TGT_SWCLK" O R 3750 2500 39 
F4 "TGT_SWDIO" B R 3750 2400 39 
F5 "TGT_TX" I R 3750 2600 39 
F6 "TGT_RX" O R 3750 2700 39 
$EndSheet
$Sheet
S 4350 1650 1450 1450
U 5A211143
F0 "KW41Z" 59
F1 "kw41z.sch" 59
F2 "TGT_NRESET" I L 4350 2300 39 
F3 "TGT_SWDIO" B L 4350 2400 39 
F4 "TGT_SWCLK" I L 4350 2500 39 
F5 "TGT_RX" I L 4350 2700 39 
F6 "TGT_TX" O L 4350 2600 39 
$EndSheet
Wire Wire Line
	3750 2300 4350 2300
Wire Wire Line
	4350 2400 3750 2400
Wire Wire Line
	3750 2500 4350 2500
Wire Wire Line
	4350 2600 3750 2600
Wire Wire Line
	3750 2700 4350 2700
$EndSCHEMATC
