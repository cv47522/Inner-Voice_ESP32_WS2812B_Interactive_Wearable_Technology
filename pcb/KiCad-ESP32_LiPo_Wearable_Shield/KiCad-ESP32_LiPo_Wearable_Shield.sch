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
	7700 2000 8050 2000
Text Label 8050 2000 2    50   ~ 0
IO21-SDA
Wire Wire Line
	7700 2500 8050 2500
Text Label 8050 2500 2    50   ~ 0
IO17
Wire Wire Line
	7700 2600 8050 2600
Text Label 8050 2600 2    50   ~ 0
IO16
Wire Wire Line
	7700 2200 8050 2200
Text Label 8050 2200 2    50   ~ 0
IO19
Text Label 8050 2300 2    50   ~ 0
IO18
Wire Wire Line
	7700 2400 8050 2400
Text Label 8050 2400 2    50   ~ 0
IO5
Wire Wire Line
	7700 2700 8050 2700
Text Label 8050 2700 2    50   ~ 0
IO4-T2
Wire Wire Line
	6425 1725 6075 1725
Text Label 6075 1725 0    50   ~ 0
IO36_IN
Wire Wire Line
	6425 1825 6075 1825
Text Label 6075 1825 0    50   ~ 0
IO39_IN
Wire Wire Line
	6425 1925 6075 1925
Text Label 6075 1925 0    50   ~ 0
IO34_IN
Wire Wire Line
	6425 2425 6075 2425
Text Label 6075 2425 0    50   ~ 0
IO26
Wire Wire Line
	6425 2325 6075 2325
Text Label 6075 2325 0    50   ~ 0
IO25
Wire Wire Line
	6425 2825 6075 2825
Text Label 6075 2825 0    50   ~ 0
GND
Wire Wire Line
	6425 1525 6075 1525
Text Label 6075 1525 0    50   ~ 0
3V3
Wire Wire Line
	6425 2125 6075 2125
Text Label 6075 2125 0    50   ~ 0
IO32-T1
Text Label 6075 2625 0    50   ~ 0
IO14-T2
Wire Wire Line
	7700 1700 8050 1700
Text Label 8050 1700 2    50   ~ 0
IO22-SCL
Wire Wire Line
	7700 1600 8050 1600
Text Label 8050 1600 2    50   ~ 0
IO23
Wire Wire Line
	6425 2525 6075 2525
Text Label 6075 2525 0    50   ~ 0
IO27-T2
Wire Wire Line
	6425 2225 6075 2225
Text Label 6075 2225 0    50   ~ 0
IO33-T1
Wire Wire Line
	7700 3000 8050 3000
Text Label 8050 3000 2    50   ~ 0
IO15-T2
Wire Wire Line
	6425 3325 6075 3325
Text Label 6075 3325 0    50   ~ 0
5V
Wire Wire Line
	6425 2925 6075 2925
Text Label 6075 2925 0    50   ~ 0
IO13-T2
Text Label 5125 1675 2    50   ~ 0
IO22-SCL
Wire Wire Line
	4775 1575 5125 1575
Text Label 5125 1775 2    50   ~ 0
IO21-SDA
Wire Wire Line
	4775 1475 5125 1475
Wire Wire Line
	4775 1675 5125 1675
Wire Wire Line
	4775 1775 5125 1775
Text Label 5125 1575 2    50   ~ 0
3V3
Text Label 5125 1475 2    50   ~ 0
GND
$Comp
L Connector:Conn_01x04_Female J8
U 1 1 5F82CFBE
P 4575 1575
F 0 "J8" H 4325 1900 50  0000 L CNN
F 1 "I2C_1x4" H 4200 1800 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x04_P2.54mm_Vertical_SMD_Pin1Left" H 4575 1575 50  0001 C CNN
F 3 "~" H 4575 1575 50  0001 C CNN
	1    4575 1575
	-1   0    0    -1  
$EndComp
Text Label 3650 3150 2    50   ~ 0
GND
Text Label 3650 2850 2    50   ~ 0
5V
Wire Wire Line
	3200 3150 3650 3150
Wire Wire Line
	3200 2850 3650 2850
Wire Wire Line
	5075 2750 5425 2750
Text Label 5425 2750 2    50   ~ 0
3V3
Wire Wire Line
	5075 2850 5425 2850
Text Label 5425 2850 2    50   ~ 0
EN
Wire Wire Line
	5075 2950 5425 2950
Text Label 5425 2950 2    50   ~ 0
GND
$Comp
L Connector:Conn_01x19_Female J7
U 1 1 5F7F3E6A
P 6625 2425
F 0 "J7" H 6425 3675 50  0000 L CNN
F 1 "NodeMCU_ESP32S-L_1x19" H 6025 3500 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x19_P2.54mm_Vertical_SMD_Pin1Right" H 6625 2425 50  0001 C CNN
F 3 "~" H 6625 2425 50  0001 C CNN
	1    6625 2425
	1    0    0    -1  
$EndComp
NoConn ~ 6425 3225
NoConn ~ 6425 3125
NoConn ~ 6425 3025
Wire Wire Line
	6425 2625 6075 2625
Text Label 6075 1625 0    50   ~ 0
EN
Wire Wire Line
	6425 1625 6075 1625
Wire Wire Line
	6425 2025 6075 2025
Wire Wire Line
	6425 2725 6075 2725
Text Label 6075 2725 0    50   ~ 0
IO12-T2
$Comp
L Connector:Conn_01x19_Female J10
U 1 1 5F8427FC
P 7500 2400
F 0 "J10" H 7300 3650 50  0000 L CNN
F 1 "NodeMCU_ESP32S-R_1x19" H 6900 3475 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x19_P2.54mm_Vertical_SMD_Pin1Right" H 7500 2400 50  0001 C CNN
F 3 "~" H 7500 2400 50  0001 C CNN
	1    7500 2400
	-1   0    0    -1  
$EndComp
NoConn ~ 7700 3200
NoConn ~ 7700 3100
NoConn ~ 7700 3300
Wire Wire Line
	7700 1500 8050 1500
Text Label 8050 1500 2    50   ~ 0
GND
Wire Wire Line
	7700 2100 8050 2100
Text Label 8050 2100 2    50   ~ 0
GND
NoConn ~ 7700 1900
NoConn ~ 7700 1800
Wire Wire Line
	7700 2300 8050 2300
Wire Wire Line
	7700 2900 8050 2900
Text Label 8050 2900 2    50   ~ 0
IO2-T2
NoConn ~ 7700 2800
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5F89F69E
P 4875 2850
F 0 "J5" H 5050 3200 50  0000 C CNN
F 1 "Config_1x3" H 5050 3100 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical_SMD_Pin1Right" H 4875 2850 50  0001 C CNN
F 3 "~" H 4875 2850 50  0001 C CNN
	1    4875 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	6475 4025 6125 4025
Text Label 6125 4025 0    50   ~ 0
IO39_IN
Wire Wire Line
	6475 4225 6125 4225
Text Label 6125 4225 0    50   ~ 0
IO34_IN
Wire Wire Line
	6475 4625 6125 4625
Text Label 6125 4625 0    50   ~ 0
IO26
Wire Wire Line
	6475 4525 6125 4525
Text Label 6125 4525 0    50   ~ 0
IO25
Wire Wire Line
	6475 4325 6125 4325
Text Label 6125 4325 0    50   ~ 0
IO32-T1
Text Label 6125 4825 0    50   ~ 0
IO14-T2
Wire Wire Line
	6475 4725 6125 4725
Text Label 6125 4725 0    50   ~ 0
IO27-T2
Wire Wire Line
	6475 4425 6125 4425
Text Label 6125 4425 0    50   ~ 0
IO33-T1
Wire Wire Line
	6475 4825 6125 4825
Wire Wire Line
	6475 4125 6125 4125
Text Label 6125 4125 0    50   ~ 0
IO35_IN
Wire Wire Line
	6475 4925 6125 4925
Text Label 6125 4925 0    50   ~ 0
IO12-T2
NoConn ~ 3200 2950
NoConn ~ 3200 3050
NoConn ~ 2500 2950
NoConn ~ 2500 3050
$Comp
L Connector:Conn_01x05_Female J3
U 1 1 5F88498C
P 4000 4225
F 0 "J3" H 3650 4750 50  0000 L CNN
F 1 "Microphone_1x5" H 3475 4600 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x05_P2.54mm_Vertical_SMD_Pin1Left" H 4000 4225 50  0001 C CNN
F 3 "~" H 4000 4225 50  0001 C CNN
	1    4000 4225
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 4225 3450 4225
Text Label 3450 4225 0    50   ~ 0
Gain
Wire Wire Line
	3800 4325 3450 4325
Text Label 3450 4325 0    50   ~ 0
IO36_IN
Wire Wire Line
	3800 4025 3450 4025
Text Label 3450 4025 0    50   ~ 0
GND
Text Label 3450 4125 0    50   ~ 0
3V3
Wire Wire Line
	3800 4125 3450 4125
NoConn ~ 3800 4425
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5F88EDEE
P 4125 4125
F 0 "J4" H 4350 4450 50  0000 C CNN
F 1 "Mic_Gain_1x3" H 4375 4350 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical_SMD_Pin1Right" H 4125 4125 50  0001 C CNN
F 3 "~" H 4125 4125 50  0001 C CNN
	1    4125 4125
	1    0    0    -1  
$EndComp
Wire Wire Line
	4325 4125 4675 4125
Text Label 4675 4125 2    50   ~ 0
Gain
Wire Wire Line
	4325 4025 4675 4025
Text Label 4675 4025 2    50   ~ 0
GND
Text Label 4675 4225 2    50   ~ 0
3V3
Wire Wire Line
	4325 4225 4675 4225
Wire Wire Line
	7300 4025 7650 4025
Text Label 7650 4025 2    50   ~ 0
IO13-T2
Wire Wire Line
	7300 4325 7650 4325
Text Label 7650 4325 2    50   ~ 0
IO4-T2
Wire Wire Line
	7300 4125 7650 4125
Wire Wire Line
	7300 4225 7650 4225
Text Label 7650 4225 2    50   ~ 0
IO2-T2
Text Label 7650 4125 2    50   ~ 0
IO15-T2
Wire Wire Line
	7300 4925 7650 4925
Text Label 7650 4925 2    50   ~ 0
IO23
Wire Wire Line
	7300 4825 7650 4825
Text Label 7650 4825 2    50   ~ 0
IO19
Wire Wire Line
	7300 4525 7650 4525
Text Label 7650 4525 2    50   ~ 0
IO17
Wire Wire Line
	7300 4425 7650 4425
Text Label 7650 4425 2    50   ~ 0
IO16
Text Label 9475 4500 2    50   ~ 0
5V
Text Label 9475 4400 2    50   ~ 0
5V
$Comp
L Connector:Conn_01x04_Female J2
U 1 1 5F8523BB
P 3000 2950
F 0 "J2" H 2675 3300 50  0000 L CNN
F 1 "Booster_R" H 2525 3225 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical_SMD_Pin1Right" H 3000 2950 50  0001 C CNN
F 3 "~" H 3000 2950 50  0001 C CNN
	1    3000 2950
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x04_Female J1
U 1 1 5F8AAA85
P 2700 2950
F 0 "J1" H 2375 3300 50  0000 L CNN
F 1 "Booster_L" H 2275 3200 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical_SMD_Pin1Right" H 2700 2950 50  0001 C CNN
F 3 "~" H 2700 2950 50  0001 C CNN
	1    2700 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 2850 2200 2850
Wire Wire Line
	2500 3150 2200 3150
Text Label 2200 2850 0    50   ~ 0
VIN+
Text Label 2200 3150 0    50   ~ 0
VIN-
Text Label 6075 2025 0    50   ~ 0
IO35_IN
$Comp
L Connector:Conn_01x02_Male J11
U 1 1 5F96EAD4
P 1550 2925
F 0 "J11" H 1825 3150 50  0000 C CNN
F 1 "LiPo_1x2" H 1800 3050 50  0000 C CNN
F 2 "custom-footprints:JST_PH_S2B-PH-K_1x02_P2.00mm_I1.5mm_Horizontal" H 1550 2925 50  0001 C CNN
F 3 "~" H 1550 2925 50  0001 C CNN
	1    1550 2925
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 2925 2050 2925
Wire Wire Line
	1750 3025 2050 3025
Text Label 2050 2925 2    50   ~ 0
VIN+
Text Label 2050 3025 2    50   ~ 0
VIN-
Text Label 8150 4300 0    50   ~ 0
GND
Text Label 8150 4400 0    50   ~ 0
5V
Wire Wire Line
	8500 4300 8150 4300
Wire Wire Line
	8500 4400 8150 4400
Text Label 8150 4600 0    50   ~ 0
GND
Text Label 8150 4500 0    50   ~ 0
5V
Wire Wire Line
	8500 4600 8150 4600
Wire Wire Line
	8500 4500 8150 4500
$Comp
L Connector:Conn_01x04_Male J12
U 1 1 5F9A1A78
P 8700 4500
F 0 "J12" H 8975 4075 50  0000 C CNN
F 1 "PWR_1x4_L" H 8975 4175 50  0000 C CNN
F 2 "custom-footprints:PinHeader_1x04_P7mm_I3mm_Vertical" H 8700 4500 50  0001 C CNN
F 3 "~" H 8700 4500 50  0001 C CNN
	1    8700 4500
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x04_Male J13
U 1 1 5F999D36
P 8925 4400
F 0 "J13" H 9125 4725 50  0000 C CNN
F 1 "PWR_1x4_R" H 9150 4625 50  0000 C CNN
F 2 "custom-footprints:PinHeader_1x04_P7mm_I3mm_Vertical" H 8925 4400 50  0001 C CNN
F 3 "~" H 8925 4400 50  0001 C CNN
	1    8925 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	9125 4400 9475 4400
Wire Wire Line
	9125 4300 9475 4300
Text Label 9475 4300 2    50   ~ 0
GND
Wire Wire Line
	9125 4500 9475 4500
Wire Wire Line
	9125 4600 9475 4600
Text Label 9475 4600 2    50   ~ 0
GND
$Comp
L Connector:Conn_01x10_Male J9
U 1 1 5F9AD286
P 7100 4425
F 0 "J9" H 7375 5025 50  0000 C CNN
F 1 "IO_Sew_1x10_Bottom" H 7350 4950 50  0000 C CNN
F 2 "custom-footprints:PinHeader_1x10_P7mm_I3mm_Vertical" H 7100 4425 50  0001 C CNN
F 3 "~" H 7100 4425 50  0001 C CNN
	1    7100 4425
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x10_Male J6
U 1 1 5F9BDF94
P 6675 4525
F 0 "J6" H 6975 3800 50  0000 R CNN
F 1 "IO_Sew_1x10_Top" H 7250 3900 50  0000 R CNN
F 2 "custom-footprints:PinHeader_1x10_P7mm_I3mm_Vertical" H 6675 4525 50  0001 C CNN
F 3 "~" H 6675 4525 50  0001 C CNN
	1    6675 4525
	-1   0    0    1   
$EndComp
Text Label 7650 4625 2    50   ~ 0
IO5
Wire Wire Line
	7300 4625 7650 4625
Text Label 7650 4725 2    50   ~ 0
IO18
Wire Wire Line
	7300 4725 7650 4725
$EndSCHEMATC
