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

## 2. Software Stack

### 2.1 Operating System

* **Raspberry Pi OS Lite** (Debian-based, low resource consumption)
* **Ubuntu Server 22.04 LTS** (ROS2 Humble compatible, headless preferred)

### 2.2 Connectivity Options

* **Wi-Fi**: Configure static IP or use mDNS (`raspberrypi.local`)
* **BLE**: Supported by Raspberry Pi 3B+/Zero 2 W (for minimal data exchange)
* Optional: USB LTE/4G dongle for remote access

---

## 3. Supported Experiments

### A. Leaf Disease Detection

* **Goal**: Identify signs of blight, mildew, or nutrient deficiencies
* **Libraries**: TensorFlow Lite, PyTorch, OpenCV
* **Example Dataset**:
  * **PlantVillage:** [Kaggle](https://www.kaggle.com/datasets/emmarex/plantdisease), [Git](https://github.com/spMohanty/PlantVillage-Dataset)
  * New Plant Diseases Dataset: [PlantVillage; after applying Augmention](https://www.kaggle.com/datasets/vipoooool/new-plant-diseases-dataset)
  * AI Challenger 2018: Agricultural Disease Dataset

* **Workflow**:
  1. Capture leaf images
  2. Preprocess (crop, normalize)
  3. Classify using pre-trained DL model
  4. Alert via LED or remote log

### B. Ripeness Detection

* **Goal**: Determine stage of fruit ripeness using RGB imagery
* **Libraries**: OpenCV (color thresholds), TFLite for DL models
* **Example Dataset**:
  * [Tomato Ripeness](https://www.kaggle.com/datasets/rupakroy/tomato-ripeness)
  * Intel Image Classification Dataset (Fruit subset)
  * Fruits 360 Dataset (Kaggle)

* **Workflow**:
  1. Capture images daily
  2. Run ripeness detection model
  3. Store logs locally or push to server

### C. Growth Monitoring (Timelapse)

* **Goal**: Monitor plant growth and health trends
* **Libraries**: fswebcam / libcamera, ffmpeg
* **Example Dataset**:
  * Self-captured over time
  * AgML: AgriVision Challenge Dataset

* **Workflow**:
  1. Capture hourly/daily images
  2. Stitch video using `ffmpeg`
  3. Compare height, canopy size, etc.

### D. Fruit Counting and Detection

* **Goal**: Count Tomatoes using object detection, (or counting in a video sequence, only for mobile platform)
* **Libraries**: YOLOv5 / YOLOv8 + OpenCV
* **Datasets**: [Tomato Detection](https://github.com/mariolew/YOLO-Tomato)
* **Workflow**:
  1. Run trained YOLO model on images
  2. Count bounding boxes
  3. Push result to cloud/local DB

### E. Crop Stress Detection

* **Goal**: Detect wilting, under/over-watering signs
* **Libraries**: OpenCV (color analysis), optional ML classification, TensorFlow Lite, Edge Impulse
* **Example Dataset**:
  * Synthetic/self-collected dataset
  * EMMP Dataset (ETH Zurich, for crop water stress)
  * EOPatch (Sentinel-2 vegetation indices — needs adaptation)

* **Workflow**:
  1. Capture and compare daily RGB histogram or color indexes
  2. ML Way: Dataset collection → Binary classification/stress metrics
  3. Set thresholds for warning/alerts

---

## 4. Open Source Libraries and Tools

* `OpenCV`, `TensorFlow Lite`, `PyTorch`, `YOLOv5/8`, `ffmpeg`, `libcamera`, `MQTT`, `Flask`, `Node-RED`
* GitHub Repos:

  * [https://github.com/ultralytics/yolov5](https://github.com/ultralytics/yolov5)
  * [https://github.com/tensorflow/examples](https://github.com/tensorflow/examples)

---

## 5. Publicly Available Datasets (Europe/US Focused)

| Dataset       | Institution                   | Description                                        |
| ------------- | ----------------------------- | -------------------------------------------------- |
| PlantVillage  | Penn State, USA               | 50+ plant species with healthy/diseased images     |
| PhenoBench    | IPK Gatersleben, Germany      | Benchmark for image-based plant phenotyping        |
| ROSEBUD       | Wageningen Univ., Netherlands | Strawberry and tomato datasets for fruit detection |
| MinneApple    | Univ. of Minnesota, USA       | Annotated apple images for detection and counting  |
| EAGL-I        | TU Munich                     | Grapevine dataset with 3D annotations              |
| AI4FoodCrop   | FAO (EU)                      | Leaf and fruit data for smart farming              |
| CVPPP Dataset | University of Nottingham      | Arabidopsis plant instance segmentation            |

---

## 6. Tomato-Specific PhenoRob-Related Datasets (RGB Vision Focus)
Here are some key datasets from [PhenoRob](https://www.phenorob.de/) and associated European institutions related to RGB-based plant and crop research:

1. **ROSEBUD Dataset**

   * **Institution**: Wageningen University & Research (Netherlands, PhenoRob partner)
   * **Content**: High-resolution RGB images of **tomatoes and strawberries** in greenhouse environments
   * **Applications**: Fruit detection, ripeness classification, counting
   * **URL**: [https://data.vision.agrosense.nl](https://data.vision.agrosense.nl)

2. **PhenoBench Tomato Subset** *(if available via IPK Gatersleben)*

   * **Institution**: IPK Gatersleben, Germany (PhenoRob member)
   * **Content**: Tomato plant images under controlled growth
   * **Applications**: Leaf segmentation, stress detection
   * **Note**: Check for tomato-specific entries or request access via academic collaboration
    * **Link**: [https://phenobench.ipk-gatersleben.de](https://phenobench.ipk-gatersleben.de)


3. **Tomato Leaf Disease Dataset (European Extension of PlantVillage)**

   * **Institution**: Wageningen University, linked with EU Plant Health projects
   * **Content**: Annotated leaf disease images from controlled greenhouses (blight, leaf mold, etc.)
   * **Applications**: Leaf disease detection using CNNs
   * **Note**: Available in extended datasets sourced from EU-wide plant health initiatives

4. **AI4FoodCrop – Tomato Subset**

   * **Institution**: FAO / EU AgriVision Collaboration (via PhenoRob-affiliated groups)
   * **Content**: RGB imagery of tomato plants at different growth and fruiting stages
   * **Applications**: Ripeness detection, growth stage classification
   * **Access**: Through EU AgriData Hub or academic consortium

5. **Tomato Ripening & Yield Dataset (TUM Experimental Fields)**

   * **Institution**: Technical University of Munich (PhenoRob contributor)
   * **Content**: Tomato fruit images at different maturity levels, paired with ground truth labels
   * **Applications**: Ripeness classification, yield estimation
   * **Note**: Often available as part of TUM’s SmartAgri or Phenorob research publications

6. **LemnaTec Dataset**

   * **Source**: RWTH Aachen (PhenoRob core partner)
   * **Type**: High-resolution RGB images from LemnaTec phenotyping systems
   * **Use Cases**: Growth monitoring, plant health detection
   * **Note**: Access may be restricted or available via academic request.

7. **PHENOMOBILE Dataset**

   * **Source**: INRAE / University of Bonn collaborations
   * **Type**: Field-captured RGB images using mobile phenotyping platforms
   * **Use Cases**: High-throughput phenotyping of crops like wheat, maize
   * **Link**: [https://urgi.versailles.inra.fr](https://urgi.versailles.inra.fr) (search "phenomobile")

8. **CropQuant Dataset**

   * **Source**: UK (John Innes Centre / Rothamsted Research, PhenoRob collaborators)
   * **Type**: Time-lapse RGB imagery of wheat crops in the field
   * **Use Cases**: Canopy height estimation, growth analysis
   * **Link**: [https://github.com/CropQuant](https://github.com/CropQuant)

---

## 7. Data Storage and Networking (Optional for Future Use)

### Local:

* Store image logs on external USB drive or SD card
* Setup FTP server for LAN access

### Remote/Cloud:

* Use MQTT + Node-RED for pushing status
* Integrate with Firebase/ThingSpeak for visual dashboards
* Use Google Drive or AWS S3 for image syncing (via cron + rclone)

---