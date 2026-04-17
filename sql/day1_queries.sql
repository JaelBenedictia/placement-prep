-- View all records
SELECT * FROM Customers;

-- WHERE condition
SELECT * FROM Customers WHERE Country = 'Germany';

-- ORDER BY name
SELECT * FROM Customers ORDER BY CustomerName;

-- Count rows
SELECT COUNT(*) FROM Customers;

-- Group by country
SELECT Country, COUNT(*) 
FROM Customers
GROUP BY Country;

-- Customers from London
SELECT * FROM Customers WHERE City = 'London';

-- Sort by country descending
SELECT * FROM Customers ORDER BY Country DESC;

-- Count customers by city
SELECT City, COUNT(*)
FROM Customers
GROUP BY City;

-- Customers whose name starts with A
SELECT * FROM Customers WHERE CustomerName LIKE 'A%';

-- Distinct countries
SELECT DISTINCT Country FROM Customers;