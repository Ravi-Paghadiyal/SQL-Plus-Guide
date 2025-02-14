-- DATABASE CREATION (If required, run separately in some SQL environments)
CREATE DATABASE CompanyDB;
USE CompanyDB;

-- 1. TABLE CREATION
CREATE TABLE Employees (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

CREATE TABLE Departments (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50),
    Location VARCHAR(50)
);

-- 2. INSERT DATA
INSERT INTO Employees (EmpID, Name, Age, Department, Salary) VALUES
(1, 'Alice', 30, 'HR', 50000),
(2, 'Bob', 25, 'IT', 60000),
(3, 'Charlie', 35, 'Finance', 55000),
(4, 'David', 28, 'IT', 62000);

INSERT INTO Departments (DeptID, DeptName, Location) VALUES
(1, 'HR', 'New York'),
(2, 'IT', 'San Francisco'),
(3, 'Finance', 'Chicago');

-- 3. SELECT STATEMENTS
SELECT * 
FROM Employees;  -- Fetch all employees

SELECT Name, Salary 
FROM Employees 
WHERE Salary > 55000;  -- Employees earning above 55K

-- 4. UPDATE DATA
UPDATE Employees 
SET Salary = Salary * 1.10 
WHERE Department = 'IT';  -- Increase IT salaries by 10%

-- 5. DELETE DATA
DELETE FROM Employees 
WHERE Age < 26;  -- Remove employees younger than 26

-- 6. AGGREGATE FUNCTIONS
SELECT COUNT(*) AS TotalEmployees 
FROM Employees;  -- Total employees

SELECT AVG(Salary) AS AverageSalary 
FROM Employees;  -- Average salary

SELECT MAX(Salary) AS HighestSalary 
FROM Employees;  -- Highest salary

-- 7. JOIN OPERATIONS
SELECT E.Name, E.Department, D.Location 
FROM Employees E
JOIN Departments D ON E.Department = D.DeptName;  -- Inner Join Example

-- 8. GROUP BY & HAVING
SELECT Department, COUNT(*) AS EmployeeCount
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 1;  -- Departments with more than 1 employee

-- 9. SUBQUERY EXAMPLE
SELECT Name FROM Employees 
WHERE Salary > (SELECT AVG(Salary) FROM Employees);  -- Employees earning above average

-- 10. ORDER BY
SELECT * 
FROM Employees 
ORDER BY Salary DESC;  -- Employees sorted by salary in descending order

-- 11. VIEW CREATION
CREATE VIEW HighSalaryEmployees AS
SELECT Name, Salary 
FROM Employees 
WHERE Salary > 55000;

-- 13. ALTER TABLE
ALTER TABLE Employees ADD COLUMN Email VARCHAR(100);  -- Adding a new column
