-- Create Product Table
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Name VARCHAR(100),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT
);

-- Insert Data
INSERT INTO Product (ProductID, Name, Category, Price, Stock) VALUES
(101, 'Laptop', 'Electronics', 75000, 10),
(102, 'Phone', 'Electronics', 50000, 15),
(103, 'Chair', 'Furniture', 5000, 20);

-- Fetch Products in Electronics Category
SELECT * 
FROM Product 
WHERE Category = 'Electronics';

-- Update Stock after selling 2 phones
UPDATE Product 
SET Stock = Stock - 2 
WHERE ProductID = 102;

-- Delete products with stock less than 5
DELETE FROM Product 
WHERE Stock < 5;
