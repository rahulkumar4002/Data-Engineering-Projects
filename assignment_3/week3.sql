create database superstore_db;
use superstore_db;

SELECT * FROM superstore_db.`sample - superstore`;

SHOW COLUMNS
FROM superstore_db.`sample - superstore`;

CREATE TABLE customers AS
SELECT DISTINCT
    `Customer ID`,
    `Customer Name`,
    Segment,
    Country,
    City,
    State,
    `Postal Code`,
    Region
FROM superstore_db.`sample - superstore`;

CREATE TABLE products AS
SELECT DISTINCT
    `Product ID`,
    `Product Name`,
    Category,
    `Sub-Category`
FROM superstore_db.`sample - superstore`;

CREATE TABLE orders AS
SELECT
    `Order ID`,
    `Order Date`,
    `Ship Date`,
    `Ship Mode`,
    `Customer ID`,
    `Product ID`,
    Sales,
    Quantity,
    Discount,
    Profit
FROM superstore_db.`sample - superstore`;

SELECT COUNT(*)
FROM superstore_db.`sample - superstore`;

-- Q-1
SELECT * FROM ORDERS WHERE SALES > (
    SELECT AVG(Sales)
    FROM orders
);
-- Q-2
SELECT *
FROM orders o
WHERE Sales =
(
    SELECT MAX(Sales)
    FROM orders
    WHERE `Customer ID` = o.`Customer ID`
);
-- Q-3
WITH customer_sales AS
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS total_sales
    FROM orders
    GROUP BY `Customer ID`
)
SELECT *
FROM customer_sales;

-- Q-4
WITH customer_sales AS
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS total_sales
    FROM orders
    GROUP BY `Customer ID`
)

SELECT *
FROM customer_sales
WHERE total_sales >
(
    SELECT AVG(total_sales)
    FROM customer_sales
);
-- Q-5
WITH customer_sales AS
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS total_sales
    FROM orders
    GROUP BY `Customer ID`
)

SELECT *
FROM customer_sales
WHERE total_sales >
(
    SELECT AVG(total_sales)
    FROM customer_sales
);

-- Q-6
SELECT
    `Customer ID`,
    `Order ID`,
    Sales,
    ROW_NUMBER() OVER
    (
        PARTITION BY `Customer ID`
        ORDER BY Sales DESC
    ) AS row_num
FROM orders;
-- Q-7
SELECT *
FROM
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS total_sales,
        RANK() OVER (ORDER BY SUM(Sales) DESC) AS sales_rank
    FROM orders
    GROUP BY `Customer ID`
) t
WHERE sales_rank <= 3;


WITH customer_sales AS
(
    SELECT
        `Customer ID`,
        SUM(Sales) AS total_sales
    FROM orders
    GROUP BY `Customer ID`
)

SELECT
    c.`Customer Name`,
    cs.total_sales,
    RANK() OVER (ORDER BY cs.total_sales DESC) AS sales_rank
FROM customer_sales cs
JOIN customers c
ON cs.`Customer ID` = c.`Customer ID`;

-- Mini Project: Customer Sales Insights 
-- Who are the top 5 customers?  
SELECT
    c.`Customer Name`,
    SUM(o.Sales) AS total_sales
FROM orders o
JOIN customers c
ON o.`Customer ID` = c.`Customer ID`
GROUP BY c.`Customer Name`
ORDER BY total_sales DESC
LIMIT 5;

-- Who are the bottom 5 customers?  
SELECT
    c.`Customer Name`,
    SUM(o.Sales) AS total_sales
FROM orders o
JOIN customers c
ON o.`Customer ID` = c.`Customer ID`
GROUP BY c.`Customer Name`
ORDER BY total_sales ASC
LIMIT 5;


--  Which customers made only one order?  
SELECT
    c.`Customer Name`,
    COUNT(o.`Order ID`) AS total_orders
FROM customers c
JOIN orders o
ON c.`Customer ID` = o.`Customer ID`
GROUP BY c.`Customer Name`
HAVING COUNT(o.`Order ID`) = 1;

-- Which customers have above-average sales?
SELECT
    `Customer ID`,
    SUM(Sales) AS total_sales
FROM orders
GROUP BY `Customer ID`
HAVING SUM(Sales) >
(
    SELECT AVG(customer_total)
    FROM
    (
        SELECT SUM(Sales) AS customer_total
        FROM orders
        GROUP BY `Customer ID`
    ) t
);

-- What is the highest order value per customer? 
SELECT
    `Customer ID`,
    MAX(Sales) AS highest_order_value
FROM orders
GROUP BY `Customer ID`;


