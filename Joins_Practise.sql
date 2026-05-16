-- CREATE DATABASE Joins;
-- USE Joins;


-- =========================================
-- DATABASE : ECOMMERCE SYSTEM
-- =========================================

DROP TABLE IF EXISTS reviews;
DROP TABLE IF EXISTS payments;
DROP TABLE IF EXISTS shipments;
DROP TABLE IF EXISTS order_items;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS products;
DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS customers;

-- =========================================
-- CUSTOMERS
-- =========================================

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
);

INSERT INTO customers VALUES
(1,'Anirudh','Chittoor'),
(2,'Rahul','Bangalore'),
(3,'Sneha','Hyderabad'),
(4,'Kiran','Chennai'),
(5,'Pooja','Mumbai'),
(6,'Arjun','Delhi'),
(7,'Meena','Pune'),
(8,'Vikram','Kolkata'),
(9,'Divya','Jaipur'),
(10,'Ravi','Ahmedabad');

-- =========================================
-- EMPLOYEES
-- =========================================

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    manager_id INT
);

INSERT INTO employees VALUES
(1,'Raj',NULL),
(2,'Kumar',1),
(3,'Priya',1),
(4,'Amit',2),
(5,'John',2),
(6,'Sara',3);

-- =========================================
-- CATEGORIES
-- =========================================

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

INSERT INTO categories VALUES
(1,'Electronics'),
(2,'Accessories'),
(3,'Home Appliances');

-- =========================================
-- PRODUCTS
-- =========================================

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(50),
    category_id INT,
    price INT
);

INSERT INTO products VALUES
(101,'Laptop',1,60000),
(102,'Phone',1,30000),
(103,'Tablet',1,20000),
(104,'Headphones',2,2000),
(105,'Keyboard',2,1500),
(106,'Mouse',2,1000),
(107,'Microwave',3,12000),
(108,'Washing Machine',3,25000);

-- =========================================
-- ORDERS
-- =========================================

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    employee_id INT,
    order_date DATE
);

INSERT INTO orders VALUES
(1001,1,2,'2024-01-01'),
(1002,2,3,'2024-01-02'),
(1003,3,2,'2024-01-03'),
(1004,4,4,'2024-01-04'),
(1005,5,5,'2024-01-05'),
(1006,1,3,'2024-01-06'),
(1007,8,2,'2024-01-07'),
(1008,10,6,'2024-01-08'),
(1009,15,2,'2024-01-09'); -- invalid customer

-- =========================================
-- ORDER ITEMS
-- =========================================

CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT
);

INSERT INTO order_items VALUES
(1001,101,1),
(1001,104,2),
(1002,102,1),
(1003,103,3),
(1004,101,1),
(1005,105,2),
(1006,106,1),
(1007,107,1),
(1008,108,1),
(1015,102,1); -- invalid order

-- =========================================
-- PAYMENTS
-- =========================================

CREATE TABLE payments (
    payment_id INT PRIMARY KEY,
    order_id INT,
    payment_mode VARCHAR(30),
    amount INT
);

INSERT INTO payments VALUES
(1,1001,'UPI',64000),
(2,1002,'CARD',30000),
(3,1003,'CASH',60000),
(4,1004,'UPI',60000),
(5,1005,'CARD',3000),
(6,1006,'UPI',1000),
(7,1015,'CASH',5000); -- invalid order

-- =========================================
-- SHIPMENTS
-- =========================================

CREATE TABLE shipments (
    shipment_id INT PRIMARY KEY,
    order_id INT,
    shipment_status VARCHAR(30)
);

INSERT INTO shipments VALUES
(1,1001,'Delivered'),
(2,1002,'Pending'),
(3,1003,'Shipped'),
(4,1004,'Cancelled'),
(5,1008,'Delivered'),
(6,1020,'Pending'); -- invalid order

-- =========================================
-- REVIEWS
-- =========================================

CREATE TABLE reviews (
    review_id INT PRIMARY KEY,
    customer_id INT,
    product_id INT,
    rating INT
);

INSERT INTO reviews VALUES
(1,1,101,5),
(2,2,102,4),
(3,3,103,5),
(4,4,104,3),
(5,5,101,4),
(6,6,108,5);



-- =====================================================
-- ANSWERS FOR 50 JOIN PRACTICE QUESTIONS
-- =====================================================

-- 1. Show customer names with order IDs

SELECT
    c.customer_name,
    o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

--------------------------------------------------------

-- 2. Show products ordered in each order

SELECT
    oi.order_id,
    p.product_name
FROM order_items oi
INNER JOIN products p
ON oi.product_id = p.product_id;

--------------------------------------------------------

-- 3. Show customer names and order dates

SELECT
    c.customer_name,
    o.order_date
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

--------------------------------------------------------

-- 4. Show product names with quantities ordered

SELECT
    p.product_name,
    oi.quantity
FROM products p
INNER JOIN order_items oi
ON p.product_id = oi.product_id;

--------------------------------------------------------

-- 5. Show payment mode used by each customer

SELECT
    c.customer_name,
    pay.payment_mode
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN payments pay
ON o.order_id = pay.order_id;

--------------------------------------------------------

-- 6. Show all customers and their orders

SELECT
    c.customer_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

--------------------------------------------------------

-- 7. Show all orders even if customer is missing

SELECT
    o.order_id,
    c.customer_name
FROM orders o
LEFT JOIN customers c
ON o.customer_id = c.customer_id;

--------------------------------------------------------

-- 8. Show all products even if never ordered

SELECT
    p.product_name,
    oi.order_id
FROM products p
LEFT JOIN order_items oi
ON p.product_id = oi.product_id;

--------------------------------------------------------

-- 9. Show all orders with shipment status

SELECT
    o.order_id,
    s.shipment_status
FROM orders o
LEFT JOIN shipments s
ON o.order_id = s.order_id;

--------------------------------------------------------

-- 10. Show customers even if they never placed orders

SELECT
    c.customer_name,
    o.order_id
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

--------------------------------------------------------

-- 11. Show all customers with matching orders

SELECT
    c.customer_name,
    o.order_id
FROM orders o
RIGHT JOIN customers c
ON o.customer_id = c.customer_id;

--------------------------------------------------------

-- 12. Show all products with matching order items

SELECT
    p.product_name,
    oi.quantity
FROM order_items oi
RIGHT JOIN products p
ON oi.product_id = p.product_id;

--------------------------------------------------------

-- 13. Show all orders with matching payments

SELECT
    o.order_id,
    pay.amount
FROM payments pay
RIGHT JOIN orders o
ON pay.order_id = o.order_id;

--------------------------------------------------------

-- 14. Show all orders with matching shipments

SELECT
    o.order_id,
    s.shipment_status
FROM shipments s
RIGHT JOIN orders o
ON s.order_id = o.order_id;

--------------------------------------------------------

-- 15. Show all categories with products

SELECT
    c.category_name,
    p.product_name
FROM products p
RIGHT JOIN categories c
ON p.category_id = c.category_id;

--------------------------------------------------------

-- 16. Show customer, product, quantity

SELECT
    c.customer_name,
    p.product_name,
    oi.quantity
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN order_items oi
ON o.order_id = oi.order_id
INNER JOIN products p
ON oi.product_id = p.product_id;

--------------------------------------------------------

-- 17. Show customer, product, payment amount

SELECT
    c.customer_name,
    p.product_name,
    pay.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN order_items oi
ON o.order_id = oi.order_id
INNER JOIN products p
ON oi.product_id = p.product_id
INNER JOIN payments pay
ON o.order_id = pay.order_id;

--------------------------------------------------------

-- 18. Show customer, employee handling order

SELECT
    c.customer_name,
    e.employee_name
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN employees e
ON o.employee_id = e.employee_id;

--------------------------------------------------------

-- 19. Show order, shipment, payment details

SELECT
    o.order_id,
    s.shipment_status,
    pay.amount,
    pay.payment_mode
FROM orders o
INNER JOIN shipments s
ON o.order_id = s.order_id
INNER JOIN payments pay
ON o.order_id = pay.order_id;

--------------------------------------------------------

-- 20. Show customer complete order history

SELECT
    c.customer_name,
    o.order_id,
    o.order_date
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

--------------------------------------------------------

-- 21. Show employees with their managers

SELECT
    e.employee_name AS Employee,
    m.employee_name AS Manager
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.employee_id;

--------------------------------------------------------

-- 22. Show employees under same manager

SELECT
    e1.employee_name,
    e2.employee_name,
    e1.manager_id
FROM employees e1
INNER JOIN employees e2
ON e1.manager_id = e2.manager_id
AND e1.employee_id <> e2.employee_id;

--------------------------------------------------------

-- 23. Show customers from same city

SELECT
    c1.customer_name,
    c2.customer_name,
    c1.city
FROM customers c1
INNER JOIN customers c2
ON c1.city = c2.city
AND c1.customer_id <> c2.customer_id;

--------------------------------------------------------

-- 24. Show products with same price

SELECT
    p1.product_name,
    p2.product_name,
    p1.price
FROM products p1
INNER JOIN products p2
ON p1.price = p2.price
AND p1.product_id <> p2.product_id;

--------------------------------------------------------

-- 25. Show employees reporting hierarchy

SELECT
    e.employee_name,
    m.employee_name AS Reports_To
FROM employees e
LEFT JOIN employees m
ON e.manager_id = m.employee_id;

--------------------------------------------------------

-- 26. Generate all customer-product combinations

SELECT
    c.customer_name,
    p.product_name
FROM customers c
CROSS JOIN products p;

--------------------------------------------------------

-- 27. Generate all employee-category combinations

SELECT
    e.employee_name,
    c.category_name
FROM employees e
CROSS JOIN categories c;

--------------------------------------------------------

-- 28. Generate all products with payment modes

SELECT
    p.product_name,
    pay.payment_mode
FROM products p
CROSS JOIN payments pay;

--------------------------------------------------------

-- 29. Generate all cities with categories

SELECT
    DISTINCT c.city,
    cat.category_name
FROM customers c
CROSS JOIN categories cat;

--------------------------------------------------------

-- 30. Generate all customers with employees

SELECT
    c.customer_name,
    e.employee_name
FROM customers c
CROSS JOIN employees e;

--------------------------------------------------------

-- 31. Count orders per customer

SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name;

--------------------------------------------------------

-- 32. Find total sales per product

SELECT
    p.product_name,
    SUM(oi.quantity * p.price) AS total_sales
FROM products p
INNER JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.product_name;

--------------------------------------------------------

-- 33. Find average payment amount by payment mode

SELECT
    payment_mode,
    AVG(amount) AS average_amount
FROM payments
GROUP BY payment_mode;

--------------------------------------------------------

-- 34. Count products per category

SELECT
    c.category_name,
    COUNT(p.product_id) AS total_products
FROM categories c
INNER JOIN products p
ON c.category_id = p.category_id
GROUP BY c.category_name;

--------------------------------------------------------

-- 35. Find total quantity sold per product

SELECT
    p.product_name,
    SUM(oi.quantity) AS total_quantity
FROM products p
INNER JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.product_name;

--------------------------------------------------------

-- 36. Find customers who bought Laptop

SELECT
    c.customer_name
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN order_items oi
ON o.order_id = oi.order_id
INNER JOIN products p
ON oi.product_id = p.product_id
WHERE p.product_name = 'Laptop';

--------------------------------------------------------

-- 37. Find orders above 50000

SELECT
    o.order_id,
    pay.amount
FROM orders o
INNER JOIN payments pay
ON o.order_id = pay.order_id
WHERE pay.amount > 50000;

--------------------------------------------------------

-- 38. Find delivered orders only

SELECT
    o.order_id,
    s.shipment_status
FROM orders o
INNER JOIN shipments s
ON o.order_id = s.order_id
WHERE s.shipment_status = 'Delivered';

--------------------------------------------------------

-- 39. Find products in Electronics category

SELECT
    p.product_name,
    c.category_name
FROM products p
INNER JOIN categories c
ON p.category_id = c.category_id
WHERE c.category_name = 'Electronics';

--------------------------------------------------------

-- 40. Find customers from Bangalore with orders

SELECT
    c.customer_name,
    o.order_id
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
WHERE c.city = 'Bangalore';

--------------------------------------------------------

-- 41. Customers with more than 1 order

SELECT
    c.customer_name,
    COUNT(o.order_id) AS total_orders
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.customer_name
HAVING COUNT(o.order_id) > 1;

--------------------------------------------------------

-- 42. Products sold more than 2 quantities

SELECT
    p.product_name,
    SUM(oi.quantity) AS total_quantity
FROM products p
INNER JOIN order_items oi
ON p.product_id = oi.product_id
GROUP BY p.product_name
HAVING SUM(oi.quantity) > 2;

--------------------------------------------------------

-- 43. Employees handling more than 2 orders

SELECT
    e.employee_name,
    COUNT(o.order_id) AS total_orders
FROM employees e
INNER JOIN orders o
ON e.employee_id = o.employee_id
GROUP BY e.employee_name
HAVING COUNT(o.order_id) > 2;

--------------------------------------------------------

-- 44. Categories having more than 2 products

SELECT
    c.category_name,
    COUNT(p.product_id) AS total_products
FROM categories c
INNER JOIN products p
ON c.category_id = p.category_id
GROUP BY c.category_name
HAVING COUNT(p.product_id) > 2;

--------------------------------------------------------

-- 45. Customers spending above 50000

SELECT
    c.customer_name,
    SUM(pay.amount) AS total_spent
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id
INNER JOIN payments pay
ON o.order_id = pay.order_id
GROUP BY c.customer_name
HAVING SUM(pay.amount) > 50000;

--------------------------------------------------------

-- 46. Find orders without payments

SELECT
    o.order_id
FROM orders o
LEFT JOIN payments p
ON o.order_id = p.order_id
WHERE p.order_id IS NULL;

--------------------------------------------------------

-- 47. Find orders without shipments

SELECT
    o.order_id
FROM orders o
LEFT JOIN shipments s
ON o.order_id = s.order_id
WHERE s.order_id IS NULL;

--------------------------------------------------------

-- 48. Find products never ordered

SELECT
    p.product_name
FROM products p
LEFT JOIN order_items oi
ON p.product_id = oi.product_id
WHERE oi.product_id IS NULL;

--------------------------------------------------------

-- 49. Find invalid order_items records

SELECT
    oi.order_id,
    oi.product_id
FROM order_items oi
LEFT JOIN orders o
ON oi.order_id = o.order_id
WHERE o.order_id IS NULL;

--------------------------------------------------------

-- 50. Find invalid payments records

SELECT
    p.payment_id,
    p.order_id
FROM payments p
LEFT JOIN orders o
ON p.order_id = o.order_id
WHERE o.order_id IS NULL;