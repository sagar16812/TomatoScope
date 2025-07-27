# 🍅 TomatoScope

**TomatoScope** is an open-source Raspberry Pi-based system designed for time-lapse and computer vision experiments on tomato plants. The project includes a waterproof enclosure setup, camera-based monitoring, and a collection of deep learning pipelines for plant health, growth, and fruit detection.

---

## 📁 Project Structure

```
TomatoScope/
├── datasets                  # Datasets for training/testing vision models
├── docs                      # Setup and research documentation
│   ├── key_research_themes_europe.md
│   ├── list_of_DL_tasks.md
│   ├── plant_setup_guide.md
│   └── system_enclosure_guide.md
├── install.sh                # Shell script to create environment and folder structure
├── models                    # Pre-trained and custom-trained models
├── requirements.txt          # Python dependencies
└── src                       # Source code for capture, training, inference, etc.
```

---

## 🔧 Setup Instructions

Run the `install.sh` script to install Python environment:

```bash
chmod +x install.sh
./install.sh
```

---

## 📌 Features

* Waterproof junction box setup with internal camera mounting
* Custom power input via 12V inverter
* Wireless connectivity using Wi-Fi and BLE
* Raspberry Pi-compatible pipelines for:

  * Tomato disease detection
  * Ripeness classification
  * Fruit counting
  * Growth monitoring
  * Crop stress detection

---

## 📚 Documentation

All guides and research resources are inside the `docs/` folder:

* `plant_setup_guide.md`: Details of tomato plant experimental setup
* `system_enclosure_guide.md`: Raspberry Pi waterproof system guide
* `list_of_DL_tasks.md`: Suggested vision tasks and workflows
* `key_research_themes_europe.md`: Public datasets and academic resources

---

## 🧠 Future Work

* Add ROS2-based control system
* Deploy edge models using TensorFlow Lite
* Connect to cloud dashboard (Firebase/ThingsBoard)

---

## 📝 License

This project is licensed under the **Creative Commons Attribution-ShareAlike (CC BY-SA)** license.

---

**Built with ❤️ for Tomato CV Experiments.**
