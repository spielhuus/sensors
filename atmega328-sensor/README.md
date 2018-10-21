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
- [https://www.arduino.cc/en/Hacking/PinMapping](ATmega8-Arduino Pin Mapping)
- [https://github.com/matthijskooijman/arduino-lmic](Arduino-LMIC library)
