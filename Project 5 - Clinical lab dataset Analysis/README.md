# 🧪 Clinical Laboratory Abnormality Monitoring Dashboard

## 📌 Project Overview

This project focuses on building an **interactive healthcare analytics dashboard** using clinical laboratory data to monitor patient abnormalities and support data-driven clinical insights.

The dashboard enables dynamic analysis of laboratory parameters such as **Sodium, Potassium, Glucose, Hemoglobin, WBC, Platelets, Cholesterol, RBC, and Blood Pressure**, allowing users to explore patient distributions, abnormal conditions, and comparative analysis.

---

## 🎯 Objectives

* To analyze clinical lab parameters across patients
* To classify values into **Low, Normal, High**
* To identify abnormal patient groups (e.g., hypernatremia, hypokalemia)
* To enable **interactive comparison between two clinical metrics**
* To visualize demographic distribution (Age, Gender) based on selected abnormalities

---

## 📊 Key Features

### 🔹 1. Dynamic Metric Selection

* Users can select:

  * **Metric 1 + Status (Low/Normal/High)**
  * **Metric 2 + Status**
* Enables flexible clinical analysis

---

### 🔹 2. Interactive Visualizations

* **Pie Chart** → Distribution of selected metric (Low/Normal/High)
* **Scatter Plot** → Comparison between two selected metrics
* **Bar Charts**:

  * Age-wise distribution
  * Gender-wise distribution
  * Abnormality count across metrics

---

### 🔹 3. Clinical Filtering Logic

* Dashboard dynamically filters patients based on:

  * Selected metric
  * Selected abnormality status

Example:

* High Sodium → Hypernatremia patients
* Low Potassium → Hypokalemia patients

---

### 🔹 4. Dual Condition Analysis

Supports advanced clinical comparison:

> Example:
> **High Sodium vs Low Potassium**

* Scatter plot highlights patients satisfying both conditions
* Helps identify co-existing abnormalities

---

## 🧠 Data Modeling Approach

### 🔹 Dataset Used

* `clinical_lab_dataset.csv`
* Contains:

  * Patient demographics
  * Laboratory parameters
  * Derived status columns (Low / Normal / High)

---

### 🔹 Transformation Logic

* Created status columns for each metric:

  * Sodium Status
  * Potassium Status
  * Glucose Status
  * etc.

* Converted dataset into **long format (Pie Table)** using DAX:

  * Enables dynamic metric switching in visuals

---

## 🛠️ Tools & Technologies

* **Power BI Desktop**
* **DAX (Data Analysis Expressions)**
* **SQL (for preprocessing & analysis)**
* Data Visualization & Dashboard Design

---

## 🧾 SQL Analysis

Key SQL operations performed include:

* Data exploration and aggregation
* Age group classification
* Gender distribution analysis
* Clinical flag generation (e.g., anemia, infection)
* Risk score calculation and categorization

Example: 

---

## 📈 Insights Generated

* Identification of abnormal patient clusters
* Distribution of clinical conditions across age groups
* Gender-based variation in abnormalities
* Risk categorization of patients
* Co-occurrence of multiple abnormalities

---

## 🎨 Dashboard Design Highlights

* Clean **dark theme UI**
* Consistent color coding:

  * 🔴 High
  * 🟢 Normal
  * 🟠 Low
* Interactive slicers for dynamic exploration
* Structured layout:

  * KPI section
  * Control panel
  * Visualization area

---

## 🚀 Future Improvements

* Add real-time data integration
* Include predictive analytics (ML models)
* Expand clinical risk scoring
* Add drill-through patient-level insights

---

This project reflects my effort to integrate **clinical knowledge with data analytics**.

---

## ⭐ If you like this project

Give it a ⭐ on GitHub and feel free to connect!

---

