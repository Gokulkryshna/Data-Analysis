
# 🏥 Healthcare Clinical Data Analysis

## 📊 Phase 1 – Data Understanding

### 1. Objective

The objective of this phase is to understand the structure, size, features, and initial characteristics of the healthcare clinical dataset before performing data cleaning and detailed analysis.

### 2. Dataset Overview

The dataset contains clinical records related to patients, diseases, severity levels, and hospital-acquired infections.

| Metric | Value |
|---|---:|
| Total Records | 13,214 |
| Total Columns | 22 |
| Unique Patients | 5,000 |
| Duplicate Rows | 0 |

### 3. Initial Observations

#### 🦠 Disease Category

- Respiratory diseases had the highest number of records (2,498).
- Cardiovascular diseases were the second-highest category (2,057).
- Obstetrics had the lowest number of records (302).

#### ⚕️ Disease Severity

- Moderate cases were the most frequent (5,104).
- Critical cases were the least frequent (1,493).

#### 🏥 Hospital-Acquired Infections

- 362 records were marked as hospital-acquired infections.
- 12,852 records were marked as having no hospital-acquired infection.
- Approximately 2.74% of records had a hospital-acquired infection.

### 4. Initial Data Quality Observations

- No duplicate rows were identified.
- Missing values were present in several columns, including laboratory measurements and secondary diagnosis codes.
- `procedure_complexity` had a relatively high proportion of missing values.
- Further data cleaning was required before conducting detailed analysis.

### 5. Phase 1 Conclusion

The initial exploration provided an understanding of the dataset's structure, disease distribution, severity levels, and data quality issues.

This phase helped identify missing values and other potential data quality concerns. Based on these observations, the dataset was ready to proceed to **Phase 2 – Data Cleaning and Preparation**.

