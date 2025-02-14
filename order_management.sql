-- Create Order Table
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(50),
    ProductName VARCHAR(50),
    Quantity INT,
    TotalAmount DECIMAL(10,2)
);

-- Insert Data
INSERT INTO Orders (OrderID, CustomerName, ProductName, Quantity, TotalAmount) VALUES
(301, 'Alice', 'Laptop', 1, 75000),
(302, 'Bob', 'Phone', 2, 100000),
(303, 'Charlie', 'Chair', 4, 20000);

-- Fetch Orders above 50000
SELECT * 
FROM Orders 
WHERE TotalAmount > 50000;

-- Update Quantity for a specific order
UPDATE Orders 
SET Quantity = 3 
WHERE OrderID = 302;

-- Delete orders where quantity is 1
DELETE FROM Orders 
WHERE Quantity = 1;
