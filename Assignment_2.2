USE ecommerce_db;

/* =====================================
   SECTION A : SQL BASICS
===================================== */

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    city VARCHAR(50) NOT NULL,
    state VARCHAR(50) NOT NULL,
    join_date DATE NOT NULL,
    is_premium BOOLEAN DEFAULT FALSE
);

INSERT INTO customers VALUES
(101, 'Aarav', 'Sharma', 'aarav.s@email.com', 'Mumbai', 'Maharashtra', '2024-01-15', TRUE),
(102, 'Priya', 'Patel', 'priya.p@email.com', 'Ahmedabad', 'Gujarat', '2024-02-20', FALSE),
(103, 'Rohan', 'Gupta', 'rohan.g@email.com', 'Delhi', 'Delhi', '2024-03-10', TRUE);

-- Q1: Display all columns and rows from the customers table
select * from customers;
-- Q2: Retrieve only the first_name, last_name, and city of all customers
select first_name, last_name, city from customers;

-- Q3: List all unique categories available in the products table
CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    brand VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL CHECK (unit_price > 0),
    stock_qty INT NOT NULL DEFAULT 0 CHECK (stock_qty >= 0)
);

INSERT INTO PRODUCTS value 
(201, 'iPhone 15', 'Electronics', 'Apple', 79999.00, 10),
(202, 'Samsung TV', 'Electronics', 'Samsung', 45999.00, 5),
(203, 'Nike Shoes', 'Footwear', 'Nike', 3999.00, 20),
(204, 'T-Shirt', 'Clothing', 'Puma', 999.00, 50),
(205, 'Laptop', 'Electronics', 'Dell', 65000.00, 7);

-- ANS
SELECT DISTINCT category
FROM products;

-- Q4: Identify the Primary Key of each table
-- Explain why a Primary Key must be unique and NOT NULL

SHOW KEYS FROM customers WHERE Key_name = 'PRIMARY';

SHOW KEYS FROM products WHERE Key_name = 'PRIMARY';

/*
customers -> customer_id
products -> product_id

Primary Key must be:
1. UNIQUE
2. NOT NULL
*/


-- Q5: Constraints applied on email column
/*
Constraints on email column:

1. UNIQUE
   -> Duplicate email values are not allowed.

2. NOT NULL
   -> Email field cannot be empty.


If duplicate email is inserted:
--------------------------------
MySQL gives an ERROR because UNIQUE constraint prevents duplicate values.
*/
-- Insert duplicate email to test UNIQUE constraint
INSERT INTO customers
VALUES (
104,
'Rahul',
'Kumar',
'aarav.s@email.com',
'Mumbai',
'Maharashtra',
'2024-05-20',
TRUE
);
-- OUTPUT = ERROR 

-- Q6: Insert a product with negative price
INSERT INTO products
VALUES (
301,
'Test Product',
'Electronics',
'Test Brand',
-50,
10
);
-- OUPUT = ERROR

/* =====================================
   SECTION B : FILTERING & OPTIMIZATION
===================================== */

   
   -- Create orders table

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    status VARCHAR(20),
    total_amount DECIMAL(10,2)
);
/* =====================================
   Insert sample data into orders table
===================================== */

INSERT INTO orders VALUES
(1001, 101, '2024-08-01', 'Delivered', 4498.00),
(1002, 102, '2024-08-03', 'Pending', 799.00),
(1003, 103, '2024-08-05', 'Delivered', 7498.00),
(1004, 101, '2024-08-10', 'Cancelled', 3499.00),
(1005, 102, '2024-08-12', 'Delivered', 1599.00);

/* Q7 : Retrieve all orders with status = 'Delivered' */

SELECT *
FROM orders
WHERE status = 'Delivered';

-- Q8 : Find all products in the 'Electronics' category with unit_price greater than 2000

select * from products where category = 'Electronics' and unit_price > 2000;

/*
 Q9 : List all customers who joined
        in the year 2024 and belong
        to the state 'Maharashtra' */
	
select * from customers where year(join_date) = 2024 and state = 'Maharashtra';

 /* Q10 : Find all orders placed between
         '2024-08-10' and '2024-08-25'
         that are NOT cancelled */
         

select * from orders where order_date between   '2024-08-10' and '2024-08-25' and status != 'cancelled' ;

/* 
   Q11 : Explain what the index
         idx_orders_date does.
         Write a sample query that
         benefits from this index
 */
 /* Create index on order_date */

CREATE INDEX idx_orders_date
ON orders(order_date);

/* 
   Q12 : Would index be used in
         YEAR(join_date) = 2024 ?
         Rewrite query to make it
         index-friendly (SARGable)
*/
SELECT *
FROM customers
WHERE YEAR(join_date) = 2024;

/* 
*/
/* =====================================
   SECTION C : AGGREGATION
===================================== */
-- Q13 : Count total number of orders
SELECT COUNT(*) AS total_orders
FROM orders;

/* 
   Q14 : Find the total revenue
         from all Delivered orders
*/
SELECT SUM(total_amount) AS total_revenue
FROM orders
WHERE status = 'Delivered';

/* 
   Q15 : Calculate the average
         unit_price of products
         in each category
*/

SELECT category,
       AVG(unit_price) AS Avg_price
FROM products
GROUP BY category;

/* Q16 : For each order status,
         find total number of orders
         and total revenue.
         Sort by revenue in descending order  */
         
select status , count(*) As total_number ,sum(total_amount) as total_revenue
   from orders group by status order by total_revenue Desc;

/* Q17 : Find the most expensive (MAX)
         and cheapest (MIN) product
         in each category
 */
 
 select category,MAX(unit_price) AS highest_price,
       MIN(unit_price) AS lowest_price
FROM products
GROUP BY category;

/*   Q18 : List all product categories
         where average unit_price
         is greater than 2000
*/
   select category , avg(unit_price) As avg_price from products group by category having avg(unit_price) > 2000;


/* =====================================
   SECTION  : JOINS
===================================== */

/* Q19 : Q19 : Write an INNER JOIN query to display
         each order along with the customer's
         first_name and last_name.

         Show:
         order_id,
         order_date,
         first_name,
         last_name,
         total_amount
*/

SELECT orders.order_id,
       orders.order_date,
       customers.first_name,
       customers.last_name,
       orders.total_amount
FROM orders
INNER JOIN customers
ON orders.customer_id = customers.customer_id;

 /*Q20 : Using a LEFT JOIN,
         list ALL customers and their
         orders (if any).

         Customers with no orders
         should still appear with
         NULL values for order columns. */
         
SELECT customers.customer_id,
       customers.first_name,
       customers.last_name,
       customers.email,
       orders.order_id,
       orders.total_amount
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;
    
    /* 
   Q21 : Write a query using JOINs
         across three tables
         (orders → order_items → products)

         Show:
         order_id,
         product_name,
         quantity,
         unit_price,
         discount_pct
         for each order item
 */
-- first we have to create order item tabel 
CREATE TABLE order_items (
    item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10,2),
    discount_pct DECIMAL(5,2)
);
INSERT INTO order_items VALUES
(5001,1001,201,2,79999,10),
(5002,1002,202,1,45999,5),
(5003,1003,203,1,3999,0),
(5004,1005,204,3,999,15);

select orders.order_id,
        products.product_name,
       order_items.quantity,
       order_items.unit_price,
       order_items.discount_pct
       from orders 
       inner join order_items
       on orders.order_id = order_items.order_id
       inner join products
       on  order_items.product_id = products.product_id;

/* 
   Q22 : Explain the difference between
         LEFT JOIN and RIGHT JOIN
         with an example from this schema.

         When would you use a
         FULL OUTER JOIN?
*/
-- left join - it shows completly of the customer tabel 
SELECT customers.customer_id,
       customers.first_name,
       orders.order_id
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id;

-- right join = it shows completly right tabel 
SELECT customers.customer_id,
       customers.first_name,
       orders.order_id
FROM customers
RIGHT JOIN orders
ON customers.customer_id = orders.customer_id;

/*
      LEFT JOIN	                  RIGHT JOIN
Left table ka saara data	Right table ka saara data
Missing right rows = NULL	Missing left rows = NULL
*/
/*
LEFT JOIN:
Returns all rows from the left table
and matching rows from the right table.

RIGHT JOIN:
Returns all rows from the right table
and matching rows from the left table.

FULL OUTER JOIN:
Returns all rows from both tables,
whether matched or unmatched.

Use FULL OUTER JOIN when you want to
identify both matched and unmatched
records from both tables.
*/
/* Q23 : Identify all Foreign Key
         relationships in the schema.

         Explain what would happen if
         you tried to insert an order
         with customer_id = 999
         (which doesn't exist in customers) */
/*
1st part --
Foreign Key Relationships:

1. orders.customer_id
   → customers.customer_id

2. order_items.order_id
   → orders.order_id

3. order_items.product_id
   → products.product_id
 2nd part -- 
 Foreign Keys maintain referential integrity
and ensure that relationships between tables
remain valid and consistent.
*/

/* =====================================
   SECTION E : ADVANCED CONCEPTS
===================================== */
/* 
   Q24 : Write a query using CASE
         to classify products into
         Budget, Mid-Range and Premium
 */

SELECT product_name,
       unit_price,
       CASE
           WHEN unit_price < 1000 THEN 'Budget'
           WHEN unit_price BETWEEN 1000 AND 3000 THEN 'Mid-Range'
           ELSE 'Premium'
       END AS price_tier
FROM products;

/*Q25 : Count how many orders are
         Delivered vs Not Delivered
         using CASE statement
         */
         SELECT
    SUM(
        CASE
            WHEN status = 'Delivered'
            THEN 1
            ELSE 0
        END
    ) AS Delivered_Orders,

    SUM(
        CASE
            WHEN status <> 'Delivered'
            THEN 1
            ELSE 0
        END
    ) AS Not_Delivered_Orders
FROM orders;

/*
Delivered Orders:
Counts all orders having status = 'Delivered'

Not Delivered Orders:
Counts all orders having status other than 'Delivered'
*/
/* =====================================
   Q26 : Explain ACID Properties
===================================== */

/*

A - Atomicity
-------------
A transaction should either complete fully
or fail completely.

Example:
In a bank transfer, money should be deducted
from one account and added to another account.
If one step fails, the whole transaction
should be rolled back.


C - Consistency
---------------
A transaction should keep the database
in a valid state before and after execution.

Example:
Total money in the banking system should
remain consistent after transfer.


I - Isolation
-------------
Multiple transactions should not interfere
with each other.

Example:
Two users transferring money at the same
time should not affect each other's results.


D - Durability
--------------
Once a transaction is committed,
the changes should be permanently saved.

Example:
After successful money transfer,
the transaction should remain saved even
if the system crashes.

*/
/* 
   Q27 : Transaction Example
*/

START TRANSACTION;

-- Step 1 : Insert new order

INSERT INTO orders
VALUES (
1011,
102,
CURDATE(),
'Pending',
1598.00
);

-- Step 2 : Insert order items

INSERT INTO order_items
VALUES (
5005,
1011,
201,
1,
799.00,
0
);

INSERT INTO order_items
VALUES (
5006,
1011,
204,
1,
799.00,
0
);

-- Step 3 : Update stock quantity

UPDATE products
SET stock_qty = stock_qty - 1
WHERE product_id = 201;

UPDATE products
SET stock_qty = stock_qty - 1
WHERE product_id = 204;

COMMIT;

         
