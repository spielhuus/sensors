# Atmega328p / BME280

Sketch for an Atmega328 and BME280

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

## Links

- [https://www.mobilefish.com/developer/lorawan/lorawan_quickguide_build_lora_node_rfm95_arduino_uno.html]()
- [ATmega8-Arduino Pin Mapping](https://www.arduino.cc/en/Hacking/PinMapping)
- [Arduino-LMIC library](https://github.com/matthijskooijman/arduino-lmic)

