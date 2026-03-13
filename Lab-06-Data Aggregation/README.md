# Lab 06 – Data Aggregation Using GROUP BY and HAVING

## Objective
To understand how to summarize and analyze data using SQL aggregate functions, and to
apply GROUP BY and HAVING clauses to generate grouped reports from database tables
without modifying the stored data.

---

## Files Included

- **Lab_06_Solution.sql** – Contains all SQL queries for aggregation tasks
- **DB-Lab-6.pdf** – Original lab questions provided by faculty
- **README.md** – Description and usage instructions for this lab

---

## Database & Tool
- Oracle Database
- Oracle SQL Developer / SQL*Plus

---

## Database Tables Used
This lab is based on the schema created in:
- Lab 02 – ER Model to Relational Schema
- Lab 03 – Data Insertion

The following tables were used:
- Department
- Student
- Faculty
- Course
- Enrollment

---

## Lab Work Breakdown

### Part A – Basic Aggregate Queries
Used `COUNT()`, `MAX()`, and `MIN()` on single tables to get summary statistics.

### Part B – GROUP BY on Single Tables
Applied `GROUP BY` on `Student`, `Faculty`, `Course`, and `Enrollment` tables
to count records grouped by `DepartmentID`, `Semester`, and `Grade`.

### Part C – GROUP BY with HAVING
Used `HAVING` clause to filter grouped results based on aggregate conditions,
such as departments with more than 3 students.

### Part D – Aggregation with JOIN
Combined `INNER JOIN` with `GROUP BY` to retrieve meaningful grouped data
from multiple related tables.

### Part E – Analytical Queries
Performed advanced analytical queries involving `MAX()`, `COUNT()`, and
filtered grouping with `HAVING` across joined tables.

---

## SQL Concepts Practiced
- Aggregate Functions: `COUNT()`, `MAX()`, `MIN()`, `SUM()`, `AVG()`
- `GROUP BY` Clause (single and multiple columns)
- `HAVING` Clause (filter after grouping)
- `GROUP BY` with `INNER JOIN`
- `ORDER BY` with aggregated results
- Primary Key – Foreign Key relationships in aggregation

---

## Key Learning Outcomes
- Understood how aggregate functions summarize data
- Learned the difference between `WHERE` (filters rows) and `HAVING` (filters groups)
- Practiced multi-table aggregation using JOIN + GROUP BY
- Generated department-wise, course-wise, and semester-wise analytical reports

---

## How to Use
1. Ensure Lab 02 schema and Lab 03 data are already loaded in Oracle SQL Developer.
2. Open `Lab_06_Solution.sql` in a new SQL Worksheet.
3. Execute the script using **F5** or run queries individually using **F9**.

---

## Notes
- All queries are **read-only** — no table structure or data is modified.
- `HAVING` is used instead of `WHERE` for filtering aggregate results.
- `ORDER BY` is added to queries for cleaner, structured output.

---

Submitted as part of DBMS Laboratory Work.
B.P. Mandal College of Engineering, Madhepura, Bihar
