# LoRa Environmental Sensors 


<img src="https://raw.githubusercontent.com/spielhuus/sensors/master/atmega328-sensor/schema.png" width="15%"></img> <img src="https://raw.githubusercontent.com/spielhuus/sensors/master/atmega328-sensor/ATmega328.png" width="15%"></img> <!-- img src="https://cloud.githubusercontent.com/assets/4307137/10105284/26aa7ad4-63ae-11e5-88b7-bc523a095c9f.png" width="15%"></img> <img src="https://cloud.githubusercontent.com/assets/4307137/10105288/28698fae-63ae-11e5-8ba7-a62360a8e8a7.png" width="15%"></img> <img src="https://cloud.githubusercontent.com/assets/4307137/10105283/251b6868-63ae-11e5-9918-b789d9d682ec.png" width="15%"></img> <img src="https://cloud.githubusercontent.com/assets/4307137/10105290/2a183f3a-63ae-11e5-9380-50d9f6d8afd6.png" width="15%"></img --> 

This Sensor can run of a battery and measures temperature, humidity and barometric pressure and send the data to TTN. 
The Board is using the ATmega328 processor, the Hope RFM96W Lora Module and the BME280 barometric pressure sensor. 

## BOM

The ATmega microprocessor needs an arduino bootloader. To burn a bootloader to the blank chip see [1]<table>

<tr><th style='width:640px'>Ref</th><th>Qnty</th><th>Value</th><th>Part</th><th>Datasheet</th><th>Description</th><th>Vendor</th></tr><tr><td>AE1</td><td>1</td><td>Antenna</td><td>Device:Antenna</td><td>~</td><td>Antenna symbol</td><td></td></tr><tr><td>C1, C2</td><td>2</td><td>100</td><td>Device:CP</td><td>~</td><td>Polarised capacitor</td><td></td></tr><tr><td>C3</td><td>1</td><td>22pf</td><td>Device:C</td><td>~</td><td>Unpolarized capacitor</td><td></td></tr><tr><td>C4</td><td>1</td><td>22pf </td><td>Device:C</td><td>~</td><td>Unpolarized capacitor</td><td></td></tr><tr><td>J1</td><td>1</td><td>Input</td><td>Connector:Conn_01x01_Female</td><td>~</td><td>Generic connector, single row, 01x01, script generated (kicad-library-utils/schlib/autogen/connector/)</td><td></td></tr><tr><td>J2</td><td>1</td><td>Gnd</td><td>Connector:Conn_01x01_Female</td><td>~</td><td>Generic connector, single row, 01x01, script generated (kicad-library-utils/schlib/autogen/connector/)</td><td></td></tr><tr><td>J3</td><td>1</td><td>Output</td><td>Connector:Conn_01x01_Female</td><td>~</td><td>Generic connector, single row, 01x01, script generated (kicad-library-utils/schlib/autogen/connector/)</td><td></td></tr><tr><td>J4</td><td>1</td><td>Conn_01x04</td><td>Connector_Generic:Conn_01x04</td><td>~</td><td>Generic connector, single row, 01x04, script generated (kicad-library-utils/schlib/autogen/connector/)</td><td></td></tr><tr><td>U1</td><td>1</td><td>L7805</td><td>Regulator_Linear:L7805</td><td>http://www.st.com/content/ccc/resource/technical/document/datasheet/41/4f/b3/b0/12/d4/47/88/CD00000444.pdf/files/CD00000444.pdf/jcr:content/translations/en.CD00000444.pdf</td><td>Positive 1.5A 35V Linear Regulator, Fixed Output 5V, TO-220/TO-263/TO-252</td><td></td></tr><tr><td>U2</td><td>1</td><td>ATmega328P-PU</td><td>MCU_Microchip_ATmega:ATmega328P-PU</td><td>http://ww1.microchip.com/downloads/en/DeviceDoc/ATmega328_P%20AVR%20MCU%20with%20picoPower%20Technology%20Data%20Sheet%2040001984A.pdf</td><td>20MHz, 32kB Flash, 2kB SRAM, 1kB EEPROM, DIP-28</td><td></td></tr><tr><td>U3</td><td>1</td><td>RFM95W-868S2</td><td>RF_AM_FM:RFM95W-868S2</td><td>http://www.hoperf.com/upload/rf/RFM95_96_97_98W.pdf</td><td>Low power long range transceiver module, SPI and parallel interface, 868 MHz, spreading factor 6 to12, bandwith 7.8 to 500kHz, -111 to -148 dBm, SMD-16, DIP-16</td><td></td></tr><tr><td>Y1</td><td>1</td><td>Crystal</td><td>Device:Crystal</td><td>~</td><td>Two pin crystal</td><td></td></tr><!--TABLEROW-->
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

## Installation

 the armega328-sensor.ino sketarduinofile  ch from this repository into the arduino ide. 
 Edit the keys from TTN in the sketch and change the PIN-Mappings:

```
const lmic_pinmap lmic_pins = {
  .nss = 10,                       // chip select on feather (rf95module) CS
  .rxtx = LMIC_UNUSED_PIN,
  .rst = 5,                       // reset pin
  .dio = {2, 3, LMIC_UNUSED_PIN}, // assumes external jumpers [feather_lora_jumper]
```

## Payload Format

The Payload is encoded as byte array.

| byte | content |
| ---- | ------- |
| 0..1 | temperature (*100) |
| 2..3 | humidity (*100) |
| 4..8 | barometric pressure |

To decode the values add this code in the TTM Console as decoder under Paload Formats.

```
function Decoder(bytes, port) {
  temp = ((bytes[0]) << 8)
              + ((bytes[1]));
  hum = ((bytes[2]) << 8)
              + ((bytes[3]));
  pres = ((bytes[4]) << 24)
              + ((bytes[5]) << 16)
              + ((bytes[6]) << 8)
              + ((bytes[7]));

  return {
    pressure: ( pres / 100 ),
    temperature: ( temp / 100 ),
    humidity: ( hum / 100 )
  };
}
```

## Datasheets

- [ATmega328/P](http://ww1.microchip.com/downloads/en/devicedoc/atmel-42735-8-bit-avr-microcontroller-atmega328-328p_datasheet.pdf)
- [Bosch BME280](https://ae-bst.resource.bosch.com/media/_tech/media/datasheets/BST-BME280_DS002.pdf)
- [RFM95/96/97/98(W) - Low Power Long Range Transceiver Module](http://www.hoperf.com/upload/rf/RFM95_96_97_98W.pdf)

## Links

1. [TinyLoRa-BME280 v1.1](https://github.com/ClemensRiederer/TinyLoRa-BME280_v1.1)

