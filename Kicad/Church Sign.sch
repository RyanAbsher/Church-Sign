EESchema Schematic File Version 4
LIBS:Church Sign-cache
EELAYER 26 0
EELAYER END
$Descr USLetter 11000 8500
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
L power:+3V3 #PWR0101
U 1 1 5F1B0AE8
P 6250 2600
F 0 "#PWR0101" H 6250 2450 50  0001 C CNN
F 1 "+3V3" H 6265 2773 50  0000 C CNN
F 2 "" H 6250 2600 50  0001 C CNN
F 3 "" H 6250 2600 50  0001 C CNN
	1    6250 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 5F1B0B1F
P 4800 2850
F 0 "#PWR0102" H 4800 2600 50  0001 C CNN
F 1 "GND" H 4805 2677 50  0000 C CNN
F 2 "" H 4800 2850 50  0001 C CNN
F 3 "" H 4800 2850 50  0001 C CNN
	1    4800 2850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AZ1117-3.3 U1
U 1 1 5F1B0B64
P 3250 2950
F 0 "U1" H 3250 3192 50  0000 C CNN
F 1 "AZ1117-3.3" H 3250 3101 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223-3_TabPin2" H 3250 3200 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 3250 2950 50  0001 C CNN
	1    3250 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5F1B0C38
P 2800 3200
F 0 "C1" H 2600 3250 50  0000 L CNN
F 1 "0.1uF" H 2500 3150 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 2800 3200 50  0001 C CNN
F 3 "~" H 2800 3200 50  0001 C CNN
	1    2800 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5F1B0C96
P 3700 3200
F 0 "C2" H 3792 3246 50  0000 L CNN
F 1 "0.1uF" H 3792 3155 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 3700 3200 50  0001 C CNN
F 3 "~" H 3700 3200 50  0001 C CNN
	1    3700 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J1
U 1 1 5F1B0D93
P 5300 2900
F 0 "J1" H 5350 2600 50  0000 C CNN
F 1 "ESP Header" H 5350 3200 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x04_P2.54mm_Vertical" H 5300 2900 50  0001 C CNN
F 3 "~" H 5300 2900 50  0001 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR0103
U 1 1 5F1B0E71
P 2800 2850
F 0 "#PWR0103" H 2800 2700 50  0001 C CNN
F 1 "+5V" H 2815 3023 50  0000 C CNN
F 2 "" H 2800 2850 50  0001 C CNN
F 3 "" H 2800 2850 50  0001 C CNN
	1    2800 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR0104
U 1 1 5F1B0E84
P 3700 2850
F 0 "#PWR0104" H 3700 2700 50  0001 C CNN
F 1 "+3V3" H 3715 3023 50  0000 C CNN
F 2 "" H 3700 2850 50  0001 C CNN
F 3 "" H 3700 2850 50  0001 C CNN
	1    3700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 2850 2800 2950
Wire Wire Line
	3700 2850 3700 2950
Wire Wire Line
	3700 2950 3550 2950
$Comp
L power:GND #PWR0105
U 1 1 5F1B0EDB
P 3250 3600
F 0 "#PWR0105" H 3250 3350 50  0001 C CNN
F 1 "GND" H 3255 3427 50  0000 C CNN
F 2 "" H 3250 3600 50  0001 C CNN
F 3 "" H 3250 3600 50  0001 C CNN
	1    3250 3600
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 3600 3250 3400
Wire Wire Line
	2800 3100 2800 2950
Connection ~ 2800 2950
Wire Wire Line
	2800 3400 3250 3400
Wire Wire Line
	2800 2950 2950 2950
Wire Wire Line
	2800 3300 2800 3400
Connection ~ 3250 3400
Wire Wire Line
	3250 3400 3250 3250
Wire Wire Line
	3700 3100 3700 2950
Connection ~ 3700 2950
Wire Wire Line
	3700 3300 3700 3400
Wire Wire Line
	3700 3400 3250 3400
NoConn ~ 5600 2800
NoConn ~ 5100 3100
Wire Wire Line
	4800 2800 5100 2800
Wire Wire Line
	4800 2800 4800 2850
Text Label 4850 3300 2    50   ~ 0
LED_DATA
Wire Wire Line
	4850 3300 5000 3300
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5F1B2BD8
P 7600 2850
F 0 "J2" H 7573 2780 50  0000 R CNN
F 1 "To LEDs" H 7573 2871 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7600 2850 50  0001 C CNN
F 3 "~" H 7600 2850 50  0001 C CNN
	1    7600 2850
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0106
U 1 1 5F1B2C70
P 7250 2650
F 0 "#PWR0106" H 7250 2500 50  0001 C CNN
F 1 "+5V" H 7265 2823 50  0000 C CNN
F 2 "" H 7250 2650 50  0001 C CNN
F 3 "" H 7250 2650 50  0001 C CNN
	1    7250 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5F1B2C85
P 7250 3050
F 0 "#PWR0107" H 7250 2800 50  0001 C CNN
F 1 "GND" H 7255 2877 50  0000 C CNN
F 2 "" H 7250 3050 50  0001 C CNN
F 3 "" H 7250 3050 50  0001 C CNN
	1    7250 3050
	1    0    0    -1  
$EndComp
Text Label 7150 2850 2    50   ~ 0
LED_DATA
Wire Wire Line
	7150 2850 7400 2850
Wire Wire Line
	7250 2650 7250 2750
Wire Wire Line
	7250 2750 7400 2750
Wire Wire Line
	7250 2950 7400 2950
Wire Wire Line
	7250 2950 7250 3050
$Comp
L Connector:Conn_01x02_Male J3
U 1 1 5F1B394A
P 9100 2900
F 0 "J3" H 9073 2780 50  0000 R CNN
F 1 "5V In" H 9073 2871 50  0000 R CNN
F 2 "Connector_Wire:SolderWirePad_1x02_P3.81mm_Drill1mm" H 9100 2900 50  0001 C CNN
F 3 "~" H 9100 2900 50  0001 C CNN
	1    9100 2900
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR0108
U 1 1 5F1B39E4
P 8700 2650
F 0 "#PWR0108" H 8700 2500 50  0001 C CNN
F 1 "+5V" H 8715 2823 50  0000 C CNN
F 2 "" H 8700 2650 50  0001 C CNN
F 3 "" H 8700 2650 50  0001 C CNN
	1    8700 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5F1B39FB
P 8700 3050
F 0 "#PWR0109" H 8700 2800 50  0001 C CNN
F 1 "GND" H 8705 2877 50  0000 C CNN
F 2 "" H 8700 3050 50  0001 C CNN
F 3 "" H 8700 3050 50  0001 C CNN
	1    8700 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 2800 8900 2800
Wire Wire Line
	8700 2650 8700 2800
Wire Wire Line
	8700 3050 8700 2900
Wire Wire Line
	8700 2900 8900 2900
$Comp
L Device:R_Small R1
U 1 1 5F1B5356
P 6000 2800
F 0 "R1" V 5900 2900 50  0000 C CNN
F 1 "10k" V 5900 2700 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6000 2800 50  0001 C CNN
F 3 "~" H 6000 2800 50  0001 C CNN
	1    6000 2800
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5F1B5524
P 6000 3000
F 0 "R2" V 5900 3100 50  0000 C CNN
F 1 "10k" V 5900 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6000 3000 50  0001 C CNN
F 3 "~" H 6000 3000 50  0001 C CNN
	1    6000 3000
	0    1    1    0   
$EndComp
Wire Wire Line
	6250 2600 6250 2800
Wire Wire Line
	6250 2800 6100 2800
Wire Wire Line
	6250 2800 6250 3000
Wire Wire Line
	6250 3000 6100 3000
Connection ~ 6250 2800
Wire Wire Line
	6250 3000 6250 3100
Wire Wire Line
	6250 3100 5600 3100
Connection ~ 6250 3000
Wire Wire Line
	5900 3000 5600 3000
Wire Wire Line
	5900 2800 5750 2800
Wire Wire Line
	5750 2800 5750 2900
Wire Wire Line
	5750 2900 5600 2900
Wire Wire Line
	5000 2900 5100 2900
Wire Wire Line
	5000 2900 5000 3300
NoConn ~ 5100 3000
$EndSCHEMATC
