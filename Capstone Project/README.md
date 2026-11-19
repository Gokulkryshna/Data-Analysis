# Healthcare Dataset Analysis

## Project Overview

This project focuses on cleaning and analyzing a healthcare clinical dataset using Python. The objective is to explore disease patterns, clinical measurements, disease severity, procedure complexity, and hospital-acquired infections through Exploratory Data Analysis (EDA).

## Dataset Overview

- **Total Records:** 13,214
- **Total Columns:** 22
- **Domain:** Healthcare
- **Data Type:** Structured tabular data

The dataset includes patient encounter details, diagnosis information, clinical measurements, medical procedures, and hospital-acquired infection records.

## Technologies & Libraries

- Python
- Pandas
- NumPy
- Matplotlib
- Seaborn
- Jupyter Notebook / VS Code

## Project Workflow

### 1. Data Cleaning

- Identified missing values.
- Checked for duplicate records.
- Handled missing numerical values using median imputation.
- Replaced missing categorical values appropriately.
- Corrected data types.
- Exported the cleaned dataset.

### 2. Exploratory Data Analysis (EDA)

- Descriptive statistical analysis.
- Disease category distribution.
- Disease severity distribution.
- Clinical measurement analysis.
- Hospital-acquired infection analysis.
- Correlation analysis.
- Disease category vs. severity analysis.
- Disease category vs. infection analysis.
- Procedure complexity vs. disease severity analysis.

### 3. Data Visualization

Used histograms, box plots, bar charts, pie charts, and correlation heatmaps to visualize patterns and relationships in the dataset.

## Key Findings

- Respiratory diseases had the highest number of records (2,498).
- Moderate disease severity was the most frequently recorded category (5,104 records).
- Approximately 2.74% of records were associated with hospital-acquired infections.
- Systolic and diastolic blood pressure showed a strong positive correlation (0.95).
- Infectious diseases had the highest proportion of Critical cases (40.54%).
- Trauma had the highest hospital-acquired infection proportion (6.92%).
- High-complexity procedures had the highest proportion of Severe cases (38.97%).

## Project Files

- `Clinical_Dataset_Cleaned.csv` – Cleaned healthcare dataset.
- `Healthcare_Dataset_Analysis_Report.md` – Detailed analysis report.
- Python analysis file – Data cleaning and exploratory analysis code.

## Conclusion

This project provided practical experience in data preprocessing, handling missing values, statistical analysis, exploratory data analysis, and data visualization using Python.

The analysis helped identify patterns and relationships among healthcare variables and demonstrated the application of Python libraries in working with structured datasets.

---

**Project Domain:** Data Analytics  
**Language:** Python
