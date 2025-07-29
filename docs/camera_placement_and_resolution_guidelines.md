# TomatoScope: Camera Placement & Resolution Guidelines

This document provides detailed guidance on the selection and placement of camera hardware for effective use of the TomatoScope system in monitoring tomato plants through computer vision and AI techniques.

## 📷 Recommended Camera Resolution

### 1. **Minimum Requirements**

* **Resolution**: 1920x1080 (Full HD, 2MP)
* **Frame Rate**: 5-10 FPS (still-image based systems)
* **Lens**: Fixed focus lens (2.8mm to 4mm) depending on field of view

A Full HD camera is sufficient for detecting:

* Leaf-level disease symptoms
* Fruit detection and ripening stages
* Insect presence on leaves (larger than \~2mm)

### 2. **Ideal/Research Grade Setup**

* **Resolution**: 5MP (2592x1944) or higher
* **Color fidelity**: True color (for ripeness detection)
* **Manual focus or autofocus** for sharp imaging across distances
* **Support for IR or night vision** (optional)

Higher resolution benefits:

* Fine-grained leaf texture and symptom detection
* Early-stage pest signs (e.g., whitefly eggs)
* Better performance in object segmentation

### 3. **Supported Camera Modules**

* Raspberry Pi Camera Module v2 (8MP, Sony IMX219)
* Raspberry Pi Camera Module v3 (12MP, Sony IMX708)
* USB webcams (1080p with manual focus)
* ESP32-CAM (for low-cost distributed deployments)

---

## ↗️ Camera Placement Guidelines

The camera should be installed to ensure consistent framing of the plant from a fixed angle and distance. Below are recommended configurations:

### 🌿 Plant Setup

* **Plant type**: Potted tomato plant in grow bag (height: \~20–50 cm)
* **Setting**: Polyhouse, net house, or protected urban terrace

### 📌 Placement Parameters

| Parameter  | Recommended Value                         | Notes                                          |
| ---------- | ----------------------------------------- | ---------------------------------------------- |
| Distance   | 40–60 cm from the center of the plant     | Ensures whole plant fits in frame              |
| Height     | 45–65 cm above soil level                 | Angled slightly down (10–20° tilt)             |
| Angle      | 10–20 degrees downward tilt               | Prevents occlusion by top leaves               |
| Mount Type | Tripod, fixed enclosure, wall-mounted arm | Should be vibration-free and weather-protected |

### 📍 Multi-angle or Multi-camera

For more detailed analysis:

* Use **top-down + side-view** dual-camera setup
* Rotate camera position manually every few days (if only one camera)
* Consider pan-tilt module for automation

---

## ⚖️ Calibration & Field of View

* Include **scale reference markers** in the frame (e.g., ruler or ArUco markers)
* Field of View (FoV) should cover entire canopy and topsoil area
* Consistent lighting improves visual model accuracy (use diffused daylight or LED ring)

---

## 🔍 Summary

| Use Case                  | Camera Resolution | Distance  | Height  | Angle | Notes                                  |
| ------------------------- | ----------------- | --------- | ------- | ----- | -------------------------------------- |
| Disease Detection         | 1080p             | \~50 cm   | \~60 cm | 15°   | Focus on leaf-level detail             |
| Fruit Ripeness & Counting | 1080p+            | \~45 cm   | \~50 cm | 10°   | Requires good color accuracy           |
| Pest Detection            | 5MP+              | \~30-40cm | \~40 cm | 15°   | Night vision helps for nocturnal pests |
| Growth Monitoring         | 1080p             | \~50-60cm | \~60 cm | 20°   | Ensure whole plant fits in frame       |

With this setup, TomatoScope can provide consistent, reliable visual data for AI-based tomato plant monitoring under both experimental and semi-deployed conditions.
