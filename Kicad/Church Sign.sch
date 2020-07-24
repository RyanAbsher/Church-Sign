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
L power:+3V3 #PWR?
U 1 1 5F1B0AE8
P 5950 2600
F 0 "#PWR?" H 5950 2450 50  0001 C CNN
F 1 "+3V3" H 5965 2773 50  0000 C CNN
F 2 "" H 5950 2600 50  0001 C CNN
F 3 "" H 5950 2600 50  0001 C CNN
	1    5950 2600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F1B0B1F
P 4800 2850
F 0 "#PWR?" H 4800 2600 50  0001 C CNN
F 1 "GND" H 4805 2677 50  0000 C CNN
F 2 "" H 4800 2850 50  0001 C CNN
F 3 "" H 4800 2850 50  0001 C CNN
	1    4800 2850
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:AZ1117-3.3 U?
U 1 1 5F1B0B64
P 3250 2950
F 0 "U?" H 3250 3192 50  0000 C CNN
F 1 "AZ1117-3.3" H 3250 3101 50  0000 C CNN
F 2 "" H 3250 3200 50  0001 C CIN
F 3 "https://www.diodes.com/assets/Datasheets/AZ1117.pdf" H 3250 2950 50  0001 C CNN
	1    3250 2950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F1B0C38
P 2800 3200
F 0 "C?" H 2600 3250 50  0000 L CNN
F 1 "0.1uF" H 2500 3150 50  0000 L CNN
F 2 "" H 2800 3200 50  0001 C CNN
F 3 "~" H 2800 3200 50  0001 C CNN
	1    2800 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F1B0C96
P 3700 3200
F 0 "C?" H 3792 3246 50  0000 L CNN
F 1 "0.1uF" H 3792 3155 50  0000 L CNN
F 2 "" H 3700 3200 50  0001 C CNN
F 3 "~" H 3700 3200 50  0001 C CNN
	1    3700 3200
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x04_Odd_Even J?
U 1 1 5F1B0D93
P 5300 2900
F 0 "J?" H 5350 2600 50  0000 C CNN
F 1 "ESP Header" H 5350 3200 50  0000 C CNN
F 2 "" H 5300 2900 50  0001 C CNN
F 3 "~" H 5300 2900 50  0001 C CNN
	1    5300 2900
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F1B0E71
P 2800 2850
F 0 "#PWR?" H 2800 2700 50  0001 C CNN
F 1 "+5V" H 2815 3023 50  0000 C CNN
F 2 "" H 2800 2850 50  0001 C CNN
F 3 "" H 2800 2850 50  0001 C CNN
	1    2800 2850
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR?
U 1 1 5F1B0E84
P 3700 2850
F 0 "#PWR?" H 3700 2700 50  0001 C CNN
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
L power:GND #PWR?
U 1 1 5F1B0EDB
P 3250 3600
F 0 "#PWR?" H 3250 3350 50  0001 C CNN
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
Wire Wire Line
	5700 3100 5600 3100
Wire Wire Line
	5600 2900 5700 2900
Wire Wire Line
	5700 2900 5700 3000
Wire Wire Line
	5600 3000 5700 3000
Connection ~ 5700 3000
Wire Wire Line
	5700 3000 5700 3100
NoConn ~ 5600 2800
NoConn ~ 5100 3100
Wire Wire Line
	4800 2800 5100 2800
Wire Wire Line
	5950 2600 5950 2900
Wire Wire Line
	5950 2900 5700 2900
Connection ~ 5700 2900
Wire Wire Line
	4800 2800 4800 2850
NoConn ~ 5100 2900
Text Label 4850 3300 2    50   ~ 0
LED_DATA
Wire Wire Line
	4850 3300 5000 3300
Wire Wire Line
	5000 3300 5000 3000
Wire Wire Line
	5000 3000 5100 3000
$Comp
L Connector:Conn_01x03_Male J?
U 1 1 5F1B2BD8
P 7600 2850
F 0 "J?" H 7573 2780 50  0000 R CNN
F 1 "To LEDs" H 7573 2871 50  0000 R CNN
F 2 "" H 7600 2850 50  0001 C CNN
F 3 "~" H 7600 2850 50  0001 C CNN
	1    7600 2850
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F1B2C70
P 7250 2650
F 0 "#PWR?" H 7250 2500 50  0001 C CNN
F 1 "+5V" H 7265 2823 50  0000 C CNN
F 2 "" H 7250 2650 50  0001 C CNN
F 3 "" H 7250 2650 50  0001 C CNN
	1    7250 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F1B2C85
P 7250 3050
F 0 "#PWR?" H 7250 2800 50  0001 C CNN
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
L Connector:Conn_01x02_Male J?
U 1 1 5F1B394A
P 9100 2900
F 0 "J?" H 9073 2780 50  0000 R CNN
F 1 "5V In" H 9073 2871 50  0000 R CNN
F 2 "" H 9100 2900 50  0001 C CNN
F 3 "~" H 9100 2900 50  0001 C CNN
	1    9100 2900
	-1   0    0    1   
$EndComp
$Comp
L power:+5V #PWR?
U 1 1 5F1B39E4
P 8700 2650
F 0 "#PWR?" H 8700 2500 50  0001 C CNN
F 1 "+5V" H 8715 2823 50  0000 C CNN
F 2 "" H 8700 2650 50  0001 C CNN
F 3 "" H 8700 2650 50  0001 C CNN
	1    8700 2650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5F1B39FB
P 8700 3050
F 0 "#PWR?" H 8700 2800 50  0001 C CNN
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
$EndSCHEMATC
