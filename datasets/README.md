# List of Datasets

## Fruit Counting and Detection

### 1. [TomatoPlantfactoryDataset](https://data.mendeley.com/datasets/8h3s6jkyff/2)
The dataset entitled Tomato Plantfactory Dataset, which comprises 520 images of the Micro tomato variety, captured at two different resolutions (6000x4000 and 4032x3024) and at two stages of fruit growth. The images were acquired in a complex lighting environment of an artificial light plant factory, presenting various complexities, including variations in perspectives, lighting quality, distance, and occlusions and blurs of the fruits. The dataset provides a valuable resource for researchers interested in developing new techniques for tomato fruit detection, classification, localization, and visualization. 

All tomato fruits have been manually annotated, resulting in a total of 9112 instances, including 5996 green fruits and 3116 red fruits. The annotation files are available in both PascalVOC and YOLO formats, facilitating the integration of the dataset into existing computer vision pipelines. Finally, the dataset can be conveniently partitioned for rapid model training purposes. 

- **Citations:**
    ```
    Z. Wu, M. Liu, C. Sun, X. Wang, A dataset of tomato fruits images for object detection in the complex lighting environment of plant factories, Data in Brief. 48 (2023) 109291. https://doi.org/10.1016/j.dib.2023.109291.
    ```

### 2. [LaboroTomato Dataset](https://github.com/laboroai/LaboroTomato?tab=readme-ov-file)
The Laboro Tomato dataset comprises images capturing tomatoes in various stages of ripening, tailored for tasks involving object detection and instance segmentation. Additionally, the dataset offers two distinct subsets categorized by tomato size. These images were acquired at a local farm, utilizing two separate cameras, each contributing to varying resolutions and image quality.

Each tomato is **divided into 2 categories according to size (normal size b_ and cherry tomato l_)** and 3 categories depending on the stage of ripening:

- **fully_ripened**: complitely red color and ready to be harvested. Filled with red color on 90% or more
- **half_ripened**: greenish and needs time to ripen. Filled with red color on 30-89%
- **green**: complitely green/white, sometimes with rare red parts. Filled with red color on 0-30%

The dataset consists of 804 images with 10610 labeled objects belonging to 6 different classes including b_green, l_green, l_fully_ripened, and other: b_half_ripened, l_half_ripened, and b_fully_ripened.

Images in the LaboroTomato dataset have pixel-level `instance segmentation` annotations. Due to the nature of the instance segmentation task, it can be automatically transformed into a `semantic segmentation` (only one mask for every class) or `object detection` (bounding boxes for every object) tasks. All images are labeled (i.e. with annotations). There are 2 splits in the dataset: Train (643 images) and Test (161 images). The dataset was released in 2020 by the `Laboro.AI Inc, Japan`.

Download the full or subsets of the dataset from their github page:
- Github: https://github.com/laboroai/LaboroTomato?tab=readme-ov-file

or checkout the visualizations on datasetninja.com:
- Visualization and Download: https://datasetninja.com/laboro-tomato 

### 3. [tomatOD](https://github.com/up2metric/tomatOD)

**tomatOD** is a dataset for tomato fruit localization and ripening classification, containing images of tomato fruits in a greenhouse and high-quality expert annotations from agriculturists. It is a task-specific object detection dataset for tomato fruits, suitable for precision agriculture applications that typically require highly-accurate localization.

The tomatOD dataset consists of 277 images with 2418 annotated tomato fruit samples of unripe, semi-ripe and fully-ripe classes.

- **Data organization:**
The dataset was split into train and test set according to a 80%/20% train-test split ratio. Please, note that the selection of the training and test data was conducted in a semi-random manner. The following table shows the number of images and annotated boxes of train and test sets of the tomatOD dataset.

- **Data Format:**
The annotations of the tomatOD dataset are provided in a COCO compatible format.

- **Citations:**
We hope that researchers in any domain will find the tomatOD dataset helpful for their own research. If you use the tomatOD dataset in your work, please cite it as:
    ```
    Tsironis V., Bourou S., Stentoumis C. (2020). tomatOD: Evaluation of object detection algorithms on a new real-world tomato dataset. In ISPRS - International Archives of the Photogrammetry, Remote Sensing and Spatial Information Sciences. Available from https://github.com/up2metric/tomatOD.
    ```

### 4. [Tomato Computer Vision Model - Roboflow](https://universe.roboflow.com/erhej/tomato-36wr4)
- Project with dataset containing 1002 images taken between two rows of tomato plants in a Polyhouse. 
- Cover more than one plant in an image, therefore smaller size of fruit.
- Could be used for mobile robots or camera system placed at a distance.

### 5. [tomato dataset Computer Vision Dataset - Roboflow](https://universe.roboflow.com/guerin-agossadou-knqcx/tomato-dataset-tfsui)