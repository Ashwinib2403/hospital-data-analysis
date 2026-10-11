# Hospital Data Analysis Project

## 1. Project Overview

This project analyzes hospital patient data using Microsoft Excel, SQL Server, and Python. The goal is to explore patient demographics, medical conditions, hospital admissions, billing amounts, and length of hospital stay through data analysis and visualizations.

## 2. Objectives

- Analyze patient records and medical conditions.
- Calculate summary statistics for billing amounts and length of stay.
- Compare patient counts across different categories.
- Identify patterns in billing and hospital stay duration.
- Present findings using charts and an Excel dashboard.

## 3. Tools and Technologies

- **Microsoft Excel:** Data analysis, PivotTables, charts, and dashboard.
- **SQL Server:** Data querying, aggregation, ranking, and analysis.
- **Python:** Data preparation and analysis.
- **Pandas:** Data manipulation and aggregation.
- **Matplotlib:** Data visualization.

## 4. Dataset Description

The dataset contains 10,000 patient records and 15 original columns, including:

- Patient name
- Age and gender
- Blood type
- Medical condition
- Date of admission and discharge
- Doctor and hospital
- Insurance provider
- Billing amount
- Room number
- Admission type
- Medication
- Test results

A calculated **Length of Stay** column was added during analysis using the admission and discharge dates.

## 5. Project Workflow

### Excel Analysis

- Created PivotTables to summarize patient records.
- Analyzed medical conditions, admission types, gender, insurance providers, medications, and blood types.
- Calculated average billing amounts and length of stay.
- Created charts and an interactive-style dashboard with summary metrics.

### SQL Server Analysis

- Queried and summarized patient records.
- Calculated average, minimum, and maximum billing amounts.
- Analyzed patient counts by medical condition, admission type, gender, insurance provider, and other categories.
- Compared average billing amounts and length of stay across categories.
- Used aggregate functions, `GROUP BY`, `CASE`, common table expressions, ranking functions, and a database view.

### Python Analysis

- Loaded the dataset using Pandas.
- Explored the dataset's shape, columns, and information.
- Converted admission and discharge dates to datetime format.
- Calculated length of stay in days.
- Analyzed billing amounts, patient counts, and average length of stay.
- Checked for duplicate rows and missing values.
- Created three bar charts using Matplotlib.

## 6. Key Findings

- **Total patient records:** 10,000
- **Average billing amount:** Approximately 25,516.81
- **Average length of stay:** Approximately 15.56 days
- **Duplicate rows:** 0
- **Missing values:** 0

### Patient Counts by Medical Condition

| Medical Condition | Patient Count |
|---|---:|
| Arthritis | 1,650 |
| Asthma | 1,708 |
| Cancer | 1,703 |
| Diabetes | 1,623 |
| Hypertension | 1,688 |
| Obesity | 1,628 |

### Average Billing Amount by Medical Condition

| Medical Condition | Average Billing Amount |
|---|---:|
| Arthritis | 25,187.63 |
| Asthma | 25,416.87 |
| Cancer | 25,539.10 |
| Diabetes | 26,060.12 |
| Hypertension | 25,198.03 |
| Obesity | 25,720.84 |

Among these categories, Diabetes had the highest average billing amount.

## 7. Visualizations

The project includes three Python charts:

1. **Number of Patients by Medical Condition** — compares patient counts across six conditions.
2. **Average Billing Amount by Medical Condition** — compares average billing amounts across conditions.
3. **Average Length of Stay by Medical Condition** — compares average hospital stay durations across conditions.

## 8. Data Quality

The dataset was checked for duplicate rows and missing values.

- No duplicate rows were found.
- No missing values were found in the analyzed columns.

## 9. Skills Demonstrated

- Data cleaning and preparation
- Exploratory Data Analysis (EDA)
- SQL querying and aggregation
- Excel PivotTables and dashboard creation
- Python programming
- Pandas data manipulation
- Matplotlib visualizations
- Data interpretation and reporting

## 10. Conclusion

This project demonstrates how Excel, SQL Server, and Python can be used together to analyze hospital patient data. It combines data preparation, summary statistics, category-based comparisons, and visualizations to communicate findings clearly.

**Note:** The findings describe the provided dataset and should not be interpreted as conclusions about real-world hospitals or patient outcomes.

