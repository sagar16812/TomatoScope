# **YOLOv8 Instance Segmentation Dataset Layout**

YOLOv8 uses the **same folder structure** for segmentation as it does for detection, but with additional **segmentation mask annotations** stored inside the label `.txt` files.

## **1. Folder Structure**

```
dataset/
├── train/
│   ├── images/
│   │   ├── img1.jpg
│   │   ├── img2.jpg
│   ├── labels/
│   │   ├── img1.txt
│   │   ├── img2.txt
├── val/
│   ├── images/
│   │   ├── img3.jpg
│   │   ├── img4.jpg
│   ├── labels/
│   │   ├── img3.txt
│   │   ├── img4.txt
├── test/  (optional)
│   ├── images/
│   ├── labels/
data.yaml
```

---

## **2. data.yaml File Example**

```yaml
path: dataset  # root dataset folder
train: train/images
val: val/images
test: test/images  # optional

nc: 1  # number of classes
names: ["tomato"]
```

---

## **3. Label File Format (Segmentation)**

In segmentation mode, **each `.txt` file** for an image contains **one line per object**, and each line looks like this:

```
<class_id> x1 y1 x2 y2 x3 y3 ... xn yn
```

* `class_id` → integer starting at 0
* `(x1, y1), (x2, y2), ...` → polygon points of the segmentation mask
* All coordinates are **normalized** to the image width and height (values between 0 and 1)
* Polygons should be **closed** (first point equals last point) is optional; YOLO closes them automatically, but maintaining closure is good practice.

Example for one tomato instance:

```
0 0.523 0.418 0.548 0.437 0.562 0.478 0.534 0.482
```

---

## **4. Key Notes**

* **Images** can be any resolution — YOLOv8 will resize during training, but keeping similar aspect ratios across images helps.
* **Mask complexity**: The more polygon points you use, the more accurate the mask, but it also increases annotation time and file size.
* **Annotation tool**: You can use **LabelMe**, **CVAT**, **makesense.ai**, or **Roboflow** to export YOLO segmentation format directly.
* **Multiple objects** in the same image → multiple lines in the same `.txt` file.

---

