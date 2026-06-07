
# Superstore SQL Sales Analysis

## Objective

Analyze sales data using SQL by applying:

* Subqueries
* Common Table Expressions (CTEs)
* Window Functions
* Joins
* Aggregate Functions

The project uses the Superstore dataset to answer various business questions and generate customer sales insights.

---

## Dataset

Source: Sample Superstore Dataset

Main raw table:

* `superstore_raw`

Tables created from the raw dataset:

* `customers`
* `orders`
* `products`

---

## SQL Concepts Used

### Subqueries

* Find orders with sales greater than average sales
* Find the highest sales order for each customer

### Common Table Expressions (CTEs)

* Calculate total sales for each customer
* Find customers whose total sales are above average

### Window Functions

* Rank customers based on total sales
* Assign row numbers within each customer group
* Display top 3 customers based on total sales

### Joins

* Combine customer and order information
* Generate customer sales rankings

---

## Business Questions Solved

### Customer Sales Insights

1. Who are the top 5 customers?
2. Who are the bottom 5 customers?
3. Which customers made only one order?
4. Which customers have above-average sales?
5. What is the highest order value per customer?

---

## Final Combined Query

Created a query using:

* JOIN
* CTE
* Window Function

Output:

* Customer Name
* Total Sales
* Rank

---

## Skills Demonstrated

* Database Creation
* Data Modeling
* Data Cleaning using SELECT DISTINCT
* SQL Query Writing
* Business Data Analysis
* Customer Sales Analysis
* Ranking and Aggregation Techniques

---

## Tools Used

* MySQL
* MySQL Workbench
* GitHub

---

## Author

Rahul Kumar

SQL Practice Project – Superstore Sales Analysis
