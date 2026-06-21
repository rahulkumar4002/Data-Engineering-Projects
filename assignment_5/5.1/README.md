# Spark DataFrame Pipeline

## 📌 Project Overview

This project demonstrates the fundamentals of Apache Spark DataFrames and data processing techniques. The objective is to perform data cleaning, transformation, filtering, aggregation, and schema modifications using PySpark.

The project focuses on handling real-world data quality issues such as duplicate records, null values, empty fields, and inconsistent schemas while building a complete Spark data processing pipeline.

---

## 🎯 Objectives

- Understand Spark DataFrame concepts
- Learn DataFrame immutability
- Remove duplicate records
- Handle null and missing values
- Apply filtering conditions
- Perform aggregations using Spark functions
- Group data using groupBy()
- Understand shuffle operations and wide transformations
- Modify schema using casting and renaming
- Build an end-to-end data processing pipeline

---

## 🛠️ Technologies Used

- Python
- Apache Spark (PySpark)
- Jupyter Notebook
- GitHub

---

## 📂 Files Included

- `Part1.ipynb` → Main PySpark notebook
- `cleaned_data.csv` → Processed dataset
- `insights.md` → Key observations and findings
- `readme.md` → Project documentation

---

## ⚙️ Data Cleaning Operations

- Removed duplicate records
- Handled null values
- Replaced missing values
- Removed inconsistent records
- Standardized schema

---

## 🔄 Transformations Performed

- Filtering records based on conditions
- Renaming columns
- Casting data types
- Creating derived columns
- Data validation

---

## 📊 Aggregations

The following aggregations were performed:

- Count
- Sum
- Average
- Minimum
- Maximum

Group-wise analysis was performed using:

```python
groupBy()
