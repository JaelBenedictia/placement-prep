-- Create Employees Table
CREATE TABLE Employees (
emp_id INT,
name VARCHAR(30),
dept_id INT
);

-- Insert Data
INSERT INTO Employees VALUES
(1,'Jael',101),
(2,'Ravi',102),
(3,'Meena',101),
(4,'John',103);

-- Create Department Table
CREATE TABLE Departments (
dept_id INT,
dept_name VARCHAR(30)
);

-- Insert Data
INSERT INTO Departments VALUES
(101,'IT'),
(102,'HR'),
(104,'Finance');

-- 1 INNER JOIN
SELECT Employees.name, Departments.dept_name
FROM Employees
INNER JOIN Departments
ON Employees.dept_id = Departments.dept_id;

-- 2 LEFT JOIN
SELECT Employees.name, Departments.dept_name
FROM Employees
LEFT JOIN Departments
ON Employees.dept_id = Departments.dept_id;

-- 3 RIGHT JOIN
SELECT Employees.name, Departments.dept_name
FROM Employees
RIGHT JOIN Departments
ON Employees.dept_id = Departments.dept_id;

-- 4 Employee names only from IT
SELECT Employees.name
FROM Employees
INNER JOIN Departments
ON Employees.dept_id = Departments.dept_id
WHERE Departments.dept_name = 'IT';

-- 5 Count employees by department
SELECT Departments.dept_name, COUNT(Employees.emp_id)
FROM Employees
LEFT JOIN Departments
ON Employees.dept_id = Departments.dept_id
GROUP BY Departments.dept_name;

-- 6 Show all employees ordered by name
SELECT Employees.name, Departments.dept_name
FROM Employees
LEFT JOIN Departments
ON Employees.dept_id = Departments.dept_id
ORDER BY Employees.name;

-- 7 Employees without matching department
SELECT Employees.name
FROM Employees
LEFT JOIN Departments
ON Employees.dept_id = Departments.dept_id
WHERE Departments.dept_name IS NULL;

-- 8 All departments with or without employees
SELECT Departments.dept_name, Employees.name
FROM Employees
RIGHT JOIN Departments
ON Employees.dept_id = Departments.dept_id;
