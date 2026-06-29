
# PySpark Data Processing Assignment

## 📌 Objective
The objective of this assignment is to understand the basics of Apache Spark using PySpark and perform efficient data processing operations on an employee dataset.

---

## 🛠️ Technologies Used

- Python
- Apache Spark (PySpark)
- Jupyter Notebook

---

## 📂 Dataset

The assignment uses an **Employee CSV dataset** containing information such as:

- Employee Name
- Department
- Salary

---

## 📋 Tasks Performed

### 1. Create Spark Session
- Initialize a SparkSession.

### 2. Load CSV File
- Read the employee dataset into a Spark DataFrame.

### 3. Print Schema
- Display the structure and data types of the dataset.

### 4. Display Dataset
- Show the contents of the DataFrame.

### 5. Select Required Columns
- Display only:
  - Name
  - Department
  - Salary

### 6. Filter Records
- Show employees whose salary is greater than **50,000**.

### 7. Rename Column
- Rename:
  - `Salary` → `Monthly_Salary`

### 8. Change Data Type
- Convert `Monthly_Salary` into Integer type.

### 9. Create New Column
- Add:
  - `Annual_Salary = Monthly_Salary × 12`

### 10. Handle Missing Values
- Replace NULL values in salary with **0**.

### 11. Data Processing Pipeline
Perform multiple transformations using a PySpark pipeline.

### 12. Save Output
Store processed data in:

- CSV format
- Parquet format

### 13. Read Parquet File
Verify the saved Parquet dataset.

### 14. Execution Plan
Display the Spark execution plan using:

```python
explain(True)
```

### 15. Count Records
Find the total number of records.

### 16. Display First Five Records
Preview the processed dataset.

---

## 📁 Project Structure

```
Task-1/
│
├── Task 1.ipynb
├── employees.csv
├── output/
│   ├── csv_output/
│   └── parquet_output/
└── README.md
```

---

## 🚀 How to Run

1. Install Apache Spark and Python.
2. Install PySpark:

```bash
pip install pyspark
```

3. Launch Jupyter Notebook:

```bash
jupyter notebook
```

4. Open the notebook and run all cells sequentially.

---

## 📊 Learning Outcomes

By completing this assignment, you will learn how to:

- Create Spark Sessions
- Read CSV files using PySpark
- Work with DataFrames
- Select and filter data
- Rename columns
- Change data types
- Handle missing values
- Create derived columns
- Build transformation pipelines
- Save data in CSV and Parquet formats
- Read Parquet files
- Analyze Spark execution plans

---

## ✅ Conclusion

This assignment demonstrates the fundamental data processing capabilities of PySpark. It covers data loading, transformation, filtering, null handling, pipeline creation, and exporting data into optimized storage formats such as Parquet.
