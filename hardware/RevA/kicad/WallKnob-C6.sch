EESchema Schematic File Version 4
LIBS:power
LIBS:device
LIBS:Connector_Generic
EELAYER 29 0
EELAYER END
$Descr A4 11693 8268
Sheet 1 1
Title "WallKnob-C6 Rev A"
Date "2026-09-11"
Rev "A"
Comp "ESPHome-WallKnob"
Comment1 "ESP32-C6 wall rotary controller; isolated 230VAC to 3V3"
Comment2 "Encoder axis is mechanical datum at PCB center"
Comment3 "Verify creepage/clearance and exact footprints before mains use"
Comment4 "Busch-Jaeger SI compatible front adapter"
$EndDescr
Text Notes 850 850 0 100 ~ 20
PRIMARY / 230 VAC
Text Notes 6100 850 0 100 ~ 20
SELV / 3.3 V
$Comp
L Connector_Generic:Conn_01x02 J1
U 1 1 1
P 1300 1800
F 0 "J1" H 1218 2017 50  0000 C CNN
F 1 "AC_IN_230V" H 1218 1926 50 0000 C CNN
	1    1300 1800
	-1   0 0 -1
$EndComp
$Comp
L Device:Fuse F1
U 1 1 2
P 2300 1800
F 0 "F1" V 2103 1800 50 0000 C CNN
F 1 "TBD_T" V 2194 1800 50 0000 C CNN
	1    2300 1800
	0    1 1 0
$EndComp
$Comp
L Connector_Generic:Conn_01x04 PS1
U 1 1 3
P 4000 2050
F 0 "PS1" H 4080 2042 50 0000 L CNN
F 1 "IRM-01-3.3" H 4080 1951 50 0000 L CNN
	1    4000 2050
	1    0 0 -1
$EndComp
Wire Wire Line
	1500 1800 2150 1800
Wire Wire Line
	2450 1800 3350 1800
Wire Wire Line
	3350 1800 3350 1950
Wire Wire Line
	3350 1950 3800 1950
Wire Wire Line
	1500 1900 3250 1900
Wire Wire Line
	3250 1900 3250 2050
Wire Wire Line
	3250 2050 3800 2050
Text Label 2750 1800 0 50 ~ 0
L_FUSED
Text Label 2750 1900 0 50 ~ 0
N_IN
Text Label 3500 2150 2 50 ~ 0
+3V3
Text Label 3500 2250 2 50 ~ 0
GND
Wire Wire Line
	3500 2150 3800 2150
Wire Wire Line
	3500 2250 3800 2250
Text Notes 3200 2500 0 60 ~ 12
PS1 pin order is logical only. Verify exact IRM-01-3.3 footprint/pin numbering.
$Comp
L Connector_Generic:Conn_01x08 U1
U 1 1 4
P 7200 2200
F 0 "U1" H 7280 2192 50 0000 L CNN
F 1 "ESP32-C6-MINI-1 (logical pins)" H 7280 2101 50 0000 L CNN
	1    7200 2200
	1    0 0 -1
$EndComp
Text Label 6650 1900 2 50 ~ 0
+3V3
Text Label 6650 2000 2 50 ~ 0
GND
Text Label 6650 2100 2 50 ~ 0
ENC_A_GPIO2
Text Label 6650 2200 2 50 ~ 0
ENC_B_GPIO3
Text Label 6650 2300 2 50 ~ 0
ENC_SW_GPIO4
Text Label 6650 2400 2 50 ~ 0
LED_GPIO5
Text Label 6650 2500 2 50 ~ 0
BOOT_GPIO9
Text Label 6650 2600 2 50 ~ 0
EN
Wire Wire Line
	6650 1900 7000 1900
Wire Wire Line
	6650 2000 7000 2000
Wire Wire Line
	6650 2100 7000 2100
Wire Wire Line
	6650 2200 7000 2200
Wire Wire Line
	6650 2300 7000 2300
Wire Wire Line
	6650 2400 7000 2400
Wire Wire Line
	6650 2500 7000 2500
Wire Wire Line
	6650 2600 7000 2600
$Comp
L Connector_Generic:Conn_01x05 SW1
U 1 1 5
P 7200 3900
F 0 "SW1" H 7280 3942 50 0000 L CNN
F 1 "EC11 + PUSH" H 7280 3851 50 0000 L CNN
	1    7200 3900
	1    0 0 -1
$EndComp
Text Label 6550 3700 2 50 ~ 0
ENC_A_GPIO2
Text Label 6550 3800 2 50 ~ 0
GND
Text Label 6550 3900 2 50 ~ 0
ENC_B_GPIO3
Text Label 6550 4000 2 50 ~ 0
ENC_SW_GPIO4
Text Label 6550 4100 2 50 ~ 0
GND
Wire Wire Line
	6550 3700 7000 3700
Wire Wire Line
	6550 3800 7000 3800
Wire Wire Line
	6550 3900 7000 3900
Wire Wire Line
	6550 4000 7000 4000
Wire Wire Line
	6550 4100 7000 4100
$Comp
L Device:LED D1
U 1 1 6
P 8500 3300
F 0 "D1" H 8493 3045 50 0000 C CNN
F 1 "STATUS" H 8493 3136 50 0000 C CNN
	1    8500 3300
	-1   0 0 1
$EndComp
$Comp
L Device:R R1
U 1 1 7
P 8000 3300
F 0 "R1" V 7793 3300 50 0000 C CNN
F 1 "1k" V 7884 3300 50 0000 C CNN
	1    8000 3300
	0    1 1 0
$EndComp
Text Label 7500 3300 2 50 ~ 0
LED_GPIO5
Text Label 9000 3300 0 50 ~ 0
GND
Wire Wire Line
	7500 3300 7850 3300
Wire Wire Line
	8150 3300 8350 3300
Wire Wire Line
	8650 3300 9000 3300
$Comp
L Connector_Generic:Conn_01x06 J2
U 1 1 8
P 9150 4700
F 0 "J2" H 9230 4692 50 0000 L CNN
F 1 "PROGRAM_TEST_PADS" H 9230 4601 50 0000 L CNN
	1    9150 4700
	1    0 0 -1
$EndComp
Text Label 8500 4500 2 50 ~ 0
+3V3
Text Label 8500 4600 2 50 ~ 0
GND
Text Label 8500 4700 2 50 ~ 0
UART_TX
Text Label 8500 4800 2 50 ~ 0
UART_RX
Text Label 8500 4900 2 50 ~ 0
EN
Text Label 8500 5000 2 50 ~ 0
BOOT_GPIO9
Wire Wire Line
	8500 4500 8950 4500
Wire Wire Line
	8500 4600 8950 4600
Wire Wire Line
	8500 4700 8950 4700
Wire Wire Line
	8500 4800 8950 4800
Wire Wire Line
	8500 4900 8950 4900
Wire Wire Line
	8500 5000 8950 5000
Text Notes 800 6200 0 70 ~ 14
SAFETY / RELEASE GATES
Text Notes 800 6450 0 55 ~ 0
- Exact IRM-01-3.3, EC11 and ESP32-C6-MINI-1 pin numbering/footprints must be checked against current datasheets.
Text Notes 800 6650 0 55 ~ 0
- Establish required creepage/clearance from applicable standard and installation category before fabrication.
Text Notes 800 6850 0 55 ~ 0
- Primary copper must remain isolated from SELV; no plane may cross the barrier.
Text Notes 800 7050 0 55 ~ 0
- First MCU bring-up should be from an isolated current-limited 3.3 V bench supply, not mains.
$EndSCHEMATC
