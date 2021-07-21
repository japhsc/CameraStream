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
Text GLabel 2750 2450 0    50   Input ~ 0
GLEIS_1
Text GLabel 2750 2850 0    50   Input ~ 0
GLEIS_2
$Comp
L Diode_Bridge:ABS2 D?
U 1 1 60F31C28
P 4200 2300
F 0 "D?" H 4350 2650 50  0000 L CNN
F 1 "FBR" H 4350 2550 50  0000 L CNN
F 2 "Diode_SMD:Diode_Bridge_Diotec_ABS" H 4350 2425 50  0001 L CNN
F 3 "https://diotec.com/tl_files/diotec/files/pdf/datasheets/abs2.pdf" H 4200 2300 50  0001 C CNN
	1    4200 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 2300 4600 2300
Text GLabel 4600 2300 2    50   Input ~ 0
L+
$Comp
L Regulator_Switching:TPS613221ADBV U?
U 1 1 60F3FF51
P 6300 1700
F 0 "U?" H 6300 2067 50  0000 C CNN
F 1 "Boost Converter 3.7V to 5V" H 6300 1976 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 6300 900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps61322.pdf" H 6300 1550 50  0001 C CNN
	1    6300 1700
	1    0    0    -1  
$EndComp
Text GLabel 5900 1600 0    50   Input ~ 0
Bat+
$Comp
L Regulator_Switching:TPS613221ADBV U?
U 1 1 60F425E1
P 6300 2650
F 0 "U?" H 6300 3017 50  0000 C CNN
F 1 "Boost Converter 3.7V to 14V" H 6300 2926 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 6300 1850 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/tps61322.pdf" H 6300 2500 50  0001 C CNN
	1    6300 2650
	1    0    0    -1  
$EndComp
Text GLabel 5900 2550 0    50   Input ~ 0
Bat+
$Comp
L power:Earth #PWR?
U 1 1 60F44F54
P 6300 2000
F 0 "#PWR?" H 6300 1750 50  0001 C CNN
F 1 "Earth" H 6300 1850 50  0001 C CNN
F 2 "" H 6300 2000 50  0001 C CNN
F 3 "~" H 6300 2000 50  0001 C CNN
	1    6300 2000
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60F45265
P 6300 2950
F 0 "#PWR?" H 6300 2700 50  0001 C CNN
F 1 "Earth" H 6300 2800 50  0001 C CNN
F 2 "" H 6300 2950 50  0001 C CNN
F 3 "~" H 6300 2950 50  0001 C CNN
	1    6300 2950
	1    0    0    -1  
$EndComp
Text GLabel 6700 1600 2    50   Input ~ 0
5V
Text GLabel 6700 2550 2    50   Input ~ 0
12V
$Comp
L L298N:L298N U?
U 1 1 60FABD41
P 9100 4750
F 0 "U?" H 9100 5615 50  0000 C CNN
F 1 "L298N" H 9100 5524 50  0000 C CNN
F 2 "TO127P2020X500X2100-15" H 9100 4750 50  0001 L BNN
F 3 "" H 9100 4750 50  0001 L BNN
F 4 "IPC-7351B" H 9100 4750 50  0001 L BNN "STANDARD"
F 5 "5.0mm" H 9100 4750 50  0001 L BNN "MAXIMUM_PACKAGE_HEIGHT"
F 6 "STMicroelectronics" H 9100 4750 50  0001 L BNN "MANUFACTURER"
F 7 "" H 9100 4750 50  0001 L BNN "PARTREV"
	1    9100 4750
	1    0    0    -1  
$EndComp
$Comp
L ESP32-CAM:ESP32-CAM U?
U 1 1 60FAD0DD
P 9200 2500
F 0 "U?" H 9200 3400 50  0000 C CNN
F 1 "ESP32-CAM" H 8950 3250 50  0000 L BNN
F 2 "ESP32-CAM" H 9200 2500 50  0001 L BNN
F 3 "" H 9200 2500 50  0001 L BNN
	1    9200 2500
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60FB554F
P 9800 5250
F 0 "#PWR?" H 9800 5000 50  0001 C CNN
F 1 "Earth" H 9800 5100 50  0001 C CNN
F 2 "" H 9800 5250 50  0001 C CNN
F 3 "~" H 9800 5250 50  0001 C CNN
	1    9800 5250
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60FB5C5F
P 9800 2600
F 0 "#PWR?" H 9800 2350 50  0001 C CNN
F 1 "Earth" H 9800 2450 50  0001 C CNN
F 2 "" H 9800 2600 50  0001 C CNN
F 3 "~" H 9800 2600 50  0001 C CNN
	1    9800 2600
	1    0    0    -1  
$EndComp
Text GLabel 8400 4750 0    50   Input ~ 0
H_EN_MOTOR_FWD
Text GLabel 8400 4850 0    50   Input ~ 0
H_EN_MOTOR_REV
$Comp
L Motor:Motor_DC M?
U 1 1 60F739D0
P 10150 4550
F 0 "M?" H 10308 4546 50  0000 L CNN
F 1 "Motor_DC" H 10308 4455 50  0000 L CNN
F 2 "" H 10150 4460 50  0001 C CNN
F 3 "~" H 10150 4460 50  0001 C CNN
	1    10150 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 4750 9950 4750
Wire Wire Line
	9950 4350 10150 4350
Text GLabel 8600 2100 0    50   Input ~ 0
H_EN_MOTOR_FWD
Text GLabel 8600 2200 0    50   Input ~ 0
H_EN_MOTOR_REV
Wire Wire Line
	9800 4850 10150 4850
Wire Wire Line
	9950 4750 9950 4350
$Comp
L Relay:IM00 K?
U 1 1 60FAF7FD
P 3050 2450
F 0 "K?" V 2283 2450 50  0000 C CNN
F 1 "Relay NA5W-K DPDT" V 2374 2450 50  0000 C CNN
F 2 "" H 3050 2450 50  0001 C CNN
F 3 "http://www.te.com/commerce/DocumentDelivery/DDEController?Action=srchrtrv&DocNm=108-98001&DocType=SS&DocLang=EN" H 3050 2450 50  0001 C CNN
	1    3050 2450
	0    1    1    0   
$EndComp
Wire Wire Line
	3350 2750 4200 2750
Wire Wire Line
	4200 2600 4200 2750
Wire Wire Line
	4200 2000 4200 1900
Text GLabel 9800 5050 2    50   Input ~ 0
H_OUT_GLEIS_2
Text GLabel 9800 4950 2    50   Input ~ 0
H_OUT_GLEIS_1
Text GLabel 3350 2950 2    50   Input ~ 0
H_OUT_GLEIS_2
Text GLabel 3350 2550 2    50   Input ~ 0
H_OUT_GLEIS_1
Wire Wire Line
	2400 2050 2550 2050
Wire Wire Line
	2550 2050 2550 1500
Wire Wire Line
	2550 1500 2900 1500
Connection ~ 2550 2050
Wire Wire Line
	2550 2050 2750 2050
$Comp
L Diode:1N914WT D?
U 1 1 6101DFFC
P 3050 1500
F 0 "D?" H 3050 1283 50  0000 C CNN
F 1 "Diode" H 3050 1374 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-523" H 3050 1325 50  0001 C CNN
F 3 "http://www.mouser.com/ds/2/149/1N4148WT-461550.pdf" H 3050 1500 50  0001 C CNN
	1    3050 1500
	-1   0    0    1   
$EndComp
Wire Wire Line
	3350 2050 3500 2050
Wire Wire Line
	3500 2050 3500 1500
Wire Wire Line
	3500 1500 3200 1500
Wire Wire Line
	3500 1500 3750 1500
Connection ~ 3500 1500
Text GLabel 3750 1500 2    50   Input ~ 0
5V
$Comp
L power:Earth #PWR?
U 1 1 6103639B
P 1800 2050
F 0 "#PWR?" H 1800 1800 50  0001 C CNN
F 1 "Earth" H 1800 1900 50  0001 C CNN
F 2 "" H 1800 2050 50  0001 C CNN
F 3 "~" H 1800 2050 50  0001 C CNN
	1    1800 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	1800 2050 2000 2050
Text GLabel 1700 1750 0    50   Input ~ 0
ESP_RELAY
Text GLabel 3900 2300 0    50   Input ~ 0
L-
Wire Wire Line
	3600 2350 3600 1900
Wire Wire Line
	3600 1900 4200 1900
Wire Wire Line
	3350 2350 3600 2350
$Comp
L Device:Q_NPN_BCE Q?
U 1 1 61018A35
P 2200 1950
F 0 "Q?" V 2435 1950 50  0000 C CNN
F 1 "BC338-25" V 2526 1950 50  0000 C CNN
F 2 "" H 2400 2050 50  0001 C CNN
F 3 "~" H 2200 1950 50  0001 C CNN
	1    2200 1950
	0    1    1    0   
$EndComp
$Comp
L Device:R R?
U 1 1 610538E6
P 1800 1900
F 0 "R?" H 1870 1946 50  0000 L CNN
F 1 "10k" H 1870 1855 50  0000 L CNN
F 2 "" V 1730 1900 50  0001 C CNN
F 3 "~" H 1800 1900 50  0001 C CNN
	1    1800 1900
	1    0    0    -1  
$EndComp
Connection ~ 1800 2050
Wire Wire Line
	1700 1750 1800 1750
Connection ~ 1800 1750
Wire Wire Line
	1800 1750 2200 1750
Wire Wire Line
	8400 4450 8400 4550
Text GLabel 9850 4150 2    50   Input ~ 0
5V
Text GLabel 9850 4250 2    50   Input ~ 0
14V
Wire Wire Line
	8400 4450 8400 3800
Wire Wire Line
	8400 3800 9800 3800
Wire Wire Line
	9800 3800 9800 4150
Connection ~ 8400 4450
Wire Wire Line
	9800 4150 9850 4150
Connection ~ 9800 4150
Wire Wire Line
	9800 4250 9850 4250
Text Notes 8100 4450 0    50   ~ 0
Jumper
Wire Wire Line
	2350 6500 2550 6500
Wire Wire Line
	3300 6700 3450 6700
Wire Wire Line
	2850 6700 3000 6700
$Comp
L Device:R R?
U 1 1 610BD883
P 3150 6700
F 0 "R?" V 2943 6700 50  0000 C CNN
F 1 "10" V 3034 6700 50  0000 C CNN
F 2 "" V 3080 6700 50  0001 C CNN
F 3 "~" H 3150 6700 50  0001 C CNN
	1    3150 6700
	0    1    1    0   
$EndComp
Text GLabel 3450 6700 2    50   Output ~ 0
5V
$Comp
L Device:LED D?
U 1 1 6108F1B3
P 2700 6500
F 0 "D?" H 2693 6717 50  0000 C CNN
F 1 "Head Light LED" H 2693 6626 50  0000 C CNN
F 2 "" H 2700 6500 50  0001 C CNN
F 3 "~" H 2700 6500 50  0001 C CNN
	1    2700 6500
	1    0    0    -1  
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60FEB884
P 2200 6700
F 0 "#PWR?" H 2200 6450 50  0001 C CNN
F 1 "Earth" H 2200 6550 50  0001 C CNN
F 2 "" H 2200 6700 50  0001 C CNN
F 3 "~" H 2200 6700 50  0001 C CNN
	1    2200 6700
	1    0    0    -1  
$EndComp
Text GLabel 2200 5000 0    50   Output ~ 0
L-
Text GLabel 2200 4700 0    50   Output ~ 0
L+
Wire Wire Line
	3400 4300 3450 4300
$Comp
L power:Earth #PWR?
U 1 1 60F72A3D
P 3400 4300
F 0 "#PWR?" H 3400 4050 50  0001 C CNN
F 1 "Earth" H 3400 4150 50  0001 C CNN
F 2 "" H 3400 4300 50  0001 C CNN
F 3 "~" H 3400 4300 50  0001 C CNN
	1    3400 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 4200 3100 4700
Wire Wire Line
	3400 4800 3100 4800
Wire Wire Line
	3100 4900 4200 4900
$Comp
L power:Earth #PWR?
U 1 1 60FBA67E
P 3100 5000
F 0 "#PWR?" H 3100 4750 50  0001 C CNN
F 1 "Earth" H 3100 4850 50  0001 C CNN
F 2 "" H 3100 5000 50  0001 C CNN
F 3 "~" H 3100 5000 50  0001 C CNN
	1    3100 5000
	1    0    0    -1  
$EndComp
$Comp
L shotLib:BatteryManager U?
U 1 1 60FAA81A
P 2650 4600
F 0 "U?" H 2650 4725 50  0000 C CNN
F 1 "BatteryManager" H 2650 4634 50  0000 C CNN
F 2 "" H 2650 4650 50  0001 C CNN
F 3 "" H 2650 4650 50  0001 C CNN
	1    2650 4600
	1    0    0    -1  
$EndComp
Text GLabel 3850 4300 2    50   Input ~ 0
5V
Wire Wire Line
	3450 4200 3100 4200
$Comp
L Switch:SW_DPST_x2 SW?
U 1 1 60F81CD5
P 3600 4800
F 0 "SW?" H 3600 5035 50  0000 C CNN
F 1 "Reset_SW" H 3600 4944 50  0000 C CNN
F 2 "" H 3600 4800 50  0001 C CNN
F 3 "~" H 3600 4800 50  0001 C CNN
	1    3600 4800
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST_LED SW?
U 1 1 60F8084A
P 3650 4300
F 0 "SW?" H 3650 4635 50  0000 C CNN
F 1 "Power_SW" H 3650 4544 50  0000 C CNN
F 2 "" H 3650 4600 50  0001 C CNN
F 3 "~" H 3650 4600 50  0001 C CNN
	1    3650 4300
	1    0    0    -1  
$EndComp
$Comp
L Device:Battery BT?
U 1 1 60F3B20D
P 4000 4800
F 0 "BT?" V 4250 4800 50  0000 C CNN
F 1 "Battery" V 4150 4800 50  0000 C CNN
F 2 "" V 4000 4860 50  0001 C CNN
F 3 "~" V 4000 4860 50  0001 C CNN
	1    4000 4800
	0    -1   -1   0   
$EndComp
Text GLabel 3850 4200 2    50   Input ~ 0
Bat+
Wire Wire Line
	4200 4900 4200 4800
Text GLabel 8600 1900 0    50   Input ~ 0
5V
Text GLabel 2200 5150 0    50   Input ~ 0
ESP_STNDBY
Text GLabel 3100 5150 2    50   Input ~ 0
ESP_CHRG
Text GLabel 5950 4350 1    50   Input ~ 0
Bat+
Text GLabel 6050 4650 2    50   Input ~ 0
ESP_ADC_BAT
Text GLabel 9800 2500 2    50   Input ~ 0
ESP_STNDBY
Text GLabel 9800 2400 2    50   Input ~ 0
ESP_CHRG
Text GLabel 9800 2100 2    50   Input ~ 0
ESP_RELAY
Text GLabel 9800 2000 2    50   Input ~ 0
ESP_ADC_BAT
Text GLabel 8600 2300 0    50   Input ~ 0
H_EN_WEICHE_FWD
Text GLabel 8600 2400 0    50   Input ~ 0
H_EN_WEICHE_REV
$Comp
L Device:R R?
U 1 1 60F99CF3
P 5950 4800
F 0 "R?" H 6020 4846 50  0000 L CNN
F 1 "100k" H 6020 4755 50  0000 L CNN
F 2 "" V 5880 4800 50  0001 C CNN
F 3 "~" H 5950 4800 50  0001 C CNN
	1    5950 4800
	-1   0    0    1   
$EndComp
Wire Wire Line
	6050 4650 5950 4650
Connection ~ 5950 4650
$Comp
L Device:R R?
U 1 1 60F9A56A
P 5950 4500
F 0 "R?" H 6020 4546 50  0000 L CNN
F 1 "100k" H 6020 4455 50  0000 L CNN
F 2 "" V 5880 4500 50  0001 C CNN
F 3 "~" H 5950 4500 50  0001 C CNN
	1    5950 4500
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR?
U 1 1 60FF2D17
P 5950 4950
F 0 "#PWR?" H 5950 4700 50  0001 C CNN
F 1 "Earth" H 5950 4800 50  0001 C CNN
F 2 "" H 5950 4950 50  0001 C CNN
F 3 "~" H 5950 4950 50  0001 C CNN
	1    5950 4950
	1    0    0    -1  
$EndComp
Text GLabel 9800 2300 2    50   Input ~ 0
ESP_3.3V
Wire Wire Line
	2350 6700 2550 6700
$Comp
L Device:LED D?
U 1 1 6107F994
P 2700 6700
F 0 "D?" H 2700 6800 50  0000 C CNN
F 1 "Scheinwerfer 5V" H 2693 6826 50  0001 C CNN
F 2 "" H 2700 6700 50  0001 C CNN
F 3 "~" H 2700 6700 50  0001 C CNN
	1    2700 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2350 6900 2550 6900
$Comp
L Device:LED D?
U 1 1 61084810
P 2700 6900
F 0 "D?" H 2700 7000 50  0000 C CNN
F 1 "Scheinwerfer 5V" H 2693 7026 50  0001 C CNN
F 2 "" H 2700 6900 50  0001 C CNN
F 3 "~" H 2700 6900 50  0001 C CNN
	1    2700 6900
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6500 2850 6700
Connection ~ 2850 6700
Wire Wire Line
	2850 6700 2850 6900
Wire Wire Line
	2350 6500 2350 6700
Connection ~ 2350 6700
Wire Wire Line
	2350 6700 2350 6900
Wire Wire Line
	2350 6700 2200 6700
Text GLabel 8400 5050 0    50   Input ~ 0
H_EN_WEICHE_REV
Text GLabel 8400 4950 0    50   Input ~ 0
H_EN_WEICHE_FWD
$EndSCHEMATC
