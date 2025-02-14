-- Create Bank Account Table
CREATE TABLE BankAccount (
    AccountID INT PRIMARY KEY,
    Name VARCHAR(50),
    Balance DECIMAL(15,2),
    AccountType VARCHAR(20)
);

-- Insert Data
INSERT INTO BankAccount (AccountID, Name, Balance, AccountType) VALUES
(401, 'Alice', 50000, 'Savings'),
(402, 'Bob', 70000, 'Current'),
(403, 'Charlie', 30000, 'Savings');

-- Fetch Accounts with balance above 50,000
SELECT * 
FROM BankAccount 
WHERE Balance > 50000;

-- Add interest of 5% to savings accounts
UPDATE BankAccount 
SET Balance = Balance * 1.05 
WHERE AccountType = 'Savings';

-- Delete accounts with balance below 10000
DELETE FROM BankAccount 
WHERE Balance < 10000;
