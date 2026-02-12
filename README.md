# Church Sign Controller

## Introduction
The **Church Sign Controller** is an ESP32-based wireless system designed to synchronize service status across multiple church buildings. This system allows a user in the main sanctuary to update the status of three remote signs in the nursery or classrooms, ensuring everyone is informed about the progress of the service.

## System Overview
The system utilizes the **ESP-NOW** protocol for communication between the controller and the signs. It supports four distinct states to communicate service progress:

* **Green:** Service is in progress.
* **Yellow:** Service is wrapping up (e.g., the band is on stage).
* **Red:** Service is over.
* **Off:** System is idle.

---

## Hardware Specifications

### The Controller
* **Module:** Built around an ESP32 with a touch display.
* **Interface:** Features an integrated LCD touchscreen for state selection.
* **Power:** Battery-powered with a dedicated wake button.
* **Power Management:** Enters sleep mode after 5 seconds of inactivity to conserve battery.

### The Signs
* **Module:** Based on ESP32 modules.
* **LEDs:** 12 WS2812B addressable LEDs per sign.
* **Power:** Powered by a 5V external power supply.

---

## Functional Behavior

### Controller GUI
* **Monitoring:** The screen is divided into three sections to show the current state, color, and communication status (including errors) for each sign.
* **Controls:** Includes four state buttons and a full-width "Save" button to store the current state in the controller's memory.
* **Sync:** All signs are updated to the same state simultaneously.

### Sign Animation & Logic
* **Visual Alerts:** When switching to Green, Yellow, or Red, the signs perform a flashing sequence before turning solid to ensure the change is noticed.
* **Idle Transition:** Switching to "Off" turns the LEDs off immediately without a flash pattern.
* **Safety Timeout:** Signs automatically turn off if they remain active for more than 8 hours.