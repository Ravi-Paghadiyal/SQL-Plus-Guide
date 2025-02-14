-- Create Student Table
CREATE TABLE Student (
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT,
    Course VARCHAR(50),
    Marks INT
);

-- Insert Data
INSERT INTO Student (StudentID, Name, Age, Course, Marks) VALUES
(201, 'John', 22, 'BCA', 85),
(202, 'Emma', 21, 'MCA', 90),
(203, 'David', 23, 'B.Tech', 88);

-- Fetch Students with marks above 85
SELECT * 
FROM Student 
WHERE Marks > 85;

-- Increase marks of all students by 5
UPDATE Student 
SET Marks = Marks + 5;

-- Remove students with marks below 60
DELETE FROM Student 
WHERE Marks < 60;
