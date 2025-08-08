# Mask R-CNN dataset layout

The dataset layout for Mask R-CNN generally follows a specific structure, especially for instance segmentation tasks. The goal is to provide not only the images but also the associated ground truth annotations (bounding boxes, class labels, and segmentation masks). Here's a typical layout:

### Common Dataset Structure
The dataset should typically contain the following:

1. **Images**: These are the input images that will be fed into the model. The images are typically stored in a directory.
2. **Annotations**: The annotations include the ground truth for object detection and instance segmentation (bounding boxes, class labels, and segmentation masks). These are usually stored in a separate JSON file or as separate files linked to each image.

Here’s an example of how the dataset might be organized:

```
dataset/
│
├── images/
│   ├── img1.jpg
│   ├── img2.jpg
│   ├── ...
│
├── annotations/
│   ├── img1.json
│   ├── img2.json
│   ├── ...
```

### Annotation Format
For instance segmentation, annotations typically include:

1. **Image Size**: Width and height of the image.
2. **Annotations per Image**:
   - **Object Categories**: Class labels for each object in the image.
   - **Bounding Boxes**: Coordinates of the bounding boxes for each object.
   - **Masks**: A binary mask (or a polygon representation) for each instance (object) in the image.
   
Here’s an example of the annotation format for a single image in JSON:

```json
{
  "image": "img1.jpg",
  "height": 480,
  "width": 640,
  "annotations": [
    {
      "category_id": 1,  // Class label (e.g., 1 for 'person')
      "bbox": [x_min, y_min, width, height],  // Bounding box coordinates
      "segmentation": [[x1, y1, x2, y2, ..., xn, yn]],  // List of polygon points for the mask
      "area": 1500,  // Area of the mask (useful for certain loss functions)
      "iscrowd": 0  // Whether this is a "crowd" (overlapping instances of the same class)
    },
    {
      "category_id": 2,  // Another object class, for example, 'car'
      "bbox": [x_min, y_min, width, height],
      "segmentation": [[x1, y1, x2, y2, ..., xn, yn]],
      "area": 2000,
      "iscrowd": 0
    }
  ]
}
```

### Key Elements in Annotations
- **category_id**: The class label of the object (e.g., '1' for 'person', '2' for 'car'). This links to a class label file.
- **bbox**: The bounding box that surrounds the object. The format is `[x_min, y_min, width, height]`.
- **segmentation**: A list of points defining the polygon mask of the object, often encoded in a [x1, y1, x2, y2, ..., xn, yn] format.
- **area**: The pixel area of the segmentation mask (helps for computing loss).
- **iscrowd**: This indicates if the instance is part of a "crowd" (i.e., a collection of objects that are hard to distinguish).

### Example of Class Labels File
If you have multiple categories, you may need a separate class label file (e.g., `class_labels.json`):

```json
{
  "1": "person",
  "2": "car",
  "3": "dog"
}
```

### Dataset Formats
- **COCO Format**: Mask R-CNN is often trained using the **COCO format**, which is a standardized format that contains metadata and annotations for object detection, keypoint detection, and segmentation.
- **Custom Formats**: Some datasets might use custom formats, but the key information remains the same: images, bounding boxes, and segmentation masks.

### Common Dataset Example (COCO-style)
For instance, the **COCO dataset** for object detection and segmentation stores the following:
- A directory of images.
- A JSON file (`annotations.json`) containing all image annotations.