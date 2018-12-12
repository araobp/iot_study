EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:switches
LIBS:relays
LIBS:motors
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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Board for ESP32 and AMG8833"
Date "2018-12-12"
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Conn_01x19 J4
U 1 1 5C10CD6D
P 6950 2450
F 0 "J4" H 6950 3450 50  0000 C CNN
F 1 "Conn_01x19" H 6950 1450 50  0000 C CNN
F 2 "" H 6950 2450 50  0001 C CNN
F 3 "" H 6950 2450 50  0001 C CNN
	1    6950 2450
	1    0    0    -1  
$EndComp
$Comp
L Conn_01x19 J1
U 1 1 5C10CDBC
P 4400 2450
F 0 "J1" H 4400 3450 50  0000 C CNN
F 1 "Conn_01x19" H 4400 1450 50  0000 C CNN
F 2 "" H 4400 2450 50  0001 C CNN
F 3 "" H 4400 2450 50  0001 C CNN
	1    4400 2450
	-1   0    0    -1  
$EndComp
$Comp
L Conn_01x05 J3
U 1 1 5C10CF51
P 5700 5550
F 0 "J3" H 5700 5850 50  0000 C CNN
F 1 "Conn_01x05" H 5700 5250 50  0000 C CNN
F 2 "" H 5700 5550 50  0001 C CNN
F 3 "" H 5700 5550 50  0001 C CNN
	1    5700 5550
	0    1    1    0   
$EndComp
NoConn ~ 5700 5350
$Comp
L R R1
U 1 1 5C10D016
P 4900 2400
F 0 "R1" V 4980 2400 50  0000 C CNN
F 1 "10k" V 4900 2400 50  0000 C CNN
F 2 "" V 4830 2400 50  0001 C CNN
F 3 "" H 4900 2400 50  0001 C CNN
	1    4900 2400
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5C10D043
P 5200 2400
F 0 "R2" V 5280 2400 50  0000 C CNN
F 1 "10k" V 5200 2400 50  0000 C CNN
F 2 "" V 5130 2400 50  0001 C CNN
F 3 "" H 5200 2400 50  0001 C CNN
	1    5200 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 1750 5900 2850
Wire Wire Line
	5900 2850 5900 5350
Wire Wire Line
	6750 2050 5800 2050
Wire Wire Line
	5800 2050 5800 2750
Wire Wire Line
	5800 2750 5800 5350
Wire Wire Line
	4600 1550 4900 1550
Wire Wire Line
	4900 1550 5200 1550
Wire Wire Line
	5200 1550 5500 1550
Wire Wire Line
	5500 1550 5500 5350
Wire Wire Line
	6750 1550 5600 1550
Wire Wire Line
	5600 1550 5600 5100
Wire Wire Line
	5600 5100 5600 5350
Wire Wire Line
	4900 2250 4900 1550
Connection ~ 4900 1550
Wire Wire Line
	5200 2250 5200 1550
Connection ~ 5200 1550
Wire Wire Line
	5200 2550 5200 2750
Wire Wire Line
	5200 2750 5800 2750
Connection ~ 5800 2750
Wire Wire Line
	4900 2550 4900 2850
Wire Wire Line
	4900 2850 5900 2850
Text Notes 7050 1800 0    60   ~ 0
SCL
Text Notes 7050 2100 0    60   ~ 0
SDA
Text Notes 7050 1600 0    60   ~ 0
GND
Text Notes 4100 1600 0    60   ~ 0
3.3V
$Comp
L USB_B J2
U 1 1 5C10D159
P 4800 4550
F 0 "J2" H 4600 5000 50  0000 L CNN
F 1 "USB_B" H 4600 4900 50  0000 L CNN
F 2 "" H 4950 4500 50  0001 C CNN
F 3 "" H 4950 4500 50  0001 C CNN
	1    4800 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 4950 4800 5100
Wire Wire Line
	4800 5100 4800 5650
Wire Wire Line
	4800 5100 5600 5100
Connection ~ 5600 5100
NoConn ~ 4700 4950
NoConn ~ 5100 4550
NoConn ~ 5100 4650
Text Notes 4200 3400 0    60   ~ 0
5V\n
Text Notes 5350 6000 0    60   ~ 0
AMG8833 module\n
Text Notes 3400 1350 0    60   ~ 0
ESP32 WROOM DevKitC left pin headers
Text Notes 6350 1350 0    60   ~ 0
ESP32 WROOM DevKitC right pin headers
$Comp
L Polyfuse F1
U 1 1 5C10D35C
P 5200 3850
F 0 "F1" V 5100 3850 50  0000 C CNN
F 1 "500mA" V 5300 3850 50  0000 C CNN
F 2 "" H 5250 3650 50  0001 L CNN
F 3 "" H 5200 3850 50  0001 C CNN
	1    5200 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4600 3350 5200 3350
Wire Wire Line
	5200 3350 5200 3700
Wire Wire Line
	5200 4000 5200 4350
Wire Wire Line
	5200 4350 5100 4350
Text Notes 5950 5850 1    60   ~ 0
SCL
Text Notes 5850 5850 1    60   ~ 0
SDA
Text Notes 5650 5850 1    60   ~ 0
GND
Text Notes 5550 5850 1    60   ~ 0
3.3V
$Comp
L GND #PWR01
U 1 1 5C10D621
P 4800 5650
F 0 "#PWR01" H 4800 5400 50  0001 C CNN
F 1 "GND" H 4800 5500 50  0000 C CNN
F 2 "" H 4800 5650 50  0001 C CNN
F 3 "" H 4800 5650 50  0001 C CNN
	1    4800 5650
	1    0    0    -1  
$EndComp
Connection ~ 4800 5100
NoConn ~ 4600 1650
NoConn ~ 4600 1750
NoConn ~ 4600 1850
NoConn ~ 4600 1950
NoConn ~ 4600 2050
NoConn ~ 4600 2150
NoConn ~ 4600 2250
NoConn ~ 4600 2350
NoConn ~ 4600 2450
NoConn ~ 4600 2550
NoConn ~ 4600 2650
NoConn ~ 4600 2750
NoConn ~ 4600 2850
NoConn ~ 4600 2950
NoConn ~ 4600 3050
NoConn ~ 4600 3150
NoConn ~ 4600 3250
NoConn ~ 6750 1650
NoConn ~ 6750 1850
NoConn ~ 6750 1950
NoConn ~ 6750 2150
NoConn ~ 6750 2250
NoConn ~ 6750 2350
NoConn ~ 6750 2450
NoConn ~ 6750 2550
NoConn ~ 6750 2650
NoConn ~ 6750 2750
NoConn ~ 6750 2850
NoConn ~ 6750 2950
NoConn ~ 6750 3050
NoConn ~ 6750 3150
NoConn ~ 6750 3250
NoConn ~ 6750 3350
Wire Wire Line
	6750 1750 5900 1750
Connection ~ 5900 2850
Text Notes 2900 4600 0    60   ~ 0
AA x 4 batteris with LDO (6V->5V)
Text Notes 5750 5850 1    60   ~ 0
IO4
$EndSCHEMATC
