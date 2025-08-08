# Tomato Detection and Counting

## How We Can Achieve It? Object Detection vs Instance Segmentation

Tomato detection and counting can be implemented using two main computer vision approaches:

* **Object Detection**: Identifies and localizes tomatoes in an image by drawing bounding boxes around them.
* **Instance Segmentation**: Identifies, localizes, and outlines each tomato with pixel-level precision.

Both methods can achieve counting, but **instance segmentation** provides better accuracy in scenarios with overlapping tomatoes, irregular shapes, or partial occlusions.

---

## Why Choose Instance Segmentation

### Core Difference

* **Object Detection**: Outputs bounding boxes.
* **Instance Segmentation**: Outputs pixel-level masks for each object.

### Key Decision Factors

* **Accuracy**: Instance segmentation is more precise for irregular shapes.
* **Counting Reliability**: Handles overlapping and clustered tomatoes better.
* **Visual Output**: Provides better visualization and separation between objects.

### Trade-Off Summary

| Factor               | Object Detection | Instance Segmentation |
| -------------------- | ---------------- | --------------------- |
| Precision (Shape)    | Medium           | High                  |
| Overlap Handling     | Poor             | Excellent             |
| Computational Demand | Lower            | Higher                |
| Model Complexity     | Lower            | Higher                |

---

## Feasibility of Instance Segmentation on Edge Devices

### Device Feasibility

For single-image inference (no FPS requirement):

* **Raspberry Pi 3 Model B (1GB RAM)**: Limited capability, requires lightweight models and possibly reduced resolution.
* **Raspberry Pi Zero 2 W (512MB RAM)**: Not suitable for inference; can be used for image capture and offloading to another device.
* **Desktop PC (8GB RAM, AMD A8-7410)**: Can run medium-sized models but may need optimization.
* **Better Edge Devices (e.g., NVIDIA Jetson Nano, Xavier NX, Coral TPU)**: Suitable for larger models and higher resolutions.

### Resolution Considerations

* Higher resolution improves detection of small and partially visible tomatoes.
* On constrained devices, resolutions between **512x512** and **1024x1024** are practical.
* Cloud or desktop processing can use higher resolutions (up to the limits of Colab GPU memory).

### Device–Model–Resolution Decision Table (Single-Image Inference)

| Device                        | Model Type                   | Practical Resolution |
| ----------------------------- | ---------------------------- | -------------------- |
| Raspberry Pi 3 Model B (1GB)  | Lite Mask R-CNN / YOLOv8-Seg | 512x512              |
| Raspberry Pi Zero 2 W (512MB) | N/A (Offload)                | N/A                  |
| Desktop PC (8GB, AMD A8)      | Medium Mask R-CNN            | 1024x1024            |
| Jetson Nano                   | YOLOv8-Seg / Mask R-CNN Lite | 640x640 – 1024x1024  |
| Coral Edge TPU                | Quantized YOLOv8-Seg         | 640x640              |
| Colab GPU (Training)          | Standard Mask R-CNN          | 1024x1024+           |

---

## Key Preprocessing Steps Before Training

* **Annotation Format**: Ensure dataset matches the chosen model’s required format.
* **Resolution Normalization**: Resize or crop while maintaining aspect ratio.
* **Augmentations**: Include rotations, flips, color adjustments to simulate outdoor variations.
* **Mask Quality Check**: Ensure masks are accurate and consistent.

---

## Training vs Inference Resolution Strategy

* **Train at Higher Resolution**: Improves model’s ability to detect small or partially visible tomatoes.
* **Infer at Lower Resolution**: Reduces computational load, suitable for edge devices.
* **Limitation**: Lowering resolution at inference can reduce small-object accuracy; balance is needed.

---

## Device–Model Fit (Inference)

* **Pi 3 Model B**: Lightweight segmentation models with reduced resolution.
* **Pi Zero 2 W**: Capture only; offload inference.
* **Desktop PC**: Medium-weight models possible.
* **Jetson/Coral**: Best for optimized, real-time or near real-time inference.
* **Cloud/Desktop GPU**: Full-scale models at high resolution for best accuracy.
