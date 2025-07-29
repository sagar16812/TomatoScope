# 🛒 TomatoScope: Bill of Materials (BOM) & Setup Checklist

This document lists essential components and materials required to build a robust and weather-resistant plant monitoring system using a single or dual camera setup, suitable for balcony or terrace installations.

---

## 🧰 BOM Categories

### 1. 🔧 Core Electronics

| Component                          | Quantity (Single Cam) | Quantity (Dual Cam) | Notes                                  |
| ---------------------------------- | --------------------- | ------------------- | -------------------------------------- |
| Raspberry Pi 4B (4GB/8GB)          | 1                     | 1                   | Main controller unit                   |
| Raspberry Pi Camera Module V2 / HQ | 1                     | 2                   | Prefer HQ for better resolution        |
| MicroSD Card (32GB or 64GB)        | 1                     | 1                   | Class 10 or UHS-I, preloaded with OS   |
| USB Power Bank (10,000+ mAh)       | 1                     | 2                   | Portable power, solar option optional  |
| USB to USB-C Cable                 | 1                     | 2                   | For Pi power supply                    |
| Pi Camera Cable (Extended)         | 1                     | 2                   | Longer cables for flexible positioning |

### 2. 🌦️ Weather Protection & Mounting

| Item                           | Quantity              | Notes                                         |
| ------------------------------ | --------------------- | --------------------------------------------- |
| Waterproof Enclosure Box       | 1 (or 2 if dual cams) | Transparent window for camera; IP65+ rated    |
| Camera Lens Cover/Dome         | 1–2                   | For shielding camera from water/dust          |
| Adjustable Mounting Arm/Clamp  | 1–2                   | To attach camera enclosure to railing or wall |
| Tripod or DIY Stand (Optional) | 1–2                   | Can be 3D printed or made with PVC pipe       |
| Cable Ties & Clips             | Pack                  | For cable management and securing setup       |

### 3. 🔌 Connectivity & Extensions

| Item                     | Quantity | Notes                        |
| ------------------------ | -------- | ---------------------------- |
| Wi-Fi Dongle (if needed) | 1        | Use if onboard Wi-Fi is weak |
| USB Hub (Powered)        | Optional | For extending ports          |
| GPIO Header Pins         | Optional | For sensor expansion         |

### 4. 📡 Optional Sensors (Advanced)

| Sensor Type                     | Notes                               |
| ------------------------------- | ----------------------------------- |
| DHT22                           | Temperature and Humidity            |
| Soil Moisture Sensor            | Capacitive preferred over resistive |
| Light Intensity (LDR or BH1750) | Sunlight measurement                |
| UV Sensor                       | Optional, for stress analysis       |

---

## 🔨 DIY Options

| Component      | DIY Alternatives                                |
| -------------- | ----------------------------------------------- |
| Mounting Stand | PVC pipes, wood planks, curtain rods            |
| Enclosure Box  | Airtight food container with lens cutout        |
| Lens Cover     | Transparent plastic dome from light fixtures    |
| Power Supply   | 12V solar panel + battery + step-down converter |
| Camera Housing | 3D printed with custom fittings                 |

---

## 📦 Online Purchase Suggestions

* [Raspberry Pi Kits - Robu.in / Amazon India](https://robu.in/product-category/raspberry-pi/)
* [Weatherproof Boxes - Enclosure India / Amazon](https://www.amazon.in)
* [High Quality Camera Module - PiShop / SB Components](https://www.pishop.in)

---

## ✅ Final Checklist (Deployment Ready)

* [ ] Pi + Camera tested and functional
* [ ] Waterproofing verified (rain test if possible)
* [ ] Power bank fully charged and secured
* [ ] Camera focused at proper height and angle
* [ ] System booting automatically on power
* [ ] Data logging script enabled

---

For setup dimensions and camera positioning guidelines, refer to `docs/camera_setup_guide.md`.
