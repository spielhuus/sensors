# Atmega328p / BME280


<img src="https://raw.githubusercontent.com/spielhuus/sensors/master/atmega328-sensor/schema.png" width="15%"></img> <img src="https://raw.githubusercontent.com/spielhuus/sensors/master/atmega328-sensor/ATmega328.png" width="15%"></img> <!-- img src="https://cloud.githubusercontent.com/assets/4307137/10105284/26aa7ad4-63ae-11e5-88b7-bc523a095c9f.png" width="15%"></img> <img src="https://cloud.githubusercontent.com/assets/4307137/10105288/28698fae-63ae-11e5-8ba7-a62360a8e8a7.png" width="15%"></img> <img src="https://cloud.githubusercontent.com/assets/4307137/10105283/251b6868-63ae-11e5-9918-b789d9d682ec.png" width="15%"></img> <img src="https://cloud.githubusercontent.com/assets/4307137/10105290/2a183f3a-63ae-11e5-9380-50d9f6d8afd6.png" width="15%"></img --> 

This Sensor can run of a battery and measures temperature, humidity and barometric pressure and send the data to TTN. 
The Board is using the ATmega328 processor, the Hope RFM96W Lora Module and the BME280 barometric pressure sensor. 

## BOM

<table>
<tr><th style='width:640px'>Ref</th><th>Qnty</th><th>Value</th><th>Part</th><th>Footprint</th><th>Description</th><th>Vendor</th></tr>
<tr><td>AE1</td><td>1</td><td>Antenna</td><td>Device:Antenna</td><td></td><td>Antenna symbol</td><td></td></tr>
<tr><td>C1, C2</td><td>2</td><td>100</td><td>Device:CP</td><td>Capacitor_THT:C_Disc_D10.0mm_W2.5mm_P5.00mm</td><td>Polarised capacitor</td><td></td></tr>
<tr><td>C3</td><td>1</td><td>22pf</td><td>Device:C</td><td>Capacitor_THT:C_Disc_D6<<.0mm_W2.5mm_P5.00mm</td><td>Unpolarized capacitor</td><td></td></tr>
<tr><td>C4</td><td>1</td><td>22pf </td><td>Device:C</td><td>Capacitor_THT:C_Disc_D6<<.0mm_W2.5mm_P5.00mm</td><td>Unpolarized capacitor</td><td></td></tr>
<tr><td>J1</td><td>1</td><td>Input</td><td>Connector:Conn_01x01_Female</td><td>Connector_Pin:Pin_D1.3mm_L10.0mm_W3.5mm_Flat</td><td>Generic connector, single row, 01x01, script generated (kicad-library-utils/schlib/autogen/connector/)</td><td></td></tr>
<tr><td>J2</td><td>1</td><td>Gnd</td><td>Connector:Conn_01x01_Female</td><td>Connector_Pin:Pin_D1.3mm_L10.0mm_W3.5mm_Flat</td><td>Generic connector, single row, 01x01, script generated (kicad-library-utils/schlib/autogen/connector/)</td><td></td></tr>
<tr><td>J3</td><td>1</td><td>Output</td><td>Connector:Conn_01x01_Female</td><td>Connector_Pin:Pin_D1.3mm_L10.0mm_W3.5mm_Flat</td><td>Generic connector, single row, 01x01, script generated (kicad-library-utils/schlib/autogen/connector/)</td><td></td></tr>
<tr><td>J4</td><td>1</td><td>Conn_01x04</td><td>Connector_Generic:Conn_01x04</td><td></td><td>Generic connector, single row, 01x04, script generated (kicad-library-utils/schlib/autogen/connector/)</td><td></td></tr>
<tr><td>U1</td><td>1</td><td>L7805</td><td>Regulator_Linear:L7805</td><td>Package_TO_SOT_THT:TO-220-3_Vertical</td><td>Positive 1.5A 35V Linear Regulator, Fixed Output 5V, TO-220/TO-263/TO-252</td><td></td></tr>
<tr><td>U2</td><td>1</td><td>ATmega328P-PU</td><td>MCU_Microchip_ATmega:ATmega328P-PU</td><td>Package_DIP:DIP-28_W7.62mm</td><td>20MHz, 32kB Flash, 2kB SRAM, 1kB EEPROM, DIP-28</td><td></td></tr>
<tr><td>U3</td><td>1</td><td>RFM95W-868S2</td><td>RF_AM_FM:RFM95W-868S2</td><td></td><td>Low power long range transceiver module, SPI and parallel interface, 868 MHz, spreading factor 6 to12, bandwith 7.8 to 500kHz, -111 to -148 dBm, SMD-16, DIP-16</td><td></td></tr>
<tr><td>Y1</td><td>1</td><td>Crystal</td><td>Device:Crystal</td><td>Crystal:Crystal_HC49-U_Vertical</td><td>Two pin crystal</td><td></td></tr><!--TABLEROW-->
</table>


## Wiring

| HopeRF RFM95 LoRa transceiver module |	ATmega8 Pin |   |	   	HopeRF RFM95 LoRa transceiver module |	ATmega8 Pin |
| ----- | ---- | --- | ---- | ---- |
| ANT |	- |   |	   	GND |	- |
| GND |	GND |   |	   	DIO5 | 	- |
| DIO3 |	- 	 |   |  	RESET |	PD5 (11) |
| DIO4 |	- 	  |   | 	NSS |	PB2 (16) |
| 3.3V |	3.3V 	|   |   	SCK |	PB5 (19) |
| DIO0 |	PD2 (4) |   | 	MOSI 7	PB3 (17) |
| DIO1 |	PD3 (5) |   | 	MISO |	PB4 (18) |
| DIO2 |	- 	  |   | 	GND |	- |

## Prepare the Arduino IDE

I asume the arduino IDE is already installed. 

Add the Libraries to you IDE:

- Within the IDE Libarary Manager Install the BME280 Library by Tyler Glenn.
- Install the lmic library as ZIP file.
  - Download the arduino-lmic library as zip file from: https://github.com/matthijskooijman/arduino-lmic
  - Install the arduino-lmic-master.zip in the Arduino IDE:
    Select menu: Sketch | Include Library | Add .Zip Library 
- Make the following changes in ./arduino-lmic-master/src/lmic/config.h:
  - If you live in Europe, set: #define CFG_eu868 1
  - If you use a HopeRF RFM95 module, set: #define CFG_sx1276_radio 1
  - If you want logging in the serial monitor, set:
    - #define LMIC_DEBUG_LEVEL 2
    - #define LMIC_FAILURE_TO Serial
  - Uncomment line: #define DISABLE_PING
    Disable this feature. It is not needed and space is freed up.
  - Uncomment line: #define DISABLE_BEACONS
    Disable this feature. It is not needed and space is freed up.

Edit the TTN keys in atmega328-sensor.ino.

## Installation

Add the keys from TTN in the arduino sketch file and change the PIN-Mappings:

```
const lmic_pinmap lmic_pins = {
  .nss = 10,                       // chip select on feather (rf95module) CS
  .rxtx = LMIC_UNUSED_PIN,
  .rst = 5,                       // reset pin
  .dio = {2, 3, LMIC_UNUSED_PIN}, // assumes external jumpers [feather_lora_jumper]
};
```

## Datasheets

- [ATmega328/P](http://ww1.microchip.com/downloads/en/devicedoc/atmel-42735-8-bit-avr-microcontroller-atmega328-328p_datasheet.pdf)
- [Bosch BME280](https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280_DS002.pdf)
- [RFM95/96/97/98(W) - Low Power Long Range Transceiver Module](http://www.hoperf.com/upload/rf/RFM95_96_97_98W.pdf)

## Links

- [https://www.mobilefish.com/developer/lorawan/lorawan_quickguide_build_lora_node_rfm95_arduino_uno.html]()
- [ATmega8-Arduino Pin Mapping](https://www.arduino.cc/en/Hacking/PinMapping)
- [Arduino-LMIC library](https://github.com/matthijskooijman/arduino-lmic)

