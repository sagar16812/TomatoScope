# Workflow Ideas

### 🧪 How can we get proper analysis from a stationary system?

When deployed as a **stationary system**, TomatoScope uses a fixed-angle RGB camera (and optional sensors) mounted near a potted plant in a grow bag. This configuration enables **consistent time-series imaging** and reliable monitoring. Here's how the system can perform specific tasks:

#### 1. **Leaf Health Monitoring**

* **Workflow**:

  * Daily or periodic images are captured under controlled lighting.
  * Deep learning models (e.g., ResNet or EfficientNet variants) segment and classify leaf areas.
  * Models are trained to detect visual symptoms such as yellowing, curling, necrosis, and fungal spots.
* **Advantage**: Stationary imaging ensures consistent leaf angle and scale, improving classification accuracy.
* **Model Type**: Semantic segmentation + multi-class classification.

#### 2. **Fruit Ripeness and Counting**

* **Workflow**:

  * Fruits are tracked using object detection models (e.g., YOLOv5/YOLOv8).
  * Color histograms and maturity estimation algorithms assess ripeness stages (green, breaker, ripe).
  * Count consistency over time helps estimate total yield and track harvest window.
* **Advantage**: The fixed perspective allows partial occlusion handling and temporal verification.
* **Model Type**: Object detection + temporal analysis.

#### 3. **Pest Activity Detection**

* **Workflow**:

  * High-resolution image capture at night (with IR or flash if needed).
  * Visual clues such as leaf holes, webbing, or insect presence are detected using anomaly detection or binary classifiers.
  * Optional use of sticky traps within the frame improves specificity.
* **Advantage**: Stationary setup enables daily scans and fast response to visual changes.
* **Model Type**: Anomaly detection / binary classification on pest patterns.

#### 4. **Plant Growth Rate Analysis**

* **Workflow**:

  * Daily images are aligned using camera calibration and fiducial markers (e.g., QR code or ArUco).
  * Semantic segmentation tracks stem and leaf boundaries.
  * Plant height, canopy diameter, and leaf area index are calculated using pixel metrics over time.
* **Advantage**: Fixed viewpoint ensures precision in measuring growth-related metrics.
* **Model Type**: Segmentation + time-series analysis + geometric transformation.

---

This approach leverages the strength of **temporal consistency** offered by stationary vision systems, which is critical in low-cost, resource-limited agricultural settings. Further accuracy can be enhanced using **sensor fusion** with soil, climate, and light sensors.
