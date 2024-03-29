EESchema Schematic File Version 4
LIBS:ControleMix-cache
EELAYER 26 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title "Controle Mix"
Date "2019-09-26"
Rev "1.00"
Comp "Controle Mix"
Comment1 "Circuito universal p/ robos autonomos ou radiocontrolado"
Comment2 "Pedro Igor Borçatti da Silva (@pedro-ibs)"
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L MyLib-ALL:mySTM32F103C8T6 U1
U 1 1 5D8B930C
P 3500 4700
F 0 "U1" H 4000 4815 50  0000 C CNN
F 1 "mySTM32F103C8T6" H 4000 4724 50  0000 C CNN
F 2 "MyFootprint:stm32f103c8t6-module-china" H 3500 4700 50  0001 C CNN
F 3 "" H 3500 4700 50  0001 C CNN
	1    3500 4700
	1    0    0    -1  
$EndComp
Text Label 4950 5500 0    50   ~ 0
PWM_CH1
Wire Wire Line
	4950 5500 4650 5500
Text Label 4950 5400 0    50   ~ 0
PWM_CH2
Text Label 4950 5300 0    50   ~ 0
PWM_CH3
Text Label 4950 5200 0    50   ~ 0
PWM_CH4
Wire Wire Line
	4650 5200 4950 5200
Wire Wire Line
	4650 5300 4950 5300
Wire Wire Line
	4950 5400 4650 5400
Text Label 4950 6300 0    50   ~ 0
TX1
Text Label 4950 6200 0    50   ~ 0
RX1
Wire Wire Line
	4950 6200 4650 6200
Wire Wire Line
	4650 6300 4950 6300
$Comp
L power:+3V3 #PWR01
U 1 1 5D8B9615
P 3300 4400
F 0 "#PWR01" H 3300 4250 50  0001 C CNN
F 1 "+3V3" V 3300 4650 50  0000 C CNN
F 2 "" H 3300 4400 50  0001 C CNN
F 3 "" H 3300 4400 50  0001 C CNN
	1    3300 4400
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR03
U 1 1 5D8B972A
P 4850 4400
F 0 "#PWR03" H 4850 4250 50  0001 C CNN
F 1 "+5V" V 4850 4600 50  0000 C CNN
F 2 "" H 4850 4400 50  0001 C CNN
F 3 "" H 4850 4400 50  0001 C CNN
	1    4850 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4400 4850 5100
Wire Wire Line
	4850 5100 4650 5100
$Comp
L power:Earth #PWR02
U 1 1 5D8B9976
P 4700 7200
F 0 "#PWR02" H 4700 6950 50  0001 C CNN
F 1 "Earth" H 4700 7050 50  0001 C CNN
F 2 "" H 4700 7200 50  0001 C CNN
F 3 "~" H 4700 7200 50  0001 C CNN
	1    4700 7200
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 7200 4700 7000
Wire Wire Line
	4700 5000 4650 5000
Wire Wire Line
	3350 6700 3300 6700
Wire Wire Line
	3300 6700 3300 6800
Wire Wire Line
	3300 7000 4700 7000
Connection ~ 4700 7000
Wire Wire Line
	4700 7000 4700 5000
Wire Wire Line
	3350 6800 3300 6800
Connection ~ 3300 6800
Wire Wire Line
	3300 6800 3300 7000
Wire Wire Line
	3350 6600 3300 6600
Wire Wire Line
	3300 6600 3300 4900
Wire Wire Line
	3300 4500 4700 4500
Wire Wire Line
	3300 4400 3300 4500
Connection ~ 3300 4500
Wire Wire Line
	4650 4900 4700 4900
Wire Wire Line
	4700 4900 4700 4500
Text Label 3050 6400 2    50   ~ 0
RX3_SDA2
Text Label 3050 6300 2    50   ~ 0
TX3_SDL2
Wire Wire Line
	3050 6300 3350 6300
Wire Wire Line
	3050 6400 3350 6400
Text Label 1150 5300 2    50   ~ 0
ADC_CH0
Text Label 1150 5400 2    50   ~ 0
ADC_CH1
Text Label 1150 5500 2    50   ~ 0
ADC_CH2
Text Label 1150 5600 2    50   ~ 0
ADC_CH3
Text Label 1150 5700 2    50   ~ 0
ADC_CH4
Text Label 1150 5800 2    50   ~ 0
ADC_CH5
Text Label 1150 5900 2    50   ~ 0
ADC_CH6
Text Label 1150 6000 2    50   ~ 0
ADC_CH7
Text Label 1150 6100 2    50   ~ 0
ADC_CH8
Text Label 1150 6200 2    50   ~ 0
ADC_CH9
Text Label 4950 5600 0    50   ~ 0
PB5
Text Label 4950 5700 0    50   ~ 0
PB4
Text Label 4950 5800 0    50   ~ 0
PB3
Text Label 4950 5900 0    50   ~ 0
PA15
Wire Wire Line
	4950 5900 4650 5900
Wire Wire Line
	4650 5800 4950 5800
Wire Wire Line
	4950 5700 4650 5700
Wire Wire Line
	4650 5600 4950 5600
NoConn ~ 3350 6500
Wire Wire Line
	3350 4900 3300 4900
Connection ~ 3300 4900
Wire Wire Line
	3300 4900 3300 4500
Text Label 4950 6400 0    50   ~ 0
CH1
Text Label 4950 6500 0    50   ~ 0
CH2
Text Label 4950 6600 0    50   ~ 0
CH3
Text Label 4950 6700 0    50   ~ 0
CH4
Text Label 4950 6800 0    50   ~ 0
CH5
NoConn ~ 3350 5200
NoConn ~ 3350 5100
NoConn ~ 3350 5000
Wire Wire Line
	4650 6400 4950 6400
Wire Wire Line
	4950 6500 4650 6500
Wire Wire Line
	4650 6600 4950 6600
Wire Wire Line
	4950 6700 4650 6700
Wire Wire Line
	4650 6800 4950 6800
$Comp
L Device:R_Pack10 RN1
U 1 1 5D8CFAC8
P 1750 5000
F 0 "RN1" H 2238 5046 50  0000 L CNN
F 1 "100k" H 2238 4955 50  0000 L CNN
F 2 "Package_DIP:DIP-20_W7.62mm" V 2325 5000 50  0001 C CNN
F 3 "~" H 1750 5000 50  0001 C CNN
	1    1750 5000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2250 6250 2250 6200
Wire Wire Line
	2150 6250 2150 6100
Wire Wire Line
	2050 6250 2050 6000
Wire Wire Line
	1950 6250 1950 5900
Wire Wire Line
	1850 6250 1850 5800
Wire Wire Line
	1750 6250 1750 5700
Wire Wire Line
	1650 6250 1650 5600
Wire Wire Line
	1550 6250 1550 5500
Wire Wire Line
	1450 6250 1450 5400
Wire Wire Line
	1350 6250 1350 5300
$Comp
L Device:R_Network10 RN2
U 1 1 5D8DF078
P 1750 6450
F 0 "RN2" H 2400 6450 50  0000 R CNN
F 1 "10k" H 2350 6550 50  0000 R CNN
F 2 "Resistor_THT:R_Array_SIP11" V 2325 6450 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 1750 6450 50  0001 C CNN
	1    1750 6450
	-1   0    0    1   
$EndComp
Wire Wire Line
	2250 6650 2250 7000
Wire Wire Line
	2250 7000 3300 7000
Connection ~ 3300 7000
Wire Wire Line
	1150 5300 1350 5300
Connection ~ 1350 5300
Wire Wire Line
	1350 5300 1350 5200
Wire Wire Line
	1150 5400 1450 5400
Connection ~ 1450 5400
Wire Wire Line
	1450 5400 1450 5200
Wire Wire Line
	1150 5500 1550 5500
Connection ~ 1550 5500
Wire Wire Line
	1550 5500 1550 5200
Wire Wire Line
	1150 5600 1650 5600
Connection ~ 1650 5600
Wire Wire Line
	1650 5600 1650 5200
Wire Wire Line
	1150 5700 1750 5700
Connection ~ 1750 5700
Wire Wire Line
	1750 5700 1750 5200
Wire Wire Line
	1150 5800 1850 5800
Connection ~ 1850 5800
Wire Wire Line
	1850 5800 1850 5200
Wire Wire Line
	1150 5900 1950 5900
Connection ~ 1950 5900
Wire Wire Line
	1950 5900 1950 5200
Wire Wire Line
	1150 6000 2050 6000
Connection ~ 2050 6000
Wire Wire Line
	2050 6000 2050 5200
Wire Wire Line
	1150 6100 2150 6100
Connection ~ 2150 6100
Wire Wire Line
	2150 6100 2150 5200
Wire Wire Line
	1150 6200 2250 6200
Connection ~ 2250 6200
Wire Wire Line
	2250 6200 2250 5200
Wire Wire Line
	2250 6200 3350 6200
Wire Wire Line
	2150 6100 3350 6100
Wire Wire Line
	2050 6000 3350 6000
Wire Wire Line
	1950 5900 3350 5900
Wire Wire Line
	1850 5800 3350 5800
Wire Wire Line
	1750 5700 3350 5700
Wire Wire Line
	1650 5600 3350 5600
Wire Wire Line
	1550 5500 3350 5500
Wire Wire Line
	1450 5400 3350 5400
Wire Wire Line
	1350 5300 3350 5300
Text Label 1350 4700 1    50   ~ 0
AI0
Text Label 1450 4700 1    50   ~ 0
AI1
Text Label 1550 4700 1    50   ~ 0
AI2
Text Label 1650 4700 1    50   ~ 0
AI3
Text Label 1750 4700 1    50   ~ 0
AI4
Text Label 1850 4700 1    50   ~ 0
AI5
Text Label 1950 4700 1    50   ~ 0
AI6
Text Label 2050 4700 1    50   ~ 0
AI7
Text Label 2150 4700 1    50   ~ 0
AI8
Text Label 2250 4700 1    50   ~ 0
AI9
Wire Wire Line
	2250 4700 2250 4800
Wire Wire Line
	2150 4800 2150 4700
Wire Wire Line
	2050 4700 2050 4800
Wire Wire Line
	1950 4800 1950 4700
Wire Wire Line
	1850 4700 1850 4800
Wire Wire Line
	1750 4800 1750 4700
Wire Wire Line
	1650 4700 1650 4800
Wire Wire Line
	1550 4800 1550 4700
Wire Wire Line
	1450 4700 1450 4800
Wire Wire Line
	1350 4800 1350 4700
$Comp
L Transistor_Array:ULN2803A U2
U 1 1 5D92F5C8
P 9650 2250
F 0 "U2" H 9650 2817 50  0000 C CNN
F 1 "ULN2803A" H 9650 2726 50  0000 C CNN
F 2 "Package_SO:SOIC-18W_7.5x11.6mm_P1.27mm" H 9700 1600 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2803a.pdf" H 9750 2050 50  0001 C CNN
	1    9650 2250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Network04 RN3
U 1 1 5D92F745
P 9050 1650
F 0 "RN3" H 9230 1696 50  0000 L CNN
F 1 "100k" V 8750 1550 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP5" V 9325 1650 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 9050 1650 50  0001 C CNN
	1    9050 1650
	1    0    0    -1  
$EndComp
Text Label 8700 2350 2    50   ~ 0
PWM_CH1
Text Label 8700 2250 2    50   ~ 0
PWM_CH2
Text Label 8700 2150 2    50   ~ 0
PWM_CH3
Text Label 8700 2050 2    50   ~ 0
PWM_CH4
Wire Wire Line
	10050 2450 10250 2450
Wire Wire Line
	10050 2550 10250 2550
Wire Wire Line
	10050 2650 10250 2650
Wire Wire Line
	10050 2750 10150 2750
Text Label 10700 2350 0    50   ~ 0
OUT4
Text Label 10700 2250 0    50   ~ 0
OUT3
Text Label 10700 2150 0    50   ~ 0
OUT2
Text Label 10700 2050 0    50   ~ 0
OUT1
Wire Wire Line
	8700 2050 9250 2050
Wire Wire Line
	8700 2150 9250 2150
Wire Wire Line
	8700 2250 9250 2250
Wire Wire Line
	8700 2350 9250 2350
Wire Wire Line
	8850 1850 8850 2750
Wire Wire Line
	8850 2750 9250 2750
Wire Wire Line
	8950 2650 8950 1850
Wire Wire Line
	9050 1850 9050 2550
Wire Wire Line
	9050 2550 9250 2550
Wire Wire Line
	9150 1850 9150 2450
Wire Wire Line
	9150 2450 9250 2450
Text Label 8700 2450 2    50   ~ 0
IN1
Text Label 8700 2550 2    50   ~ 0
IN2
Text Label 8700 2650 2    50   ~ 0
IN3
Text Label 8700 2750 2    50   ~ 0
IN4
Wire Wire Line
	8700 2450 9150 2450
Connection ~ 9150 2450
Wire Wire Line
	8700 2550 9050 2550
Connection ~ 9050 2550
Wire Wire Line
	8700 2650 8950 2650
Connection ~ 8950 2650
Wire Wire Line
	8950 2650 9250 2650
Wire Wire Line
	8700 2750 8850 2750
Connection ~ 8850 2750
Wire Wire Line
	8850 1450 8850 1350
Wire Wire Line
	8850 1350 10100 1350
Wire Wire Line
	10100 1350 10100 1950
Wire Wire Line
	10100 1950 10050 1950
$Comp
L power:VCC #PWR04
U 1 1 5D993C6C
P 8850 1200
F 0 "#PWR04" H 8850 1050 50  0001 C CNN
F 1 "VCC" V 8850 1400 50  0000 C CNN
F 2 "" H 8850 1200 50  0001 C CNN
F 3 "" H 8850 1200 50  0001 C CNN
	1    8850 1200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8850 1200 8850 1350
Connection ~ 8850 1350
$Comp
L power:Earth #PWR05
U 1 1 5D997ADF
P 9650 3050
F 0 "#PWR05" H 9650 2800 50  0001 C CNN
F 1 "Earth" H 9650 2900 50  0001 C CNN
F 2 "" H 9650 3050 50  0001 C CNN
F 3 "~" H 9650 3050 50  0001 C CNN
	1    9650 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3050 9650 2950
$Comp
L Connector:Conn_01x03_Male J1
U 1 1 5D99BB31
P 4700 1250
F 0 "J1" V 4500 1300 50  0000 L CNN
F 1 "AIN0" V 4600 1200 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 4700 1250 50  0001 C CNN
F 3 "~" H 4700 1250 50  0001 C CNN
	1    4700 1250
	0    -1   1    0   
$EndComp
Text Label 4800 1550 3    50   ~ 0
AI0
Wire Wire Line
	4600 1700 4600 1450
$Comp
L power:+5V #PWR06
U 1 1 5D9AB5B0
P 4600 1700
F 0 "#PWR06" H 4600 1550 50  0001 C CNN
F 1 "+5V" V 4600 1900 50  0000 C CNN
F 2 "" H 4600 1700 50  0001 C CNN
F 3 "" H 4600 1700 50  0001 C CNN
	1    4600 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 1550 4800 1450
$Comp
L power:Earth #PWR08
U 1 1 5D9B340B
P 4700 1750
F 0 "#PWR08" H 4700 1500 50  0001 C CNN
F 1 "Earth" H 4700 1600 50  0001 C CNN
F 2 "" H 4700 1750 50  0001 C CNN
F 3 "~" H 4700 1750 50  0001 C CNN
	1    4700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 1750 4700 1450
$Comp
L Connector:Conn_01x03_Male J3
U 1 1 5D9B74BF
P 5050 1250
F 0 "J3" V 4850 1300 50  0000 L CNN
F 1 "AIN1" V 4950 1200 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 5050 1250 50  0001 C CNN
F 3 "~" H 5050 1250 50  0001 C CNN
	1    5050 1250
	0    -1   1    0   
$EndComp
Text Label 5150 1550 3    50   ~ 0
AI1
Wire Wire Line
	4950 1700 4950 1450
$Comp
L power:+5V #PWR010
U 1 1 5D9B74C8
P 4950 1700
F 0 "#PWR010" H 4950 1550 50  0001 C CNN
F 1 "+5V" V 4950 1900 50  0000 C CNN
F 2 "" H 4950 1700 50  0001 C CNN
F 3 "" H 4950 1700 50  0001 C CNN
	1    4950 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 1550 5150 1450
$Comp
L power:Earth #PWR012
U 1 1 5D9B74CF
P 5050 1750
F 0 "#PWR012" H 5050 1500 50  0001 C CNN
F 1 "Earth" H 5050 1600 50  0001 C CNN
F 2 "" H 5050 1750 50  0001 C CNN
F 3 "~" H 5050 1750 50  0001 C CNN
	1    5050 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 1750 5050 1450
$Comp
L Connector:Conn_01x03_Male J5
U 1 1 5D9BB88F
P 5400 1250
F 0 "J5" V 5200 1300 50  0000 L CNN
F 1 "AIN2" V 5300 1200 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 5400 1250 50  0001 C CNN
F 3 "~" H 5400 1250 50  0001 C CNN
	1    5400 1250
	0    -1   1    0   
$EndComp
Text Label 5500 1550 3    50   ~ 0
AI2
Wire Wire Line
	5300 1700 5300 1450
$Comp
L power:+5V #PWR014
U 1 1 5D9BB898
P 5300 1700
F 0 "#PWR014" H 5300 1550 50  0001 C CNN
F 1 "+5V" V 5300 1900 50  0000 C CNN
F 2 "" H 5300 1700 50  0001 C CNN
F 3 "" H 5300 1700 50  0001 C CNN
	1    5300 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 1550 5500 1450
$Comp
L power:Earth #PWR016
U 1 1 5D9BB89F
P 5400 1750
F 0 "#PWR016" H 5400 1500 50  0001 C CNN
F 1 "Earth" H 5400 1600 50  0001 C CNN
F 2 "" H 5400 1750 50  0001 C CNN
F 3 "~" H 5400 1750 50  0001 C CNN
	1    5400 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1750 5400 1450
$Comp
L Connector:Conn_01x03_Male J7
U 1 1 5D9BB8A6
P 5750 1250
F 0 "J7" V 5550 1300 50  0000 L CNN
F 1 "AIN3" V 5650 1200 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 5750 1250 50  0001 C CNN
F 3 "~" H 5750 1250 50  0001 C CNN
	1    5750 1250
	0    -1   1    0   
$EndComp
Text Label 5850 1550 3    50   ~ 0
AI3
Wire Wire Line
	5650 1700 5650 1450
$Comp
L power:+5V #PWR018
U 1 1 5D9BB8AF
P 5650 1700
F 0 "#PWR018" H 5650 1550 50  0001 C CNN
F 1 "+5V" V 5650 1900 50  0000 C CNN
F 2 "" H 5650 1700 50  0001 C CNN
F 3 "" H 5650 1700 50  0001 C CNN
	1    5650 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 1550 5850 1450
$Comp
L power:Earth #PWR020
U 1 1 5D9BB8B6
P 5750 1750
F 0 "#PWR020" H 5750 1500 50  0001 C CNN
F 1 "Earth" H 5750 1600 50  0001 C CNN
F 2 "" H 5750 1750 50  0001 C CNN
F 3 "~" H 5750 1750 50  0001 C CNN
	1    5750 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 1750 5750 1450
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 5D9C0479
P 6100 1250
F 0 "J9" V 5900 1300 50  0000 L CNN
F 1 "AIN4" V 6000 1200 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 6100 1250 50  0001 C CNN
F 3 "~" H 6100 1250 50  0001 C CNN
	1    6100 1250
	0    -1   1    0   
$EndComp
Text Label 6200 1550 3    50   ~ 0
AI4
Wire Wire Line
	6000 1700 6000 1450
$Comp
L power:+5V #PWR022
U 1 1 5D9C0482
P 6000 1700
F 0 "#PWR022" H 6000 1550 50  0001 C CNN
F 1 "+5V" V 6000 1900 50  0000 C CNN
F 2 "" H 6000 1700 50  0001 C CNN
F 3 "" H 6000 1700 50  0001 C CNN
	1    6000 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 1550 6200 1450
$Comp
L power:Earth #PWR024
U 1 1 5D9C0489
P 6100 1750
F 0 "#PWR024" H 6100 1500 50  0001 C CNN
F 1 "Earth" H 6100 1600 50  0001 C CNN
F 2 "" H 6100 1750 50  0001 C CNN
F 3 "~" H 6100 1750 50  0001 C CNN
	1    6100 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 1750 6100 1450
$Comp
L Connector:Conn_01x03_Male J11
U 1 1 5D9C0490
P 4700 2400
F 0 "J11" V 4500 2400 50  0000 L CNN
F 1 "AIN5" V 4600 2350 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 4700 2400 50  0001 C CNN
F 3 "~" H 4700 2400 50  0001 C CNN
	1    4700 2400
	0    -1   1    0   
$EndComp
Text Label 4800 2700 3    50   ~ 0
AI5
Wire Wire Line
	4600 2850 4600 2600
$Comp
L power:+5V #PWR026
U 1 1 5D9C0499
P 4600 2850
F 0 "#PWR026" H 4600 2700 50  0001 C CNN
F 1 "+5V" V 4600 3050 50  0000 C CNN
F 2 "" H 4600 2850 50  0001 C CNN
F 3 "" H 4600 2850 50  0001 C CNN
	1    4600 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	4800 2700 4800 2600
$Comp
L power:Earth #PWR028
U 1 1 5D9C04A0
P 4700 2900
F 0 "#PWR028" H 4700 2650 50  0001 C CNN
F 1 "Earth" H 4700 2750 50  0001 C CNN
F 2 "" H 4700 2900 50  0001 C CNN
F 3 "~" H 4700 2900 50  0001 C CNN
	1    4700 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2900 4700 2600
$Comp
L Connector:Conn_01x03_Male J13
U 1 1 5D9C04A7
P 5050 2400
F 0 "J13" V 4850 2400 50  0000 L CNN
F 1 "AIN6" V 4950 2350 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 5050 2400 50  0001 C CNN
F 3 "~" H 5050 2400 50  0001 C CNN
	1    5050 2400
	0    -1   1    0   
$EndComp
Text Label 5150 2700 3    50   ~ 0
AI6
Wire Wire Line
	4950 2850 4950 2600
$Comp
L power:+5V #PWR030
U 1 1 5D9C04B0
P 4950 2850
F 0 "#PWR030" H 4950 2700 50  0001 C CNN
F 1 "+5V" V 4950 3050 50  0000 C CNN
F 2 "" H 4950 2850 50  0001 C CNN
F 3 "" H 4950 2850 50  0001 C CNN
	1    4950 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5150 2700 5150 2600
$Comp
L power:Earth #PWR032
U 1 1 5D9C04B7
P 5050 2900
F 0 "#PWR032" H 5050 2650 50  0001 C CNN
F 1 "Earth" H 5050 2750 50  0001 C CNN
F 2 "" H 5050 2900 50  0001 C CNN
F 3 "~" H 5050 2900 50  0001 C CNN
	1    5050 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5050 2900 5050 2600
$Comp
L Connector:Conn_01x03_Male J15
U 1 1 5D9C04BE
P 5400 2400
F 0 "J15" V 5200 2400 50  0000 L CNN
F 1 "AIN7" V 5300 2350 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 5400 2400 50  0001 C CNN
F 3 "~" H 5400 2400 50  0001 C CNN
	1    5400 2400
	0    -1   1    0   
$EndComp
Text Label 5500 2700 3    50   ~ 0
AI7
Wire Wire Line
	5300 2850 5300 2600
$Comp
L power:+5V #PWR034
U 1 1 5D9C04C7
P 5300 2850
F 0 "#PWR034" H 5300 2700 50  0001 C CNN
F 1 "+5V" V 5300 3050 50  0000 C CNN
F 2 "" H 5300 2850 50  0001 C CNN
F 3 "" H 5300 2850 50  0001 C CNN
	1    5300 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5500 2700 5500 2600
$Comp
L power:Earth #PWR036
U 1 1 5D9C04CE
P 5400 2900
F 0 "#PWR036" H 5400 2650 50  0001 C CNN
F 1 "Earth" H 5400 2750 50  0001 C CNN
F 2 "" H 5400 2900 50  0001 C CNN
F 3 "~" H 5400 2900 50  0001 C CNN
	1    5400 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 2900 5400 2600
$Comp
L Connector:Conn_01x03_Male J17
U 1 1 5D9C5E7A
P 5750 2400
F 0 "J17" V 5550 2400 50  0000 L CNN
F 1 "AIN8" V 5650 2350 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 5750 2400 50  0001 C CNN
F 3 "~" H 5750 2400 50  0001 C CNN
	1    5750 2400
	0    -1   1    0   
$EndComp
Text Label 5850 2700 3    50   ~ 0
AI8
Wire Wire Line
	5650 2850 5650 2600
$Comp
L power:+5V #PWR038
U 1 1 5D9C5E83
P 5650 2850
F 0 "#PWR038" H 5650 2700 50  0001 C CNN
F 1 "+5V" V 5650 3050 50  0000 C CNN
F 2 "" H 5650 2850 50  0001 C CNN
F 3 "" H 5650 2850 50  0001 C CNN
	1    5650 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	5850 2700 5850 2600
$Comp
L power:Earth #PWR039
U 1 1 5D9C5E8A
P 5750 2900
F 0 "#PWR039" H 5750 2650 50  0001 C CNN
F 1 "Earth" H 5750 2750 50  0001 C CNN
F 2 "" H 5750 2900 50  0001 C CNN
F 3 "~" H 5750 2900 50  0001 C CNN
	1    5750 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5750 2900 5750 2600
$Comp
L Connector:Conn_01x03_Male J18
U 1 1 5D9C5E91
P 6100 2400
F 0 "J18" V 5900 2400 50  0000 L CNN
F 1 "AIN9" V 6000 2350 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 6100 2400 50  0001 C CNN
F 3 "~" H 6100 2400 50  0001 C CNN
	1    6100 2400
	0    -1   1    0   
$EndComp
Text Label 6200 2700 3    50   ~ 0
AI9
Wire Wire Line
	6000 2850 6000 2600
$Comp
L power:+5V #PWR040
U 1 1 5D9C5E9A
P 6000 2850
F 0 "#PWR040" H 6000 2700 50  0001 C CNN
F 1 "+5V" V 6000 3050 50  0000 C CNN
F 2 "" H 6000 2850 50  0001 C CNN
F 3 "" H 6000 2850 50  0001 C CNN
	1    6000 2850
	-1   0    0    1   
$EndComp
Wire Wire Line
	6200 2700 6200 2600
$Comp
L power:Earth #PWR041
U 1 1 5D9C5EA1
P 6100 2900
F 0 "#PWR041" H 6100 2650 50  0001 C CNN
F 1 "Earth" H 6100 2750 50  0001 C CNN
F 2 "" H 6100 2900 50  0001 C CNN
F 3 "~" H 6100 2900 50  0001 C CNN
	1    6100 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 2900 6100 2600
$Comp
L Connector:Conn_01x08_Male J19
U 1 1 5D9D2C19
P 3400 2350
F 0 "J19" V 3235 2276 50  0000 C CNN
F 1 "RC CHANNEL" V 3326 2276 50  0000 C CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0810_1x08_P1.25mm_Vertical" H 3400 2350 50  0001 C CNN
F 3 "~" H 3400 2350 50  0001 C CNN
	1    3400 2350
	0    1    1    0   
$EndComp
Text Label 3500 2650 3    50   ~ 0
CH1
Text Label 3400 2650 3    50   ~ 0
CH2
Text Label 3300 2650 3    50   ~ 0
CH3
Text Label 3200 2650 3    50   ~ 0
CH4
Text Label 3100 2650 3    50   ~ 0
CH5
Wire Wire Line
	3100 2650 3100 2550
Wire Wire Line
	3200 2550 3200 2650
Wire Wire Line
	3300 2650 3300 2550
Wire Wire Line
	3400 2650 3400 2550
Wire Wire Line
	3500 2650 3500 2550
$Comp
L power:+5V #PWR042
U 1 1 5DA14F6D
P 3600 2650
F 0 "#PWR042" H 3600 2500 50  0001 C CNN
F 1 "+5V" V 3600 2850 50  0000 C CNN
F 2 "" H 3600 2650 50  0001 C CNN
F 3 "" H 3600 2650 50  0001 C CNN
	1    3600 2650
	-1   0    0    1   
$EndComp
Wire Wire Line
	3600 2650 3600 2550
$Comp
L power:Earth #PWR043
U 1 1 5DA1B611
P 3700 2850
F 0 "#PWR043" H 3700 2600 50  0001 C CNN
F 1 "Earth" H 3700 2700 50  0001 C CNN
F 2 "" H 3700 2850 50  0001 C CNN
F 3 "~" H 3700 2850 50  0001 C CNN
	1    3700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 2850 3700 2550
$Comp
L Connector:Conn_01x03_Male J2
U 1 1 5DA296F3
P 7000 1250
F 0 "J2" V 6800 1300 50  0000 L CNN
F 1 "IN1" V 6900 1250 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 7000 1250 50  0001 C CNN
F 3 "~" H 7000 1250 50  0001 C CNN
	1    7000 1250
	0    -1   1    0   
$EndComp
Wire Wire Line
	6900 1700 6900 1450
Wire Wire Line
	7100 1550 7100 1450
$Comp
L power:Earth #PWR09
U 1 1 5DA29703
P 7000 1750
F 0 "#PWR09" H 7000 1500 50  0001 C CNN
F 1 "Earth" H 7000 1600 50  0001 C CNN
F 2 "" H 7000 1750 50  0001 C CNN
F 3 "~" H 7000 1750 50  0001 C CNN
	1    7000 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 1750 7000 1450
$Comp
L Connector:Conn_01x03_Male J4
U 1 1 5DA2970A
P 7350 1250
F 0 "J4" V 7150 1300 50  0000 L CNN
F 1 "IN2" V 7250 1200 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 7350 1250 50  0001 C CNN
F 3 "~" H 7350 1250 50  0001 C CNN
	1    7350 1250
	0    -1   1    0   
$EndComp
Wire Wire Line
	7250 1700 7250 1450
Wire Wire Line
	7450 1550 7450 1450
$Comp
L power:Earth #PWR013
U 1 1 5DA2971A
P 7350 1750
F 0 "#PWR013" H 7350 1500 50  0001 C CNN
F 1 "Earth" H 7350 1600 50  0001 C CNN
F 2 "" H 7350 1750 50  0001 C CNN
F 3 "~" H 7350 1750 50  0001 C CNN
	1    7350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 1750 7350 1450
$Comp
L Connector:Conn_01x03_Male J6
U 1 1 5DA29721
P 7700 1250
F 0 "J6" V 7500 1300 50  0000 L CNN
F 1 "IN3" V 7600 1200 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 7700 1250 50  0001 C CNN
F 3 "~" H 7700 1250 50  0001 C CNN
	1    7700 1250
	0    -1   1    0   
$EndComp
Wire Wire Line
	7600 1700 7600 1450
Wire Wire Line
	7800 1550 7800 1450
$Comp
L power:Earth #PWR017
U 1 1 5DA29731
P 7700 1750
F 0 "#PWR017" H 7700 1500 50  0001 C CNN
F 1 "Earth" H 7700 1600 50  0001 C CNN
F 2 "" H 7700 1750 50  0001 C CNN
F 3 "~" H 7700 1750 50  0001 C CNN
	1    7700 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 1750 7700 1450
$Comp
L Connector:Conn_01x03_Male J8
U 1 1 5DA29738
P 8050 1250
F 0 "J8" V 7850 1300 50  0000 L CNN
F 1 "IN4" V 7950 1200 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 8050 1250 50  0001 C CNN
F 3 "~" H 8050 1250 50  0001 C CNN
	1    8050 1250
	0    -1   1    0   
$EndComp
Wire Wire Line
	7950 1700 7950 1450
Wire Wire Line
	8150 1550 8150 1450
$Comp
L power:Earth #PWR021
U 1 1 5DA29748
P 8050 1750
F 0 "#PWR021" H 8050 1500 50  0001 C CNN
F 1 "Earth" H 8050 1600 50  0001 C CNN
F 2 "" H 8050 1750 50  0001 C CNN
F 3 "~" H 8050 1750 50  0001 C CNN
	1    8050 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 1750 8050 1450
$Comp
L Connector:Conn_01x03_Male J10
U 1 1 5DA2974F
P 7000 2350
F 0 "J10" V 6800 2350 50  0000 L CNN
F 1 "OUT1" V 6900 2300 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 7000 2350 50  0001 C CNN
F 3 "~" H 7000 2350 50  0001 C CNN
	1    7000 2350
	0    -1   1    0   
$EndComp
Wire Wire Line
	6900 2800 6900 2550
Wire Wire Line
	7100 2650 7100 2550
$Comp
L power:Earth #PWR025
U 1 1 5DA2975F
P 7000 2850
F 0 "#PWR025" H 7000 2600 50  0001 C CNN
F 1 "Earth" H 7000 2700 50  0001 C CNN
F 2 "" H 7000 2850 50  0001 C CNN
F 3 "~" H 7000 2850 50  0001 C CNN
	1    7000 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7000 2850 7000 2550
$Comp
L Connector:Conn_01x03_Male J12
U 1 1 5DA29766
P 7350 2350
F 0 "J12" V 7150 2350 50  0000 L CNN
F 1 "OUT2" V 7250 2300 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 7350 2350 50  0001 C CNN
F 3 "~" H 7350 2350 50  0001 C CNN
	1    7350 2350
	0    -1   1    0   
$EndComp
Wire Wire Line
	7250 2800 7250 2550
Wire Wire Line
	7450 2650 7450 2550
$Comp
L power:Earth #PWR029
U 1 1 5DA29776
P 7350 2850
F 0 "#PWR029" H 7350 2600 50  0001 C CNN
F 1 "Earth" H 7350 2700 50  0001 C CNN
F 2 "" H 7350 2850 50  0001 C CNN
F 3 "~" H 7350 2850 50  0001 C CNN
	1    7350 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7350 2850 7350 2550
$Comp
L Connector:Conn_01x03_Male J14
U 1 1 5DA2977D
P 7700 2350
F 0 "J14" V 7500 2350 50  0000 L CNN
F 1 "OUT3" V 7600 2300 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 7700 2350 50  0001 C CNN
F 3 "~" H 7700 2350 50  0001 C CNN
	1    7700 2350
	0    -1   1    0   
$EndComp
Wire Wire Line
	7600 2800 7600 2550
Wire Wire Line
	7800 2650 7800 2550
$Comp
L power:Earth #PWR033
U 1 1 5DA2978D
P 7700 2850
F 0 "#PWR033" H 7700 2600 50  0001 C CNN
F 1 "Earth" H 7700 2700 50  0001 C CNN
F 2 "" H 7700 2850 50  0001 C CNN
F 3 "~" H 7700 2850 50  0001 C CNN
	1    7700 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 2850 7700 2550
$Comp
L Connector:Conn_01x03_Male J16
U 1 1 5DA29794
P 8050 2350
F 0 "J16" V 7850 2350 50  0000 L CNN
F 1 "OUT4" V 7950 2300 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 8050 2350 50  0001 C CNN
F 3 "~" H 8050 2350 50  0001 C CNN
	1    8050 2350
	0    -1   1    0   
$EndComp
Wire Wire Line
	7950 2800 7950 2550
Wire Wire Line
	8150 2650 8150 2550
$Comp
L power:Earth #PWR037
U 1 1 5DA297A4
P 8050 2850
F 0 "#PWR037" H 8050 2600 50  0001 C CNN
F 1 "Earth" H 8050 2700 50  0001 C CNN
F 2 "" H 8050 2850 50  0001 C CNN
F 3 "~" H 8050 2850 50  0001 C CNN
	1    8050 2850
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 2850 8050 2550
Text Label 7100 1550 3    50   ~ 0
IN1
Text Label 7450 1550 3    50   ~ 0
IN2
Text Label 7800 1550 3    50   ~ 0
IN3
Text Label 8150 1550 3    50   ~ 0
IN4
Text Label 8150 2650 3    50   ~ 0
OUT4
Text Label 7800 2650 3    50   ~ 0
OUT3
Text Label 7450 2650 3    50   ~ 0
OUT2
Text Label 7100 2650 3    50   ~ 0
OUT1
Text Label 3000 2650 3    50   ~ 0
CH6
Wire Wire Line
	3000 2650 3000 2550
Text Label 10250 2750 0    50   ~ 0
PA15
Text Label 10250 2650 0    50   ~ 0
PB3
Text Label 10250 2550 0    50   ~ 0
PB4
Text Label 10250 2450 0    50   ~ 0
PB5
$Comp
L Connector:Conn_01x04_Male J20
U 1 1 5DAC031B
P 2700 1250
F 0 "J20" V 2500 1200 50  0000 L CNN
F 1 "CON1" V 2600 1150 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0410_1x04_P1.25mm_Vertical" H 2700 1250 50  0001 C CNN
F 3 "~" H 2700 1250 50  0001 C CNN
	1    2700 1250
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J21
U 1 1 5DAC0B75
P 3250 1250
F 0 "J21" V 3050 1250 50  0000 L CNN
F 1 "COM2" V 3150 1150 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0410_1x04_P1.25mm_Vertical" H 3250 1250 50  0001 C CNN
F 3 "~" H 3250 1250 50  0001 C CNN
	1    3250 1250
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Male J22
U 1 1 5DAC0BCB
P 3800 1250
F 0 "J22" V 3600 1250 50  0000 L CNN
F 1 "CON3" V 3700 1200 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0410_1x04_P1.25mm_Vertical" H 3800 1250 50  0001 C CNN
F 3 "~" H 3800 1250 50  0001 C CNN
	1    3800 1250
	0    -1   1    0   
$EndComp
Text Label 2700 1550 3    50   ~ 0
RX1
Text Label 2600 1550 3    50   ~ 0
TX1
Wire Wire Line
	2600 1550 2600 1450
Wire Wire Line
	2700 1550 2700 1450
Text Label 3250 1550 3    50   ~ 0
RX3_SDA2
Text Label 3150 1550 3    50   ~ 0
TX3_SDL2
Wire Wire Line
	3150 1550 3150 1450
Wire Wire Line
	3250 1550 3250 1450
Text Label 4950 6000 0    50   ~ 0
CANTX_USB+
Text Label 4950 6100 0    50   ~ 0
CANRX_USB-
Wire Wire Line
	4950 6000 4650 6000
Wire Wire Line
	4650 6100 4950 6100
Text Label 3800 1550 3    50   ~ 0
CANRX_USB-
Text Label 3700 1550 3    50   ~ 0
CANTX_USB+
Wire Wire Line
	3700 1450 3700 1550
Wire Wire Line
	3800 1550 3800 1450
$Comp
L power:Earth #PWR044
U 1 1 5DB9C492
P 2800 1750
F 0 "#PWR044" H 2800 1500 50  0001 C CNN
F 1 "Earth" H 2800 1600 50  0001 C CNN
F 2 "" H 2800 1750 50  0001 C CNN
F 3 "~" H 2800 1750 50  0001 C CNN
	1    2800 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1750 2800 1450
$Comp
L power:Earth #PWR046
U 1 1 5DBA5E56
P 3350 1750
F 0 "#PWR046" H 3350 1500 50  0001 C CNN
F 1 "Earth" H 3350 1600 50  0001 C CNN
F 2 "" H 3350 1750 50  0001 C CNN
F 3 "~" H 3350 1750 50  0001 C CNN
	1    3350 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 1750 3350 1450
$Comp
L power:Earth #PWR048
U 1 1 5DBC3041
P 3900 1750
F 0 "#PWR048" H 3900 1500 50  0001 C CNN
F 1 "Earth" H 3900 1600 50  0001 C CNN
F 2 "" H 3900 1750 50  0001 C CNN
F 3 "~" H 3900 1750 50  0001 C CNN
	1    3900 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	3900 1750 3900 1450
$Comp
L power:+5V #PWR045
U 1 1 5DBCCD38
P 2900 1700
F 0 "#PWR045" H 2900 1550 50  0001 C CNN
F 1 "+5V" V 2900 1900 50  0000 C CNN
F 2 "" H 2900 1700 50  0001 C CNN
F 3 "" H 2900 1700 50  0001 C CNN
	1    2900 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	2900 1700 2900 1450
$Comp
L power:+5V #PWR047
U 1 1 5DBD6C46
P 3450 1700
F 0 "#PWR047" H 3450 1550 50  0001 C CNN
F 1 "+5V" V 3450 1900 50  0000 C CNN
F 2 "" H 3450 1700 50  0001 C CNN
F 3 "" H 3450 1700 50  0001 C CNN
	1    3450 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	3450 1700 3450 1450
$Comp
L power:+5V #PWR049
U 1 1 5DBE0CA3
P 4000 1700
F 0 "#PWR049" H 4000 1550 50  0001 C CNN
F 1 "+5V" V 4000 1900 50  0000 C CNN
F 2 "" H 4000 1700 50  0001 C CNN
F 3 "" H 4000 1700 50  0001 C CNN
	1    4000 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 1700 4000 1450
$Comp
L power:VCC #PWR023
U 1 1 5DBEAF9D
P 6900 2800
F 0 "#PWR023" H 6900 2650 50  0001 C CNN
F 1 "VCC" V 6900 3000 50  0000 C CNN
F 2 "" H 6900 2800 50  0001 C CNN
F 3 "" H 6900 2800 50  0001 C CNN
	1    6900 2800
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR027
U 1 1 5DBEB409
P 7250 2800
F 0 "#PWR027" H 7250 2650 50  0001 C CNN
F 1 "VCC" V 7250 3000 50  0000 C CNN
F 2 "" H 7250 2800 50  0001 C CNN
F 3 "" H 7250 2800 50  0001 C CNN
	1    7250 2800
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR031
U 1 1 5DBEB44A
P 7600 2800
F 0 "#PWR031" H 7600 2650 50  0001 C CNN
F 1 "VCC" V 7600 3000 50  0000 C CNN
F 2 "" H 7600 2800 50  0001 C CNN
F 3 "" H 7600 2800 50  0001 C CNN
	1    7600 2800
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR035
U 1 1 5DBEB48B
P 7950 2800
F 0 "#PWR035" H 7950 2650 50  0001 C CNN
F 1 "VCC" V 7950 3000 50  0000 C CNN
F 2 "" H 7950 2800 50  0001 C CNN
F 3 "" H 7950 2800 50  0001 C CNN
	1    7950 2800
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x03_Male J23
U 1 1 5DBF6F49
P 1100 1150
F 0 "J23" V 900 1150 50  0000 L CNN
F 1 "VIN" V 1000 1150 50  0000 L CNN
F 2 "Connector_Molex:Molex_PicoBlade_53047-0310_1x03_P1.25mm_Vertical" H 1100 1150 50  0001 C CNN
F 3 "~" H 1100 1150 50  0001 C CNN
	1    1100 1150
	0    -1   1    0   
$EndComp
$Comp
L power:+5V #PWR050
U 1 1 5DBF6F52
P 1000 2150
F 0 "#PWR050" H 1000 2000 50  0001 C CNN
F 1 "+5V" V 1000 2350 50  0000 C CNN
F 2 "" H 1000 2150 50  0001 C CNN
F 3 "" H 1000 2150 50  0001 C CNN
	1    1000 2150
	-1   0    0    1   
$EndComp
$Comp
L power:Earth #PWR051
U 1 1 5DBF6F59
P 1100 2150
F 0 "#PWR051" H 1100 1900 50  0001 C CNN
F 1 "Earth" H 1100 2000 50  0001 C CNN
F 2 "" H 1100 2150 50  0001 C CNN
F 3 "~" H 1100 2150 50  0001 C CNN
	1    1100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 2150 1100 1350
$Comp
L power:VCC #PWR052
U 1 1 5DC019B1
P 1200 2150
F 0 "#PWR052" H 1200 2000 50  0001 C CNN
F 1 "VCC" V 1200 2350 50  0000 C CNN
F 2 "" H 1200 2150 50  0001 C CNN
F 3 "" H 1200 2150 50  0001 C CNN
	1    1200 2150
	-1   0    0    1   
$EndComp
Wire Notes Line
	2450 3300 4150 3300
Wire Notes Line
	2450 800  4150 800 
Wire Notes Line
	2450 800  2450 3300
Wire Notes Line
	4150 800  4150 3300
Wire Notes Line
	2200 800  700  800 
Wire Notes Line
	700  800  700  3300
Wire Notes Line
	700  3300 2200 3300
Wire Notes Line
	2200 3300 2200 800 
$Comp
L Device:D_ALT D2
U 1 1 5DE1F9D1
P 1200 1600
F 0 "D2" H 1250 1500 50  0000 R CNN
F 1 "D_ALT" H 1300 1500 50  0001 R CNN
F 2 "Diode_SMD:D_MELF_Handsoldering" H 1200 1600 50  0001 C CNN
F 3 "~" H 1200 1600 50  0001 C CNN
	1    1200 1600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 1750 1200 2000
Wire Wire Line
	1200 1450 1200 1350
$Comp
L Device:D_ALT D1
U 1 1 5DE3878B
P 1000 1600
F 0 "D1" H 950 1500 50  0000 L CNN
F 1 "D_ALT" H 900 1500 50  0001 L CNN
F 2 "Diode_SMD:D_MELF_Handsoldering" H 1000 1600 50  0001 C CNN
F 3 "~" H 1000 1600 50  0001 C CNN
	1    1000 1600
	0    1    -1   0   
$EndComp
Wire Wire Line
	1000 1450 1000 1350
Wire Wire Line
	1000 1750 1000 2000
Text Label 1300 2000 0    50   ~ 0
J2
Wire Wire Line
	1300 2000 1200 2000
Connection ~ 1200 2000
Wire Wire Line
	1200 2000 1200 2150
Text Label 900  2000 2    50   ~ 0
J1
Wire Wire Line
	900  2000 1000 2000
Connection ~ 1000 2000
Wire Wire Line
	1000 2000 1000 2150
$Comp
L Device:Jumper_NO_Small JP1
U 1 1 5DEAB1A8
P 1900 1550
F 0 "JP1" H 1850 1750 50  0000 L CNN
F 1 "5V=VCC" H 1750 1650 50  0000 L CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x02_P2.54mm_Vertical" H 1900 1550 50  0001 C CNN
F 3 "~" H 1900 1550 50  0001 C CNN
	1    1900 1550
	0    1    1    0   
$EndComp
Text Label 1900 1300 1    50   ~ 0
J1
Wire Wire Line
	1900 1300 1900 1450
Text Label 1900 1800 3    50   ~ 0
J2
Wire Wire Line
	1900 1800 1900 1650
Wire Notes Line
	2650 7400 5500 7400
Wire Notes Line
	5500 7400 5500 3950
Wire Notes Line
	5500 3950 2650 3950
Wire Notes Line
	2650 3950 2650 7400
Wire Notes Line
	2400 3950 2400 7400
Wire Notes Line
	2400 7400 700  7400
Wire Notes Line
	700  7400 700  3950
Wire Notes Line
	700  3950 2400 3950
Text Notes 6600 800  0    79   ~ 16
INPUT - OUTPUT (DRIVER)
Text Notes 4400 800  0    79   ~ 16
ADC INPUT    0V - 36V3
Text Notes 700  800  0    79   ~ 16
VIN 5V E VCC
Text Notes 1750 1950 1    50   Italic 10
NÃO CONECTAR O\nJP1 CASO  VCC > 5V
Text Notes 2450 800  0    79   ~ 16
USART CAN USB I2C RC_CH
Text Notes 700  3950 0    79   ~ 16
RES DIV -  36V3 PARA 3V3
Text Notes 750  3200 0    50   ~ 0
CONSIDERE ENTRADA DE \n5V + 0V7  E  VCC + 0V7
Text Notes 2500 3250 0    50   ~ 0
CH6 OCUPA A ENTRADA IN4 (PB15)
Text Label 10250 2850 0    50   ~ 0
CH6
Wire Wire Line
	10250 2850 10150 2850
Wire Wire Line
	10150 2850 10150 2750
Connection ~ 10150 2750
Wire Wire Line
	10150 2750 10250 2750
Text Notes 2650 3950 0    79   ~ 16
STM32F103C8T6 Blue pill
$Comp
L power:VCC #PWR0101
U 1 1 5D8D7629
P 6900 1700
F 0 "#PWR0101" H 6900 1550 50  0001 C CNN
F 1 "VCC" V 6900 1900 50  0000 C CNN
F 2 "" H 6900 1700 50  0001 C CNN
F 3 "" H 6900 1700 50  0001 C CNN
	1    6900 1700
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0102
U 1 1 5D8D7672
P 7250 1700
F 0 "#PWR0102" H 7250 1550 50  0001 C CNN
F 1 "VCC" V 7250 1900 50  0000 C CNN
F 2 "" H 7250 1700 50  0001 C CNN
F 3 "" H 7250 1700 50  0001 C CNN
	1    7250 1700
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0103
U 1 1 5D8D76BB
P 7600 1700
F 0 "#PWR0103" H 7600 1550 50  0001 C CNN
F 1 "VCC" V 7600 1900 50  0000 C CNN
F 2 "" H 7600 1700 50  0001 C CNN
F 3 "" H 7600 1700 50  0001 C CNN
	1    7600 1700
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR0104
U 1 1 5D8D7704
P 7950 1700
F 0 "#PWR0104" H 7950 1550 50  0001 C CNN
F 1 "VCC" V 7950 1900 50  0000 C CNN
F 2 "" H 7950 1700 50  0001 C CNN
F 3 "" H 7950 1700 50  0001 C CNN
	1    7950 1700
	-1   0    0    1   
$EndComp
$Comp
L Device:R_Network04 RN4
U 1 1 5D8E88C8
P 10500 1650
F 0 "RN4" H 10680 1696 50  0000 L CNN
F 1 "100k" V 10200 1550 50  0000 L CNN
F 2 "Resistor_THT:R_Array_SIP5" V 10775 1650 50  0001 C CNN
F 3 "http://www.vishay.com/docs/31509/csc.pdf" H 10500 1650 50  0001 C CNN
	1    10500 1650
	1    0    0    -1  
$EndComp
Wire Wire Line
	10300 1450 10300 1350
Wire Wire Line
	10300 1350 10100 1350
Connection ~ 10100 1350
Wire Wire Line
	10050 2350 10600 2350
Wire Wire Line
	10050 2250 10500 2250
Wire Wire Line
	10050 2150 10400 2150
Wire Wire Line
	10050 2050 10300 2050
Wire Wire Line
	10600 1850 10600 2350
Connection ~ 10600 2350
Wire Wire Line
	10600 2350 10700 2350
Wire Wire Line
	10500 1850 10500 2250
Connection ~ 10500 2250
Wire Wire Line
	10500 2250 10700 2250
Wire Wire Line
	10400 1850 10400 2150
Connection ~ 10400 2150
Wire Wire Line
	10400 2150 10700 2150
Wire Wire Line
	10300 1850 10300 2050
Connection ~ 10300 2050
Wire Wire Line
	10300 2050 10700 2050
Wire Notes Line
	4400 800  6350 800 
Wire Notes Line
	6600 800  11000 800 
Wire Notes Line
	4400 3300 6350 3300
Wire Notes Line
	6350 800  6350 3300
Wire Notes Line
	4400 800  4400 3300
Wire Notes Line
	6600 3300 11000 3300
Wire Notes Line
	6600 800  6600 3300
Wire Notes Line
	11000 800  11000 3300
$EndSCHEMATC
