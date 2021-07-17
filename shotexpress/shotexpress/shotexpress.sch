EESchema Schematic File Version 4
EELAYER 30 0
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
Text GLabel 2400 2100 0    50   Input ~ 0
Gleis1
Text GLabel 2400 2500 0    50   Input ~ 0
Gleis2
$Comp
L Diode_Bridge:ABS2 D
U 1 1 60F31C28
P 3850 1950
F 0 "D" H 4000 2300 50  0000 L CNN
F 1 "FBR" H 4000 2200 50  0000 L CNN
F 2 "Diode_SMD:Diode_Bridge_Diotec_ABS" H 4000 2075 50  0001 L CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/abs2.pdf" H 3850 1950 50  0001 C CNN
	1    3850 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1950 4250 1950
Text GLabel 4250 1950 2    50   Input ~ 0
L+
$Comp
L Regulator_Switching:TPS613221ADBV U
U 1 1 60F3FF51
P 7400 1850
F 0 "U" H 7400 2217 50  0000 C CNN
F 1 "Boost Converter 3.7V to 5V" H 7400 2126 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 7400 1050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps61322.pdf" H 7400 1700 50  0001 C CNN
	1    7400 1850
	1    0    0    -1  
$EndComp
Text GLabel 7000 1750 0    50   Input ~ 0
Bat+
$Comp
L Regulator_Switching:TPS613221ADBV U
U 1 1 60F425E1
P 7400 2800
F 0 "U" H 7400 3167 50  0000 C CNN
F 1 "Boost Converter 3.7V to 14V" H 7400 3076 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 7400 2000 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps61322.pdf" H 7400 2650 50  0001 C CNN
	1    7400 2800
	1    0    0    -1  
$EndComp
Text GLabel 7000 2700 0    50   Input ~ 0
Bat+
$Comp
L power:Earth #PWR?
U 1 1 60F44F54
P 7400 2150
F 0 "#PWR?" H 7400 1900 50  0001 C CNN
F 1 "Earth" H 7400 2000 50  0001 C CNN
F 2 "" H 7400 2150 50  0001 C CNN
F 3 "~" H 7400 2150 50  0001 C CNN
	1    7400 2150
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60F45265
P 7400 3100
F 0 "#PWR?" H 7400 2850 50  0001 C CNN
F 1 "Earth" H 7400 2950 50  0001 C CNN
F 2 "" H 7400 3100 50  0001 C CNN
F 3 "~" H 7400 3100 50  0001 C CNN
	1    7400 3100
	1    0    0    -1  
$EndComp
Text GLabel 7800 1750 2    50   Input ~ 0
5V
Text GLabel 7800 2700 2    50   Input ~ 0
12V
$Comp
L L298N:L298N U?
U 1 1 60FABD41
P 5900 4850
F 0 "U?" H 5900 5715 50  0000 C CNN
F 1 "L298N" H 5900 5624 50  0000 C CNN
F 2 "TO127P2020X500X2100-15" H 5900 4850 50  0001 L BNN
F 3 "" H 5900 4850 50  0001 L BNN
F 4 "IPC-7351B" H 5900 4850 50  0001 L BNN "STANDARD"
F 5 "5.0mm" H 5900 4850 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "STMicroelectronics" H 5900 4850 50  0001 L BNN "MANUFACTURER"
F 7 "" H 5900 4850 50  0001 L BNN "PARTREV"
	1    5900 4850
	1    0    0    -1  
$EndComp
$Comp
L ESP32-CAM:ESP32-CAM U?
U 1 1 60FAD0DD
P 9100 5050
F 0 "U?" H 9100 5825 50  0000 C CNN
F 1 "ESP32-CAM" H 9100 5050 50  0001 L BNN
F 2 "ESP32-CAM" H 9100 5050 50  0001 L BNN
F 3 "" H 9100 5050 50  0001 L BNN
	1    9100 5050
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60FB554F
P 6600 5350
F 0 "#PWR?" H 6600 5100 50  0001 C CNN
F 1 "Earth" H 6600 5200 50  0001 C CNN
F 2 "" H 6600 5350 50  0001 C CNN
F 3 "~" H 6600 5350 50  0001 C CNN
	1    6600 5350
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60FB5C5F
P 9700 5150
F 0 "#PWR?" H 9700 4900 50  0001 C CNN
F 1 "Earth" H 9700 5000 50  0001 C CNN
F 2 "" H 9700 5150 50  0001 C CNN
F 3 "~" H 9700 5150 50  0001 C CNN
	1    9700 5150
	1    0    0    -1  
$EndComp
Text GLabel 5200 4850 0    50   Input ~ 0
Motor_fwd
Text GLabel 5200 4950 0    50   Input ~ 0
Motor_rev
Text GLabel 5200 5050 0    50   Input ~ 0
Gleis+
Text GLabel 5200 5150 0    50   Input ~ 0
Gleis-
$Comp
L Motor:Motor_DC M?
U 1 1 60F739D0
P 6950 4650
F 0 "M?" H 7108 4646 50  0000 L CNN
F 1 "Motor_DC" H 7108 4555 50  0000 L CNN
F 2 "" H 6950 4560 50  0001 C CNN
F 3 "~" H 6950 4560 50  0001 C CNN
	1    6950 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	6600 4850 6750 4850
Wire Wire Line
	6750 4450 6950 4450
Text GLabel 8500 4650 0    50   Input ~ 0
Motor_fwd
Text GLabel 8500 4750 0    50   Input ~ 0
Motor_rev
Text GLabel 8500 4950 0    50   Input ~ 0
Gleis-
Text GLabel 8500 4850 0    50   Input ~ 0
Gleis+
Wire Wire Line
	6600 4950 6950 4950
Wire Wire Line
	6750 4850 6750 4450
$Comp
L Relay:IM00 K?
U 1 1 60FAF7FD
P 2700 2100
F 0 "K?" V 1933 2100 50  0000 C CNN
F 1 "Relay NA5W-K DPDT" V 2024 2100 50  0000 C CNN
F 2 "" H 2700 2100 50  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=108-98001&DocType=SS&DocLang=EN" H 2700 2100 50  0001 C CNN
	1    2700 2100
	0    1    1    0   
$EndComp
Wire Wire Line
	3000 2400 3850 2400
Wire Wire Line
	3850 2250 3850 2400
Wire Wire Line
	3850 1650 3850 1550
Text GLabel 6600 5150 2    50   Input ~ 0
H_OUT4
Text GLabel 6600 5050 2    50   Input ~ 0
H_OUT3
Text GLabel 3000 2600 2    50   Input ~ 0
H_OUT4
Text GLabel 3000 2200 2    50   Input ~ 0
H_OUT3
Wire Wire Line
	2050 1700 2200 1700
Wire Wire Line
	2200 1700 2200 1150
Wire Wire Line
	2200 1150 2550 1150
Connection ~ 2200 1700
Wire Wire Line
	2200 1700 2400 1700
$Comp
L Diode:1N914WT D
U 1 1 6101DFFC
P 2700 1150
F 0 "D" H 2700 933 50  0000 C CNN
F 1 "Diode" H 2700 1024 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 2700 975 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/149/1N4148WT-461550.pdf" H 2700 1150 50  0001 C CNN
	1    2700 1150
	-1   0    0    1   
$EndComp
Wire Wire Line
	3000 1700 3150 1700
Wire Wire Line
	3150 1700 3150 1150
Wire Wire Line
	3150 1150 2850 1150
Wire Wire Line
	3150 1150 3400 1150
Connection ~ 3150 1150
Text GLabel 3400 1150 2    50   Input ~ 0
5V
$Comp
L power:Earth #PWR?
U 1 1 6103639B
P 1450 1700
F 0 "#PWR?" H 1450 1450 50  0001 C CNN
F 1 "Earth" H 1450 1550 50  0001 C CNN
F 2 "" H 1450 1700 50  0001 C CNN
F 3 "~" H 1450 1700 50  0001 C CNN
	1    1450 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1700 1650 1700
Text GLabel 1350 1400 0    50   Input ~ 0
ESP_Relay
Text GLabel 3550 1950 0    50   Input ~ 0
L-
Wire Wire Line
	3250 2000 3250 1550
Wire Wire Line
	3250 1550 3850 1550
Wire Wire Line
	3000 2000 3250 2000
$Comp
L Device:Q_NPN_BCE Q
U 1 1 61018A35
P 1850 1600
F 0 "Q" V 2085 1600 50  0000 C CNN
F 1 "BC338-25" V 2176 1600 50  0000 C CNN
F 2 "" H 2050 1700 50  0001 C CNN
F 3 "~" H 1850 1600 50  0001 C CNN
	1    1850 1600
	0    1    1    0   
$EndComp
$Comp
L Device:R R
U 1 1 610538E6
P 1450 1550
F 0 "R" H 1520 1596 50  0000 L CNN
F 1 "10k" H 1520 1505 50  0000 L CNN
F 2 "" V 1380 1550 50  0001 C CNN
F 3 "~" H 1450 1550 50  0001 C CNN
	1    1450 1550
	1    0    0    -1  
$EndComp
Connection ~ 1450 1700
Wire Wire Line
	1350 1400 1450 1400
Connection ~ 1450 1400
Wire Wire Line
	1450 1400 1850 1400
Wire Wire Line
	5200 4550 5200 4650
Text GLabel 6650 4250 2    50   Input ~ 0
5V
Text GLabel 6650 4350 2    50   Input ~ 0
14V
Wire Wire Line
	5200 4550 5200 3900
Wire Wire Line
	5200 3900 6600 3900
Wire Wire Line
	6600 3900 6600 4250
Connection ~ 5200 4550
Wire Wire Line
	6600 4250 6650 4250
Connection ~ 6600 4250
Wire Wire Line
	6600 4350 6650 4350
Text Notes 4900 4550 0    50   ~ 0
Jumper
Wire Wire Line
	1950 4950 2150 4950
Wire Wire Line
	2900 4950 3050 4950
Wire Wire Line
	2450 4950 2600 4950
$Comp
L Device:R R
U 1 1 610BD883
P 2750 4950
F 0 "R" V 2543 4950 50  0000 C CNN
F 1 "R" V 2634 4950 50  0000 C CNN
F 2 "" V 2680 4950 50  0001 C CNN
F 3 "~" H 2750 4950 50  0001 C CNN
	1    2750 4950
	0    1    1    0   
$EndComp
Text GLabel 3050 4950 2    50   Output ~ 0
5V
$Comp
L Device:LED D
U 1 1 6108F1B3
P 2300 4950
F 0 "D" H 2293 5167 50  0000 C CNN
F 1 "Scheinwerfer 5V" H 2293 5076 50  0000 C CNN
F 2 "" H 2300 4950 50  0001 C CNN
F 3 "~" H 2300 4950 50  0001 C CNN
	1    2300 4950
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60FEB884
P 1950 4950
F 0 "#PWR?" H 1950 4700 50  0001 C CNN
F 1 "Earth" H 1950 4800 50  0001 C CNN
F 2 "" H 1950 4950 50  0001 C CNN
F 3 "~" H 1950 4950 50  0001 C CNN
	1    1950 4950
	1    0    0    -1  
$EndComp
Text GLabel 1600 4100 0    50   Output ~ 0
L-
Text GLabel 1600 3800 0    50   Output ~ 0
L+
Wire Wire Line
	2800 3400 2850 3400
$Comp
L power:Earth #PWR?
U 1 1 60F72A3D
P 2800 3400
F 0 "#PWR?" H 2800 3150 50  0001 C CNN
F 1 "Earth" H 2800 3250 50  0001 C CNN
F 2 "" H 2800 3400 50  0001 C CNN
F 3 "~" H 2800 3400 50  0001 C CNN
	1    2800 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3300 2500 3800
Wire Wire Line
	2800 3900 2500 3900
Wire Wire Line
	2500 4000 3600 4000
$Comp
L power:Earth #PWR?
U 1 1 60FBA67E
P 2500 4100
F 0 "#PWR?" H 2500 3850 50  0001 C CNN
F 1 "Earth" H 2500 3950 50  0001 C CNN
F 2 "" H 2500 4100 50  0001 C CNN
F 3 "~" H 2500 4100 50  0001 C CNN
	1    2500 4100
	1    0    0    -1  
$EndComp
$Comp
L shotLib:BatteryManager U
U 1 1 60FAA81A
P 2050 3700
F 0 "U" H 2050 3825 50  0000 C CNN
F 1 "BatteryManager" H 2050 3734 50  0000 C CNN
F 2 "" H 2050 3750 50  0001 C CNN
F 3 "" H 2050 3750 50  0001 C CNN
	1    2050 3700
	1    0    0    -1  
$EndComp
Text GLabel 3250 3400 2    50   Input ~ 0
5V
Wire Wire Line
	2850 3300 2500 3300
$Comp
L Switch:SW_DPST_x2 SW
U 1 1 60F81CD5
P 3000 3900
F 0 "SW" H 3000 4135 50  0000 C CNN
F 1 "Reset_SW" H 3000 4044 50  0000 C CNN
F 2 "" H 3000 3900 50  0001 C CNN
F 3 "~" H 3000 3900 50  0001 C CNN
	1    3000 3900
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST_LED SW
U 1 1 60F8084A
P 3050 3400
F 0 "SW" H 3050 3735 50  0000 C CNN
F 1 "Power_SW" H 3050 3644 50  0000 C CNN
F 2 "" H 3050 3700 50  0001 C CNN
F 3 "~" H 3050 3700 50  0001 C CNN
	1    3050 3400
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT?
U 1 1 60F3B20D
P 3400 3900
F 0 "BT?" V 3650 3900 50  0000 C CNN
F 1 "Battery" V 3550 3900 50  0000 C CNN
F 2 "" V 3400 3960 50  0001 C CNN
F 3 "~" V 3400 3960 50  0001 C CNN
	1    3400 3900
	0    -1   -1   0   
$EndComp
Text GLabel 3250 3300 2    50   Input ~ 0
Bat+
Wire Wire Line
	3600 4000 3600 3900
Text GLabel 8500 4450 0    50   Input ~ 0
5V
Text GLabel 9700 4950 2    50   Input ~ 0
GPIO
Text GLabel 9700 5050 2    50   Input ~ 0
GPIO
$EndSCHEMATC
