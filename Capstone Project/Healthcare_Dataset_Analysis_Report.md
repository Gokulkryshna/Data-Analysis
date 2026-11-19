# Healthcare Dataset Analysis

## 1. Project Objective

The objective of this project is to analyze a healthcare clinical dataset to identify patterns and relationships among disease categories, disease severity, clinical measurements, procedure complexity, and hospital-acquired infections.

The project involves data cleaning, exploratory data analysis (EDA), statistical summaries, and data visualization to extract meaningful insights from the dataset.

## 2. Dataset Overview

- **Dataset:** Healthcare Clinical Dataset
- **Total Records:** 13,214
- **Total Columns:** 22
- **Data Type:** Structured tabular data
- **Domain:** Healthcare

The dataset contains information about patient encounters, diagnosis details, disease categories, disease severity, clinical measurements, medical procedures, and hospital-acquired infections.

### Key Data Categories

1. Patient and encounter information
2. Diagnosis information
3. Clinical measurements and laboratory results
4. Medical procedure details
5. Hospital-acquired infection records

## 3. Data Cleaning

The dataset was inspected and cleaned to improve data quality before performing exploratory data analysis.

The following steps were performed:

1. **Missing Value Analysis:** Identified missing values in the dataset using `isnull().sum()`.

2. **Duplicate Check:** Checked for duplicate records. No duplicate rows were found.

3. **Handling Missing Values:**
   - Replaced missing values in `procedure_complexity` with "Not Applicable".
   - Filled missing numerical values using median imputation.
   - Replaced missing values in `secondary_diagnosis_code` with "No Secondary Diagnosis Recorded".

4. **Data Type Correction:** Converted `primary_procedure_code` into string format.

5. **Final Verification:** Checked the dataset again to confirm that no missing values remained.

6. **Exporting Cleaned Data:** Saved the cleaned dataset as `Clinical_Dataset_Cleaned.csv`.

After cleaning, the dataset contained 13,214 records and 22 columns, with no missing values or duplicate rows.


## 4. Exploratory Data Analysis (EDA)

Exploratory Data Analysis was performed to understand the distribution, patterns, and relationships within the cleaned healthcare dataset.

The following analyses were carried out:

### 4.1 Descriptive Statistical Analysis
Used statistical summaries such as mean, median, standard deviation, minimum, and maximum to understand numerical variables.

### 4.2 Categorical Data Analysis
Analyzed the distribution of:
- Disease categories
- Disease severity levels
- Hospital-acquired infections
- Procedure complexity

### 4.3 Numerical Data Analysis
Analyzed clinical measurements, including:
- Systolic and diastolic blood pressure
- Heart rate
- Respiratory rate
- Body temperature
- SpO₂
- Blood glucose
- Serum creatinine
- Hemoglobin
- White blood cell count

Histograms and box plots were used to understand distributions and identify potential outliers.

### 4.4 Correlation Analysis
Calculated correlations among numerical variables and visualized them using a correlation heatmap.

### 4.5 Relationship Analysis
Explored relationships between:
- Disease category and disease severity
- Disease category and hospital-acquired infections
- Procedure complexity and disease severity

Cross-tabulations, percentage calculations, and charts were used to compare these groups.



## 5. Key Findings

The analysis revealed the following observations:

1. **Disease Distribution:** Respiratory diseases had the highest number of records (2,498), followed by cardiovascular diseases (2,057).

2. **Disease Severity:** Moderate severity was the most frequently recorded category, with 5,104 records.

3. **Hospital-Acquired Infections:** Approximately 2.74% of records were associated with hospital-acquired infections.

4. **Clinical Measurements:** The dataset showed variations in clinical measurements such as blood pressure, heart rate, temperature, and blood glucose levels.

5. **Correlation Analysis:** Systolic and diastolic blood pressure showed a strong positive correlation (0.95).

6. **Disease Severity by Category:** Infectious diseases had the highest proportion of Critical cases (40.54%).

7. **Hospital-Acquired Infections by Category:** Trauma had the highest recorded infection proportion (6.92%), followed by Infectious diseases (6.37%).

8. **Procedure Complexity:** High-complexity procedures had the highest proportion of Severe cases (38.97%).


## 6. Conclusion

This project involved cleaning and analyzing a healthcare clinical dataset containing 13,214 records and 22 columns.

Data cleaning techniques were applied to handle missing values, verify duplicate records, and ensure appropriate data types. Exploratory Data Analysis was then performed using Python libraries such as Pandas, NumPy, Matplotlib, and Seaborn.

The analysis helped identify patterns in disease distribution, disease severity, clinical measurements, procedure complexity, and hospital-acquired infections. Correlation analysis and comparative visualizations provided further insights into relationships among the variables.

Overall, this project provided practical experience in data preprocessing, statistical analysis, exploratory data analysis, and data visualization using Python.