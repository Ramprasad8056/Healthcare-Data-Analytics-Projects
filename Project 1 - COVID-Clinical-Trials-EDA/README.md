# COVID-19 Clinical Trials – Exploratory Data Analysis

## 📊 Project Overview

This project focuses on exploratory data analysis (EDA) of global COVID-19 clinical trial data to understand research patterns, trial progression, funding sources, and geographic distribution.

The analysis was performed using Python with a focus on generating meaningful insights relevant to clinical research and healthcare decision-making.

---

## 🎯 Objective

The objective of this project is to:

- Analyze the global landscape of COVID-19 clinical trials
- Understand trial status distribution and research progress
- Examine phase-wise progression of clinical studies
- Identify geographic trends in clinical research
- Explore funding patterns and stakeholder involvement
- Analyze participant enrollment distribution
- Study temporal trends in clinical trial initiation

---

## 🛠 Tools & Technologies Used

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Google Colab

---

## 📂 Dataset Description

The dataset contains information on COVID-19 clinical trials, including:

- Study Title and Status
- Study Phase
- Enrollment Size
- Conditions and Interventions
- Sponsors and Funding Sources
- Study Type and Design
- Start Date and Completion Dates
- Geographic Locations

---

## 🔧 Data Preprocessing

The following preprocessing steps were performed:

- Removed duplicate records to ensure data integrity
- Converted date columns into datetime format for time-based analysis
- Handled missing values without distorting clinical data
- Standardized column formats for consistent analysis

---

## 📊 Exploratory Data Analysis

### 1. Trial Status Analysis
- Analyzed distribution of trial statuses such as recruiting, completed, and terminated
- Identified ongoing vs completed research trends

### 2. Clinical Trial Phases
- Examined distribution across Phase 1, Phase 2, Phase 3, and combined phases
- Evaluated progression of trials beyond early stages

### 3. Geographic Distribution
- Extracted country-level data from location fields
- Identified countries with highest number of clinical trials
- Highlighted global disparities in research infrastructure

### 4. Funding Analysis
- Categorized funding sources (Government, Industry, Others)
- Evaluated contribution of public and private sectors

### 5. Enrollment Analysis
- Analyzed distribution of participant enrollment
- Applied logarithmic scaling to handle skewed data distribution
- Identified presence of large-scale vs small-scale trials

### 6. Time Trend Analysis
- Extracted year from start date
- Visualized number of trials initiated per year
- Observed surge during peak pandemic periods

---

## 🔎 Key Insights

- A significant proportion of trials were either recruiting or completed, indicating sustained global research activity.
- Phase 2 and Phase 3 trials dominated, suggesting rapid progression of clinical studies.
- Countries with advanced healthcare infrastructure conducted the majority of trials.
- Government and industry funding played a major role in supporting research efforts.
- Enrollment sizes varied widely, reflecting both small experimental and large-scale trials.
- Clinical trial activity surged during peak pandemic years, demonstrating rapid global response.

---

## 🧠 Analytical Decisions

- Logarithmic scaling was applied to enrollment data due to right-skewed distribution.
- Country information was extracted from unstructured location data.
- Funding categories were grouped to improve visualization clarity.
- Horizontal bar charts were used to improve readability of long categorical labels.

---

## 💊 Clinical Relevance

This analysis provides insights into:

- Global clinical research response during a pandemic
- Trial progression and development stages
- Funding dynamics in emergency healthcare scenarios
- Research distribution across regions

These insights are relevant for clinical research planning, policy-making, and healthcare analytics.

---

## 📈 Conclusion

The analysis highlights the scale, speed, and collaborative nature of the global response to COVID-19 through clinical research.

It demonstrates the importance of structured data analysis in understanding healthcare trends and supporting evidence-based decision-making.

---

## 🚀 Future Scope

- Integration with outcome data for deeper analysis
- Comparative studies across different diseases
- Advanced statistical modeling of trial success rates
- Expansion into pharmacovigilance datasets

---
