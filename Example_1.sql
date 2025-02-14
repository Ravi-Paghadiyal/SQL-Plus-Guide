-- Create Employee Table
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Department VARCHAR(50),
    Salary DECIMAL(10,2)
);

-- Insert Data
INSERT INTO Employee (EmpID, Name, Age, Department, Salary) VALUES
(1, 'Alice', 30, 'HR', 50000),
(2, 'Bob', 25, 'IT', 60000),
(3, 'Charlie', 35, 'Finance', 55000);

-- Fetch Employees earning above 55000
SELECT * 
FROM Employee 
WHERE Salary > 55000;

-- Increase Salary of IT department by 10%
UPDATE Employee 
SET Salary = Salary * 1.10 
WHERE Department = 'IT';

-- Delete employees below 30 years
DELETE FROM Employee 
WHERE Age < 30;
