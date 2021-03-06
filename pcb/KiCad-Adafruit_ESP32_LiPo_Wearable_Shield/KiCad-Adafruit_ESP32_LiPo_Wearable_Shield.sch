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
Wire Wire Line
	7425 2225 7775 2225
Text Label 7775 2225 2    50   ~ 0
IO21
Wire Wire Line
	7425 2325 7775 2325
Text Label 7775 2325 2    50   ~ 0
IO17
Wire Wire Line
	7425 2425 7775 2425
Text Label 7775 2425 2    50   ~ 0
IO16
Wire Wire Line
	7425 2525 7775 2525
Text Label 7775 2525 2    50   ~ 0
IO19
Wire Wire Line
	7425 2625 7775 2625
Text Label 7775 2625 2    50   ~ 0
IO18
Wire Wire Line
	7425 2725 7775 2725
Text Label 7775 2725 2    50   ~ 0
IO5
Wire Wire Line
	7425 2825 7775 2825
Text Label 7775 2825 2    50   ~ 0
IO4-T2
Wire Wire Line
	7425 2925 7775 2925
Text Label 7775 2925 2    50   ~ 0
IO36
Wire Wire Line
	7425 3025 7775 3025
Text Label 7775 3025 2    50   ~ 0
IO39
Wire Wire Line
	7425 3125 7775 3125
Text Label 7775 3125 2    50   ~ 0
IO34
Wire Wire Line
	7425 3225 7775 3225
Text Label 7775 3225 2    50   ~ 0
IO25
Wire Wire Line
	7425 3325 7775 3325
Text Label 7775 3325 2    50   ~ 0
IO26
Wire Wire Line
	7425 3425 7775 3425
Text Label 7775 3425 2    50   ~ 0
GND
Wire Wire Line
	6400 2550 6050 2550
Text Label 6050 2550 0    50   ~ 0
IO32-T1
Wire Wire Line
	6400 2450 6050 2450
Text Label 6050 2450 0    50   ~ 0
IO14-T2
Wire Wire Line
	6400 2350 6050 2350
Text Label 6050 2350 0    50   ~ 0
IO22-SCL
Wire Wire Line
	6400 2250 6050 2250
Text Label 6050 2250 0    50   ~ 0
IO23-SDA
Wire Wire Line
	6400 2850 6050 2850
Text Label 6050 2850 0    50   ~ 0
IO27-T2
Wire Wire Line
	6400 2750 6050 2750
Text Label 6050 2750 0    50   ~ 0
IO33-T1
Wire Wire Line
	6400 2650 6050 2650
Text Label 6050 2650 0    50   ~ 0
IO15-T2
Wire Wire Line
	6400 3050 6050 3050
Text Label 6050 3050 0    50   ~ 0
IO13-T2
NoConn ~ 7425 3525
$Comp
L Connector:Conn_01x12_Female J2
U 1 1 5F7E1870
P 6600 2750
F 0 "J2" H 6250 3500 50  0000 L CNN
F 1 "Adafruit_ESP32-L_1x12" H 5925 3400 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical_SMD_Pin1Left" H 6600 2750 50  0001 C CNN
F 3 "~" H 6600 2750 50  0001 C CNN
	1    6600 2750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x16_Female J1
U 1 1 5F7D454E
P 7225 2925
F 0 "J1" H 6975 3850 50  0000 C CNN
F 1 "Adafruit_ESP32-R_1x16" H 6950 3750 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x16_P2.54mm_Vertical_SMD_Pin1Right" H 7225 2925 50  0001 C CNN
F 3 "~" H 7225 2925 50  0001 C CNN
	1    7225 2925
	-1   0    0    -1  
$EndComp
NoConn ~ 6400 2950
Text Label 5675 2300 2    50   ~ 0
IO22-SCL
Wire Wire Line
	5325 2200 5675 2200
Text Label 5675 2400 2    50   ~ 0
IO23-SDA
Wire Wire Line
	5325 2100 5675 2100
Wire Wire Line
	5325 2300 5675 2300
Wire Wire Line
	5325 2400 5675 2400
Text Label 5675 2200 2    50   ~ 0
3V3
Text Label 5675 2100 2    50   ~ 0
GND
$Comp
L Connector:Conn_01x04_Female J8
U 1 1 5F82CFBE
P 5125 2200
F 0 "J8" H 4875 2525 50  0000 L CNN
F 1 "I2C_1x4" H 4750 2425 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical_SMD_Pin1Left" H 5125 2200 50  0001 C CNN
F 3 "~" H 5125 2200 50  0001 C CNN
	1    5125 2200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5350 2775 5700 2775
Text Label 5700 2775 2    50   ~ 0
IO32-T1
Wire Wire Line
	5350 2875 5700 2875
Text Label 5700 2875 2    50   ~ 0
IO14-T2
Wire Wire Line
	5350 3175 5700 3175
Text Label 5700 3175 2    50   ~ 0
IO27-T2
Wire Wire Line
	5350 3075 5700 3075
Text Label 5700 3075 2    50   ~ 0
IO33-T1
Wire Wire Line
	5350 2975 5700 2975
Text Label 5700 2975 2    50   ~ 0
IO15-T2
Text Label 5700 3275 2    50   ~ 0
IO13-T2
Wire Wire Line
	5350 3275 5700 3275
$Comp
L Connector:Conn_01x07_Male J7
U 1 1 5F8617B8
P 5150 3075
F 0 "J7" H 5350 3600 50  0000 C CNN
F 1 "IO14_Sew_1x7" H 5375 3500 50  0000 C CNN
F 2 "custom-footprints:PinHeader_1x07_P7mm_I3mm_Vertical" H 5150 3075 50  0001 C CNN
F 3 "~" H 5150 3075 50  0001 C CNN
	1    5150 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	5350 3375 5700 3375
Text Label 5700 3375 2    50   ~ 0
GND
$Comp
L Connector:Conn_01x07_Male J3
U 1 1 5F7F187D
P 8225 3025
F 0 "J3" H 8425 3550 50  0000 C CNN
F 1 "IO19_Sew_1x7" H 8450 3450 50  0000 C CNN
F 2 "custom-footprints:PinHeader_1x07_P7mm_I3mm_Vertical" H 8225 3025 50  0001 C CNN
F 3 "~" H 8225 3025 50  0001 C CNN
	1    8225 3025
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 2150 8775 2150
Text Label 8775 2150 2    50   ~ 0
IO21
Wire Wire Line
	8425 2250 8775 2250
Text Label 8775 2250 2    50   ~ 0
IO17
Wire Wire Line
	8425 2350 8775 2350
Text Label 8775 2350 2    50   ~ 0
IO16
Wire Wire Line
	8425 2825 8775 2825
Text Label 8775 2825 2    50   ~ 0
IO19
Wire Wire Line
	8425 2925 8775 2925
Text Label 8775 2925 2    50   ~ 0
IO18
Wire Wire Line
	8425 3650 8775 3650
Text Label 8775 3650 2    50   ~ 0
IO5
Wire Wire Line
	8425 3025 8775 3025
Text Label 8775 3025 2    50   ~ 0
IO4-T2
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5F806E7A
P 8225 2250
F 0 "J4" H 8450 2550 50  0000 C CNN
F 1 "IO21_Sew_1x3" H 8475 2475 50  0000 C CNN
F 2 "custom-footprints:PinHeader_1x03_P7mm_I3mm_Vertical" H 8225 2250 50  0001 C CNN
F 3 "~" H 8225 2250 50  0001 C CNN
	1    8225 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 3125 8775 3125
Text Label 8775 3125 2    50   ~ 0
IO39
Wire Wire Line
	8425 3850 8775 3850
Text Label 8775 3850 2    50   ~ 0
IO34
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5F80E97C
P 8225 3750
F 0 "J5" H 8450 4050 50  0000 C CNN
F 1 "IO34_Sew_1x3" H 8475 3975 50  0000 C CNN
F 2 "custom-footprints:PinHeader_1x03_P7mm_I3mm_Vertical" H 8225 3750 50  0001 C CNN
F 3 "~" H 8225 3750 50  0001 C CNN
	1    8225 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8425 3325 8775 3325
Text Label 8775 3325 2    50   ~ 0
IO26
Wire Wire Line
	8425 2725 8775 2725
Text Label 8775 2725 2    50   ~ 0
GND
Text Label 7775 3625 2    50   ~ 0
3V3
Wire Wire Line
	7425 3625 7775 3625
Wire Wire Line
	6400 3350 6050 3350
Text Label 6050 3350 0    50   ~ 0
BAT
Wire Wire Line
	6400 3150 6050 3150
Text Label 6050 3150 0    50   ~ 0
USB
Text Label 7575 4150 2    50   ~ 0
BAT
Wire Wire Line
	7225 4150 7575 4150
Text Label 7575 4250 2    50   ~ 0
GND
Wire Wire Line
	7225 4250 7575 4250
NoConn ~ 6400 3250
NoConn ~ 7425 3725
$Comp
L Connector:Conn_01x02_Male J10
U 1 1 5F7EBD7F
P 7025 4150
F 0 "J10" H 7300 4350 50  0000 C CNN
F 1 "BAT_1x2" H 7300 4275 50  0000 C CNN
F 2 "custom-footprints:UPDI_Header_1x02_P2.54mm_Horizontal" H 7025 4150 50  0001 C CNN
F 3 "~" H 7025 4150 50  0001 C CNN
	1    7025 4150
	1    0    0    -1  
$EndComp
Text Label 6625 3875 2    50   ~ 0
USB
Wire Wire Line
	6275 3875 6625 3875
Text Label 6625 3975 2    50   ~ 0
GND
Wire Wire Line
	6275 3975 6625 3975
$Comp
L Connector:Conn_01x02_Male J9
U 1 1 5F7F0FAB
P 6075 3875
F 0 "J9" H 6350 4075 50  0000 C CNN
F 1 "USB_1x2" H 6350 4000 50  0000 C CNN
F 2 "custom-footprints:UPDI_Header_1x02_P2.54mm_Horizontal" H 6075 3875 50  0001 C CNN
F 3 "~" H 6075 3875 50  0001 C CNN
	1    6075 3875
	1    0    0    -1  
$EndComp
Text Label 6575 4275 2    50   ~ 0
3V3
Wire Wire Line
	6225 4275 6575 4275
Text Label 6575 4375 2    50   ~ 0
GND
Wire Wire Line
	6225 4375 6575 4375
$Comp
L Connector:Conn_01x02_Male J6
U 1 1 5F7F2C2D
P 6025 4275
F 0 "J6" H 6300 4475 50  0000 C CNN
F 1 "3V3_1x2" H 6300 4400 50  0000 C CNN
F 2 "custom-footprints:UPDI_Header_1x02_P2.54mm_Horizontal" H 6025 4275 50  0001 C CNN
F 3 "~" H 6025 4275 50  0001 C CNN
	1    6025 4275
	1    0    0    -1  
$EndComp
Text Label 8775 3750 2    50   ~ 0
IO36
Wire Wire Line
	8425 3750 8775 3750
Text Label 8775 3225 2    50   ~ 0
IO25
Wire Wire Line
	8425 3225 8775 3225
$EndSCHEMATC
