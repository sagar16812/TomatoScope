# Frequently Asked Questions (FAQs)

### 1. What is the scope of tomato farming in India?

Tomato is one of the most cultivated vegetable crops in India, with major production in states like Andhra Pradesh, Karnataka, Maharashtra, Madhya Pradesh, and Tamil Nadu. According to the Ministry of Agriculture, India is the second-largest producer of tomatoes globally, producing over 20 million metric tonnes annually (2023-24).

**Popular Varieties:**

* **Open Field:** Pusa Ruby, Arka Saurabh, Arka Vikas, Vaishali
* **Polyhouse/Protected Cultivation:** NS-4266, US-440, Pusa Hybrid-4

**Farming Types:**

* **Open Field:** Low input cost, highly weather dependent, exposed to pests/diseases.
* **Polyhouse:** Controlled environment, high initial investment but better yield and quality.

**Organic vs Chemical:**

* Organic tomato cultivation is gaining popularity due to increasing consumer awareness.
* However, yields in organic systems are often lower, and pest/disease control remains a challenge.

**Common Problems in Tomato Farming:**

* Bacterial wilt, Fungal diseases like early/late blight, leaf curl virus
* Fruit cracking, blossom end rot
* Low pollination, nutrient deficiencies
* Inconsistent ripening, poor fruit set

**Current Solutions:**

* Manual scouting
* Chemical pesticides and fungicides
* Polyhouse farming and drip irrigation systems
* Government advisories and Agri-extension services

**References:**

* [https://agriwelfare.gov.in](https://agriwelfare.gov.in)
* [https://www.nhb.gov.in](https://www.nhb.gov.in)
* [https://icar.gov.in](https://icar.org.in/)

---

### 2. Why only Tomato?

While there are smartphone apps that provide disease detection for multiple crops (e.g., Plantix, AgriApp), most of these apps provide broad crop diagnosis using crowd-sourced data, rely on static, user-clicked images and do not support real-time, automated monitoring. This solution aims at localized precision monitoring over time, customized for tomato morphology and Indian growing conditions.

**Reasons for focusing on tomato:**

* Tomato is sensitive to microclimatic changes and diseases, making it ideal for visual AI-based analysis.
* It has a short lifecycle (3-4 months), which is suitable for rapid prototyping and iteration.
* The ROI per acre is higher, especially in polyhouse farming, where losses due to disease or improper watering can cost significantly.
* Tomato diseases have distinct visual cues that are well-studied in the research community (plenty of annotated datasets available).

TomatoScope differentiates itself by being an **edge-based, real-time visual system** for continuous monitoring, not just diagnosis.

---

### 3. Who is this system for?

* **Smallholder farmers** practicing tomato farming in open field or polyhouse.
* **Agri-startups** and **rural tech integrators** building services on top of precision agriculture.
* **Researchers** and **academic institutions** studying plant phenotyping and smart farming.
* **Organic farming cooperatives** looking to reduce chemical use via visual insights.

---

### 4. What are the parameters required to monitor for a healthy tomato harvest?

* **Leaf health** (detection of blight, curl virus, bacterial spots)
* **Fruit ripeness and count**
* **Soil moisture** (can be integrated optionally)
* **Light intensity and duration**
* **Temperature and humidity** around the plant
* **Pest activity** (e.g., leaf miners, caterpillars)
* **Plant growth rate** (i.e. height and canopy spread) via timelapse monitoring

---

### 5. Apart from RGB camera-based solutions, what other sensors can we use?

* **Soil moisture sensors** (capacitive type for root zone analysis)
* **Temperature and humidity sensors** (DHT22 or BME280)
* **Light/UV sensors** (for detecting light stress or photosynthetic patterns)
* **Thermal cameras** (optional, for detecting water stress)
* **Multi-spectral sensors** (NDVI-based plant health monitoring; more expensive)
* **CO2 sensors** (for polyhouse monitoring)

These sensors can be optionally integrated with the Raspberry Pi and managed through edge AI models or rule-based alerts.

---

### 6. How will it profit the farmer?

* **Preventive action:** Early detection of diseases can save up to 30-40% crop loss.
* **Reduced input cost:** Timely irrigation and fertigation scheduling based on visual and sensor feedback.
* **Better yield:** Continuous monitoring supports improved growth tracking and harvest timing.
* **Reduced pesticide use:** Only treat when visual signs are detected, lowering chemical costs.
* **Market readiness:** Fruit ripeness tracking can optimize the harvest window for market pricing.

**Potential ROI:** In polyhouse farming, an average 10–15% increase in yield or a 20% reduction in loss can translate to thousands of rupees per season per unit (approx. 200–400 sqft setup).

---

### 7. Whether the system would be stationary or mobile? What setting would be best?

The system is designed to be **stationary**, installed near a single plant or group of plants. This ensures consistent angle and lighting, suitable for time-series and visual analytics.

**Recommended settings:**

* Polyhouse or net house: better environmental control
* Urban terrace farming: for demo and small-scale testing
* Open-field (with rain protection): for rugged deployment

Future enhancements may include **mobile-mounted variants** or integration with rovers/drones for field-scale deployment.

---

**Note:** This POC can be scaled for other high-value crops such as capsicum, brinjal, and chillies with minor hardware and software modifications.