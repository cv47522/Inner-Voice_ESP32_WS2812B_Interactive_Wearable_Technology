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
	4775 3175 5225 3175
Wire Wire Line
	4775 2875 5225 2875
Wire Wire Line
	4775 3275 5225 3275
Wire Wire Line
	4775 3375 5225 3375
Text Label 5225 3175 2    50   ~ 0
GND
Text Label 5225 2875 2    50   ~ 0
Pre_Vol+
Text Label 5225 3275 2    50   ~ 0
Next_Vol-
Text Label 5225 3375 2    50   ~ 0
GND
$Comp
L Connector:Conn_01x03_Female J1
U 1 1 5FA780CA
P 2875 4950
F 0 "J1" H 2575 5325 50  0000 L CNN
F 1 "BAT_Translation_1x3" H 2250 5200 50  0000 L CNN
F 2 "custom-footprints:Female_Header_1x03_P2.54mm_Horizontal" H 2875 4950 50  0001 C CNN
F 3 "~" H 2875 4950 50  0001 C CNN
	1    2875 4950
	1    0    0    -1  
$EndComp
NoConn ~ 2675 4950
$Comp
L Connector:Conn_01x02_Male J2
U 1 1 5FA78BC9
P 3525 4875
F 0 "J2" H 3800 5100 50  0000 C CNN
F 1 "LiPo_BAT_1x2" H 3825 5000 50  0000 C CNN
F 2 "custom-footprints:JST_PH_S2B-PH-K_1x02_P2.00mm_I1.5mm_Horizontal" H 3525 4875 50  0001 C CNN
F 3 "~" H 3525 4875 50  0001 C CNN
	1    3525 4875
	1    0    0    -1  
$EndComp
Wire Wire Line
	3725 4975 4125 4975
Wire Wire Line
	3725 4875 4125 4875
Wire Wire Line
	2675 4850 2300 4850
Wire Wire Line
	2675 5050 2300 5050
$Comp
L Connector:Conn_01x06_Male J4
U 1 1 5FA79C2F
P 4575 3075
F 0 "J4" H 4875 3500 50  0000 C CNN
F 1 "IO_Sew_Top_1x6" H 4875 3400 50  0000 C CNN
F 2 "custom-footprints:PinHeader_1x06_P7mm_I3mm_Vertical" H 4575 3075 50  0001 C CNN
F 3 "~" H 4575 3075 50  0001 C CNN
	1    4575 3075
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 3950 4600 3950
Text Label 4600 3950 2    50   ~ 0
GND
Wire Wire Line
	4775 2975 5225 2975
Text Label 5225 2975 2    50   ~ 0
GND
Wire Wire Line
	3650 4150 3200 4150
Text Label 3200 4150 0    50   ~ 0
Pre_Vol+
Text Label 5225 3075 2    50   ~ 0
Play_Stop
Wire Wire Line
	4775 3075 5225 3075
Text Label 3200 4050 0    50   ~ 0
Play_Stop
Wire Wire Line
	3650 4050 3200 4050
Wire Wire Line
	3650 3950 3200 3950
Text Label 3200 3950 0    50   ~ 0
Next_Vol-
Wire Wire Line
	4775 4950 5225 4950
Wire Wire Line
	4775 5050 5225 5050
Wire Wire Line
	4775 4650 5225 4650
Wire Wire Line
	4775 5150 5225 5150
Text Label 5225 4950 2    50   ~ 0
GND
Text Label 5225 5050 2    50   ~ 0
Pre_Vol+
Text Label 5225 4650 2    50   ~ 0
Next_Vol-
Text Label 5225 5150 2    50   ~ 0
GND
$Comp
L Connector:Conn_01x06_Male J5
U 1 1 5FA84A36
P 4575 4850
F 0 "J5" H 4875 5275 50  0000 C CNN
F 1 "IO_Sew_Bottom_1x6" H 4875 5175 50  0000 C CNN
F 2 "custom-footprints:PinHeader_1x06_P7mm_I3mm_Vertical" H 4575 4850 50  0001 C CNN
F 3 "~" H 4575 4850 50  0001 C CNN
	1    4575 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	4775 4750 5225 4750
Text Label 5225 4750 2    50   ~ 0
GND
Text Label 5225 4850 2    50   ~ 0
Play_Stop
Wire Wire Line
	4775 4850 5225 4850
Text Label 2300 5050 0    50   ~ 0
BAT+
Text Label 2300 4850 0    50   ~ 0
BAT-
Text Label 4125 4975 2    50   ~ 0
BAT-
Text Label 4125 4875 2    50   ~ 0
BAT+
$Comp
L Connector:Conn_01x03_Female J6
U 1 1 5FA8FE7B
P 6450 4850
F 0 "J6" H 6150 5225 50  0000 L CNN
F 1 "Speaker_Translation_1x3" H 5825 5100 50  0000 L CNN
F 2 "custom-footprints:Female_Header_1x03_P2.54mm_Horizontal" H 6450 4850 50  0001 C CNN
F 3 "~" H 6450 4850 50  0001 C CNN
	1    6450 4850
	1    0    0    -1  
$EndComp
NoConn ~ 6250 4850
$Comp
L Connector:Conn_01x02_Male J7
U 1 1 5FA8FE82
P 7100 4775
F 0 "J7" H 7375 5000 50  0000 C CNN
F 1 "Speaker_1x2" H 7400 4900 50  0000 C CNN
F 2 "custom-footprints:Term_Block_1x2_P5mm_I1.5mm" H 7100 4775 50  0001 C CNN
F 3 "~" H 7100 4775 50  0001 C CNN
	1    7100 4775
	1    0    0    -1  
$EndComp
Wire Wire Line
	6250 4750 5875 4750
Wire Wire Line
	6250 4950 5875 4950
Text Label 5875 4950 0    50   ~ 0
SP+
Text Label 5875 4750 0    50   ~ 0
SP-
Wire Wire Line
	7300 4875 7675 4875
Text Label 7675 4875 2    50   ~ 0
SP+
Wire Wire Line
	7300 4775 7675 4775
Text Label 7675 4775 2    50   ~ 0
SP-
$Comp
L Connector_Generic:Conn_02x03_Odd_Even J3
U 1 1 5FA99C31
P 3850 4050
F 0 "J3" H 3900 4367 50  0000 C CNN
F 1 "Buttom_Pads_2x3" H 3900 4276 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x03_P2.54mm_Vertical_SMD" H 3850 4050 50  0001 C CNN
F 3 "~" H 3850 4050 50  0001 C CNN
	1    3850 4050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 4150 4150 4050
Wire Wire Line
	4150 4050 4150 3950
Connection ~ 4150 4050
Connection ~ 4150 3950
$EndSCHEMATC
