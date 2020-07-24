# Church Sign
 Service status sign for my church
 
## Introduction
My church is divided into two seperate buildings, the main sanctuary / fellowship hall, and a smaller building which hosts the nursery and classrooms. Our services don't follow a set schedule, so the people in the other building have no idea about what is going on in the main building. I decide to rememdy that with some WiFi connected status signs.

Someone in the main building will use the [controller](https://github.com/RyanAbsher/Church-Sign-Controller) to change the condition of the signs in the other building. There are 4 possible states: Off, Green, Yellow, and Red. Green means that the service is on-going, yellow means that things are wrapping up, and red means indicated that the service has completed.

## Hardware
The hardware for this project is very simple. The sign is based around an ESP8266 ESP-01 board, and there is a 4x2 2.54mm header on the board to allow for simple removal of the ESP-01 for programming. It is fed 5V from an external power adapter, and there is a 3V3 regulator to provide power for the ESP-01. The LEDs are the ubiquitous WS2812b addressable strips, commonly referred to as "NeoPixels", although these are not branded. I printed the cases out of PLA that would match the wall paint in each room. There is a channel running around the inside wall that fits the LED strip. The sideways mounting of the LEDs along with a piece of white acrylic covering the top provide a solid diffuse glow to the sign.

## Software
The software was written using the Arduino IDE. Each sign uses mDNS to brodcast it's existence on the WiFi network. The controller scans the network for available signs.

When powered on, the sign will search for the local WiFi network and will attempt to connect. If successful, the sign will rapidly flash in succession: red, green, blue. It will then black out and wait for comamnds from the controller. If unsuccessful, if will flash red, indicating a fault condition.
