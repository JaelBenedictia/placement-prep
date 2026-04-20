-- 1. Inner Join: customer name with order amount
SELECT c.name, o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;

-- 2. Left Join: all customers even if no orders
SELECT c.name, o.amount
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;

-- 3. Right Join: all orders with customer names
SELECT c.name, o.amount
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

-- 4. Customers with multiple orders
SELECT c.name, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING COUNT(o.order_id) > 1;

-- 5. Total purchase by each customer
SELECT c.name, SUM(o.amount) AS total_amount
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id
GROUP BY c.name;
-- 1. Highest order amount
SELECT *
FROM orders
WHERE amount = (SELECT MAX(amount) FROM orders);

-- 2. Second highest order amount
SELECT MAX(amount)
FROM orders
WHERE amount < (SELECT MAX(amount) FROM orders);

-- 3. Customers who placed orders above average
SELECT customer_id, amount
FROM orders
WHERE amount > (SELECT AVG(amount) FROM orders);