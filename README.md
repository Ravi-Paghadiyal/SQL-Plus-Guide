
# SQL Guide

## 1. Introduction to SQL
### What is SQL?
SQL (**Structured Query Language**) is a programming language used to manage and manipulate relational databases. It is essential for storing, retrieving, updating, and deleting data.

### Types of SQL Commands
1. **DDL (Data Definition Language)** – Defines the database structure.
   - Commands: `CREATE`, `ALTER`, `DROP`, `TRUNCATE`
2. **DML (Data Manipulation Language)** – Modifies data in tables.
   - Commands: `INSERT`, `UPDATE`, `DELETE`
3. **DCL (Data Control Language)** – Controls user access.
   - Commands: `GRANT`, `REVOKE`
4. **TCL (Transaction Control Language)** – Manages transactions.
   - Commands: `COMMIT`, `ROLLBACK`
5. **DQL (Data Query Language)** – Retrieves data.
   - Command: `SELECT`

---

## 2. Data Definition Commands (DDL)
### SQL Data Types

| Data Type      | Description                     | Example Value |
|---------------|---------------------------------|--------------|
| `INT`         | Whole numbers                  | 10           |
| `VARCHAR(n)`  | Text with variable length      | "John"       |
| `CHAR(n)`     | Fixed-length text              | "A"          |
| `DECIMAL(p,s)`| Decimal numbers                | 10.50        |
| `DATE`        | Stores date                    | "2025-02-13" |

### Creating Table Structure
```sql
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    email VARCHAR(100) UNIQUE
);
```

### SQL Constraints

| Constraint    | Description                              |
|--------------|------------------------------------------|
| `PRIMARY KEY` | Ensures a unique value for each row     |
| `FOREIGN KEY` | Links two tables                        |
| `NOT NULL`    | Ensures column cannot be empty          |
| `CHECK`       | Restricts values                        |
| `DEFAULT`     | Sets a default value                    |

---

## 3. Data Manipulation Commands (DML)
### Adding Table Rows (`INSERT`)
```sql
INSERT INTO students (id, name, age, email)
VALUES (1, 'John Doe', 20, 'john@example.com');
```

### Saving Table Changes (`COMMIT`)
```sql
COMMIT;
```

### Listing Table Rows (`SELECT`)
```sql
SELECT * FROM students;
```

### Updating Table Rows (`UPDATE`)
```sql
UPDATE students
SET age = 21
WHERE id = 1;
```

### Restoring Table Contents (`ROLLBACK`)
```sql
ROLLBACK;
```

### Deleting Table Rows (`DELETE`)
```sql
DELETE FROM students
WHERE id = 1;
```

---

## 4. Select Queries
### Selecting Rows with Conditions
```sql
SELECT * FROM students
WHERE age > 18;
```

### Arithmetic Operators
| Operator | Meaning       | Example            | Result |
|----------|--------------|--------------------|--------|
| `+`      | Addition     | `SELECT 10 + 5;`  | 15     |
| `-`      | Subtraction  | `SELECT 10 - 5;`  | 5      |
| `*`      | Multiplication | `SELECT 10 * 5;`  | 50     |
| `/`      | Division     | `SELECT 10 / 5;`  | 2      |

### Logical Operators
```sql
SELECT * FROM students
WHERE age > 18 AND email LIKE '%@gmail.com';
```

### Special Operators
| Operator  | Meaning |
|-----------|---------|
| `BETWEEN` | Checks if a value is within a range |
| `IN`      | Matches values from a list |
| `LIKE`    | Pattern matching |
| `IS NULL` | Checks if a value is NULL |

Example:
```sql
SELECT * FROM students
WHERE age BETWEEN 18 AND 25;
```

---

## 5. Additional Data Definition Commands (DDL)
### Changing Column Data Type
```sql
ALTER TABLE students
MODIFY age DECIMAL(5,2);
```

### Adding a Column
```sql
ALTER TABLE students
ADD address VARCHAR(255);
```

### Dropping a Column
```sql
ALTER TABLE students
DROP COLUMN address;
```

### Adding Primary and Foreign Keys
```sql
ALTER TABLE students
ADD PRIMARY KEY (id);
```
```sql
ALTER TABLE students
ADD FOREIGN KEY (id) REFERENCES other_table(id);
```

### Deleting a Table
```sql
DROP TABLE students;
```

---

## 6. Additional SELECT Query Keywords
### Ordering Data (`ORDER BY`)
```sql
SELECT * FROM students
ORDER BY age DESC;
```

### Listing Unique Values (`DISTINCT`)
```sql
SELECT DISTINCT age FROM students;
```

### Aggregate Functions
| Function | Description |
|----------|------------|
| `COUNT()` | Counts rows |
| `SUM()` | Adds values |
| `AVG()` | Calculates average |
| `MAX()` | Finds highest value |
| `MIN()` | Finds lowest value |

Example:
```sql
SELECT AVG(age) FROM students;
```

### Grouping Data (`GROUP BY`)
```sql
SELECT age, COUNT(*)
FROM students
GROUP BY age;
```

---

## Final Summary
- **DML**: `INSERT`, `UPDATE`, `DELETE`, `SELECT`
- **DDL**: `CREATE`, `ALTER`, `DROP`
- **DCL**: `GRANT`, `REVOKE`
- **TCL**: `COMMIT`, `ROLLBACK`
- **DQL**: `SELECT`


