EESchema Schematic File Version 4
LIBS:greenhouse_atmega328-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MCU_Microchip_ATmega:ATmega328P-PU U2
U 1 1 5BC38370
P 6150 3550
F 0 "U2" H 5509 3596 50  0000 R CNN
F 1 "ATmega328P-PU" H 5509 3505 50  0000 R CNN
F 2 "Package_DIP:DIP-28_W7.62mm" H 6150 3550 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf" H 6150 3550 50  0001 C CNN
	1    6150 3550
	1    0    0    -1  
$EndComp
$Comp
L RF_AM_FM:RFM95W-868S2 U3
U 1 1 5BC3850E
P 8900 1800
F 0 "U3" H 8900 2478 50  0000 C CNN
F 1 "RFM95W-868S2" H 8900 2387 50  0000 C CNN
F 2 "" H 5600 3450 50  0001 C CNN
F 3 "http://www.hoperf.com/upload/rf/RFM95_96_97_98W.pdf" H 5600 3450 50  0001 C CNN
	1    8900 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5BC38575
P 6150 5050
F 0 "#PWR04" H 6150 4800 50  0001 C CNN
F 1 "GND" H 6155 4877 50  0000 C CNN
F 2 "" H 6150 5050 50  0001 C CNN
F 3 "" H 6150 5050 50  0001 C CNN
	1    6150 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR08
U 1 1 5BC3859B
P 8900 2550
F 0 "#PWR08" H 8900 2300 50  0001 C CNN
F 1 "GND" H 8905 2377 50  0000 C CNN
F 2 "" H 8900 2550 50  0001 C CNN
F 3 "" H 8900 2550 50  0001 C CNN
	1    8900 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5BC385C8
P 6150 1800
F 0 "#PWR03" H 6150 1650 50  0001 C CNN
F 1 "+5V" H 6165 1973 50  0000 C CNN
F 2 "" H 6150 1800 50  0001 C CNN
F 3 "" H 6150 1800 50  0001 C CNN
	1    6150 1800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1800 6150 2050
Wire Wire Line
	6150 2050 6250 2050
Connection ~ 6150 2050
$Comp
L Device:Crystal Y1
U 1 1 5BC38912
P 1750 2850
F 0 "Y1" V 1704 2981 50  0000 L CNN
F 1 "Crystal" V 1795 2981 50  0000 L CNN
F 2 "Crystal:Crystal_HC49-U_Vertical" H 1750 2850 50  0001 C CNN
F 3 "~" H 1750 2850 50  0001 C CNN
	1    1750 2850
	0    1    1    0   
$EndComp
$Comp
L Device:C C3
U 1 1 5BC389A8
P 2300 2600
F 0 "C3" V 2048 2600 50  0000 C CNN
F 1 "22pf" V 2139 2600 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D6<<.0mm_W2.5mm_P5.00mm" H 2338 2450 50  0001 C CNN
F 3 "~" H 2300 2600 50  0001 C CNN
	1    2300 2600
	0    1    1    0   
$EndComp
$Comp
L Device:C C4
U 1 1 5BC38AF0
P 2300 3050
F 0 "C4" V 2048 3050 50  0000 C CNN
F 1 "22pf " V 2139 3050 50  0000 C CNN
F 2 "Capacitor_THT:C_Disc_D6<<.0mm_W2.5mm_P5.00mm" H 2338 2900 50  0001 C CNN
F 3 "~" H 2300 3050 50  0001 C CNN
	1    2300 3050
	0    1    1    0   
$EndComp
Wire Wire Line
	1750 2700 2150 2700
Wire Wire Line
	2150 2700 2150 2600
Wire Wire Line
	1750 3000 2150 3000
Wire Wire Line
	2150 3000 2150 3050
Text Label 2450 2600 0    50   ~ 0
XTAL1
Text Label 2450 3050 0    50   ~ 0
XTAL2
Text Label 6750 3050 0    50   ~ 0
XTAL2
$Comp
L Regulator_Linear:L7805 U1
U 1 1 5BC38CD9
P 2250 1300
F 0 "U1" H 2250 1542 50  0000 C CNN
F 1 "L7805" H 2250 1451 50  0000 C CNN
F 2 "Package_TO_SOT_THT:TO-220-3_Vertical" H 2275 1150 50  0001 L CIN
F 3 "http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf" H 2250 1250 50  0001 C CNN
	1    2250 1300
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 5BC38D6F
P 2050 1600
F 0 "#PWR01" H 2050 1350 50  0001 C CNN
F 1 "GND" H 2055 1427 50  0000 C CNN
F 2 "" H 2050 1600 50  0001 C CNN
F 3 "" H 2050 1600 50  0001 C CNN
	1    2050 1600
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5BC38DE3
P 1800 1450
F 0 "C1" H 1918 1496 50  0000 L CNN
F 1 "100" H 1918 1405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 1838 1300 50  0001 C CNN
F 3 "~" H 1800 1450 50  0001 C CNN
	1    1800 1450
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5BC38E37
P 2650 1450
F 0 "C2" H 2768 1496 50  0000 L CNN
F 1 "100" H 2768 1405 50  0000 L CNN
F 2 "Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm" H 2688 1300 50  0001 C CNN
F 3 "~" H 2650 1450 50  0001 C CNN
	1    2650 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	2550 1300 2650 1300
Wire Wire Line
	2650 1600 2250 1600
Connection ~ 2250 1600
Wire Wire Line
	1800 1600 2050 1600
Wire Wire Line
	2800 1300 2650 1300
Connection ~ 2650 1300
Text Label 9400 2200 0    50   ~ 0
D2
Text Label 6750 4250 0    50   ~ 0
D2
Text Label 9400 2100 0    50   ~ 0
D3
Text Label 6750 4350 0    50   ~ 0
D3
$Comp
L power:+3.3V #PWR07
U 1 1 5BC3AFBA
P 8900 950
F 0 "#PWR07" H 8900 800 50  0001 C CNN
F 1 "+3.3V" H 8915 1123 50  0000 C CNN
F 2 "" H 8900 950 50  0001 C CNN
F 3 "" H 8900 950 50  0001 C CNN
	1    8900 950 
	1    0    0    -1  
$EndComp
NoConn ~ 9400 1700
NoConn ~ 9400 1800
NoConn ~ 9400 1900
NoConn ~ 9400 2000
NoConn ~ 9000 2400
NoConn ~ 8800 2400
NoConn ~ 6750 3250
NoConn ~ 6750 3350
NoConn ~ 6750 3450
NoConn ~ 6750 3550
NoConn ~ 6750 3850
NoConn ~ 6750 4050
NoConn ~ 6750 4150
NoConn ~ 6750 4450
NoConn ~ 6750 4650
NoConn ~ 6750 4750
Text Label 8400 2000 2    50   ~ 0
D5
Text Label 8400 1500 2    50   ~ 0
D10
Text Label 6750 2550 0    50   ~ 0
D10
Text Label 8400 1600 2    50   ~ 0
D11
Text Label 8400 1700 2    50   ~ 0
D12
Text Label 8400 1800 2    50   ~ 0
D13
Text Label 6750 2650 0    50   ~ 0
D11
Text Label 6750 2750 0    50   ~ 0
D12
Text Label 6750 2850 0    50   ~ 0
D13
Text Label 6750 2950 0    50   ~ 0
XTAL1
NoConn ~ 6750 2350
NoConn ~ 6750 2450
NoConn ~ 5550 2350
Text Label 6750 4550 0    50   ~ 0
D5
$Comp
L Connector:Conn_01x01_Female J1
U 1 1 5BC482E8
P 1600 1300
F 0 "J1" H 1494 1075 50  0000 C CNN
F 1 "Input" H 1494 1166 50  0000 C CNN
F 2 "Connector_Pin:Pin_D1.3mm_L10.0mm_W3.5mm_Flat" H 1600 1300 50  0001 C CNN
F 3 "~" H 1600 1300 50  0001 C CNN
	1    1600 1300
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x01_Female J3
U 1 1 5BC4833E
P 3000 1300
F 0 "J3" H 3028 1326 50  0000 L CNN
F 1 "Output" H 3028 1235 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.3mm_L10.0mm_W3.5mm_Flat" H 3000 1300 50  0001 C CNN
F 3 "~" H 3000 1300 50  0001 C CNN
	1    3000 1300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x01_Female J2
U 1 1 5BC483E4
P 2250 1800
F 0 "J2" V 2097 1848 50  0000 L CNN
F 1 "Gnd" V 2188 1848 50  0000 L CNN
F 2 "Connector_Pin:Pin_D1.3mm_L10.0mm_W3.5mm_Flat" H 2250 1800 50  0001 C CNN
F 3 "~" H 2250 1800 50  0001 C CNN
	1    2250 1800
	0    1    1    0   
$EndComp
$Comp
L Device:Antenna AE1
U 1 1 5BC4AC67
P 9400 1300
F 0 "AE1" H 9480 1291 50  0000 L CNN
F 1 "Antenna" H 9480 1200 50  0000 L CNN
F 2 "" H 9400 1300 50  0001 C CNN
F 3 "~" H 9400 1300 50  0001 C CNN
	1    9400 1300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR02
U 1 1 5BC4ACEE
P 2800 1300
F 0 "#PWR02" H 2800 1150 50  0001 C CNN
F 1 "+5V" H 2815 1473 50  0000 C CNN
F 2 "" H 2800 1300 50  0001 C CNN
F 3 "" H 2800 1300 50  0001 C CNN
	1    2800 1300
	1    0    0    -1  
$EndComp
Connection ~ 2800 1300
Wire Wire Line
	8900 2400 8900 2550
Wire Wire Line
	8900 1300 8900 950 
Connection ~ 2050 1600
Wire Wire Line
	2050 1600 2250 1600
Wire Wire Line
	1800 1300 1950 1300
Connection ~ 1800 1300
$Comp
L Connector_Generic:Conn_01x04 J4
U 1 1 5BC5203E
P 7650 4100
F 0 "J4" H 7730 4092 50  0000 L CNN
F 1 "Conn_01x04" H 7730 4001 50  0000 L CNN
F 2 "" H 7650 4100 50  0001 C CNN
F 3 "~" H 7650 4100 50  0001 C CNN
	1    7650 4100
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR05
U 1 1 5BC521EA
P 7550 4300
F 0 "#PWR05" H 7550 4150 50  0001 C CNN
F 1 "+3.3V" V 7565 4428 50  0000 L CNN
F 2 "" H 7550 4300 50  0001 C CNN
F 3 "" H 7550 4300 50  0001 C CNN
	1    7550 4300
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5BC52254
P 7650 4300
F 0 "#PWR06" H 7650 4050 50  0001 C CNN
F 1 "GND" V 7655 4172 50  0000 R CNN
F 2 "" H 7650 4300 50  0001 C CNN
F 3 "" H 7650 4300 50  0001 C CNN
	1    7650 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 4300 7850 3650
Wire Wire Line
	7850 3650 6750 3650
Wire Wire Line
	7750 4300 7750 3750
Wire Wire Line
	7750 3750 6750 3750
Text Notes 1400 3850 2    50   ~ 0
GND
Text Notes 1400 3950 2    50   ~ 0
VCC
Text Notes 1450 4150 2    50   ~ 0
A2 DATA (DS1820)
Text Notes 1450 4250 2    50   ~ 0
DATA - A2 (SR04T)
$Comp
L Connector_Generic_MountingPin:Conn_01x06_MountingPin J?
U 1 1 5BD351E9
P 7100 1100
F 0 "J?" H 7187 1016 50  0000 L CNN
F 1 "Conn_01x06_MountingPin" H 7187 925 50  0000 L CNN
F 2 "" H 7100 1100 50  0001 C CNN
F 3 "~" H 7100 1100 50  0001 C CNN
	1    7100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5BD356D0
P 6200 900
F 0 "#PWR?" H 6200 650 50  0001 C CNN
F 1 "GND" H 6205 727 50  0000 C CNN
F 2 "" H 6200 900 50  0001 C CNN
F 3 "" H 6200 900 50  0001 C CNN
	1    6200 900 
	1    0    0    -1  
$EndComp
Text Label 6900 1000 2    50   ~ 0
CTS#
Text Label 6900 1200 2    50   ~ 0
TXD
Text Label 6900 1300 2    50   ~ 0
RXD
Text Label 6900 1400 2    50   ~ 0
RTS#
$Comp
L RF_Module:ESP-12E U?
U 1 1 5BD438DA
P 3600 5800
F 0 "U?" H 3600 6778 50  0000 C CNN
F 1 "ESP-12E" H 3600 6687 50  0000 C CNN
F 2 "RF_Module:ESP-12E" H 3600 5800 50  0001 C CNN
F 3 "http://wiki.ai-thinker.com/_media/esp8266/esp8266_series_modules_user_manual_v1.1.pdf" H 3250 5900 50  0001 C CNN
	1    3600 5800
	1    0    0    -1  
$EndComp
$Comp
L Sensor_Temperature:DS18B20 U?
U 1 1 5BD43976
P 1250 5100
F 0 "U?" H 1020 5146 50  0000 R CNN
F 1 "DS18B20" H 1020 5055 50  0000 R CNN
F 2 "Package_TO_SOT_THT:TO-92_Inline" H 250 4850 50  0001 C CNN
F 3 "http://datasheets.maximintegrated.com/en/ds/DS18B20.pdf" H 1100 5350 50  0001 C CNN
	1    1250 5100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_01x03 J?
U 1 1 5BD43D12
P 2100 5050
F 0 "J?" H 2180 5092 50  0000 L CNN
F 1 "Conn_01x03" H 2180 5001 50  0000 L CNN
F 2 "" H 2100 5050 50  0001 C CNN
F 3 "~" H 2100 5050 50  0001 C CNN
	1    2100 5050
	1    0    0    -1  
$EndComp
$EndSCHEMATC
