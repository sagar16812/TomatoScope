# Raspberry Pi-Based Outdoor Plant Monitoring System

This README serves as a professional-grade guide to building a waterproof, vision-based experimental system using a Raspberry Pi for agricultural research. The system is designed to be compact, weather-resistant, and scalable for various computer vision and machine learning applications.

---

## 1. Hardware Setup

### 1.1 Bill of Materials (BoM)

| Component                      | Description / Model                               |
| ------------------------------ | ------------------------------------------------- |
| Raspberry Pi                   | Model 4B / 3B+ / Zero 2 W                         |
| Camera Module                  | Raspberry Pi HQ Camera or v2.1 Camera Module      |
| Waterproof Enclosure Box       | ABS/PVC junction box (200mm x 120mm x 75mm)       |
| Transparent Acrylic Sheet      | For camera lens window (minimum 40mm x 40mm)      |
| 12V to 5V DC Buck Converter    | LM2596 or similar for powering Raspberry Pi       |
| Power Inverter                 | Custom Li-ion battery-based inverter (user-built) |
| Desiccant Packs                | To absorb moisture inside the box                 |
| Rubber Grommets / Cable Glands | For sealed cable entry points                     |
| Silicone Sealant / Hot Glue    | For sealing holes and joints                      |
| Screws, Velcro, Zip Ties       | For mounting hardware securely                    |

### 1.2 Enclosure and Installation

* **Box Dimensions**: ABS/PVC box of 20cm × 15cm × 10cm (or slightly larger depending on accessories) waterproof junction box
* **Camera Mounting**:

  * Drill a 30mm hole on the front face of the box
  * Mount a square/round transparent acrylic window from inside
  * Use silicone to seal the edges (ensure no fogging or leaks)
* **Ventilation and Cable Holes**:

  * 1x hole for 12V power input (rubber grommet)
  * 1x hole for camera ribbon cable (optional, if external)
  * Optional: drill two small 5mm holes with mesh covering for ventilation
* **Moisture Protection**:

  * Place 2-3 desiccant silica gel packs inside
  * Use rubber washers and waterproof glands
  * Seal all inner joints and seams with silicone
* **Wiring Setup**:

  * Inverter provides 12V regulated DC
  * 12V to 5V buck converter powers Raspberry Pi via USB-C/micro USB
  * Connect Pi Camera via CSI port
  * All connections fixed using adhesive Velcro/tie mounts inside

---
