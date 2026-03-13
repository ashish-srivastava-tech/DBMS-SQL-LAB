<div align="center">

# 📘 DBMS SQL Lab – Oracle Database

<img src="https://readme-typing-svg.demolab.com?font=Fira+Code&size=22&pause=1000&color=F75C7E&center=true&vCenter=true&width=600&lines=Database+Management+Systems+Lab;Oracle+SQL+Developer+%7C+SQL%2BPlus;B.Tech+CSE+%7C+5th+Semester;B.P.+Mandal+College+of+Engineering" alt="Typing SVG" />

---

![Oracle](https://img.shields.io/badge/Database-Oracle-red?style=for-the-badge&logo=oracle)
![SQL](https://img.shields.io/badge/Language-SQL-blue?style=for-the-badge&logo=databricks)
![Course](https://img.shields.io/badge/B.Tech-CSE-success?style=for-the-badge&logo=academia)
![Semester](https://img.shields.io/badge/Semester-5th-orange?style=for-the-badge)
![Status](https://img.shields.io/badge/Status-Active-brightgreen?style=for-the-badge)
![Labs](https://img.shields.io/badge/Labs%20Completed-06-blueviolet?style=for-the-badge)

---

🏫 **B.P. Mandal College of Engineering, Madhepura, Bihar**

</div>

---

## 📑 Table of Contents

- [👨‍🎓 Student Information](#-student-information)
- [🎯 Repository Overview](#-repository-overview)
- [🗂 Repository Structure](#-repository-structure)
- [🧩 Labs Summary](#-labs-summary)
- [🔬 Labs in Detail](#-labs-in-detail)
- [🛠 Tools & Technologies](#-tools--technologies)
- [🧠 Key Concepts Practiced](#-key-concepts-practiced)
- [📐 Database Schema](#-database-schema)
- [⚠ Important Note](#-important-note)
- [🚀 Future Work](#-future-work)

---

## 👨‍🎓 Student Information

| Field | Details |
|:------|:---------|
| **Name** | Ashish Srivastava |
| **Program** | B.Tech – Computer Science & Engineering |
| **Institution** | B.P. Mandal College of Engineering, Madhepura |
| **Semester** | 5th |
| **Subject** | Database Management Systems Lab |
| **Tool Used** | Oracle SQL Developer / SQL\*Plus |
| **Purpose** | Academic Laboratory Submission |

---

## 🎯 Repository Overview

This repository contains structured **Database Management Systems (DBMS)** laboratory work performed using **Oracle Database** at B.P. Mandal College of Engineering, Madhepura, Bihar.

All SQL programs are:

- ✅ Written in standard **Oracle-compatible SQL**
- ✅ Executed using **Oracle SQL Developer / SQL\*Plus**
- ✅ Structured **lab-wise** for clarity and maintainability
- ✅ Based on a **real college database** with authentic faculty and course data
- ✅ Designed following proper **relational database principles**

---

## 🗂 Repository Structure

Each lab folder follows a consistent structure:

```
DBMS-SQL-LAB/
│
├── Lab-01-DDL-DML/
│   ├── lab1_solution.sql
│   ├── questions.pdf
│   └── README.md
│
├── Lab-02-ER-Diagram/
│   ├── Lab_02_Tables.sql
│   ├── ER_Diagram_Lab_02.png
│   ├── ER_Diagram_Lab_02.drawio
│   ├── questions.pdf
│   └── README.md
│
├── Lab-03-ER-Relation/
│   ├── SQL/
│   │   └── Lab_03_Solution.sql
│   ├── Data_Files/
│   │   ├── Student_data.csv
│   │   ├── Faculty_data.csv
│   │   ├── Course_data.csv
│   │   ├── Department_data.csv
│   │   └── Enrollment_data.csv
│   ├── Questions/
│   │   └── Lab_03_Questions.pdf
│   ├── Reference_Material/
│   └── README.md
│
├── Lab-04-Data-Retrieval/
│   ├── Lab_04_Solution.sql
│   ├── CSV/                    ← SQL Developer query outputs
│   ├── Lab_04_Questions.pdf
│   └── README.md
│
├── Lab-05-Joins/
│   ├── Lab_05_solution.sql
│   ├── CSV/                    ← SQL Developer query outputs
│   ├── DB-Lab-5_Question.pdf
│   └── README.md
│
├── Lab-06-Data-Aggregation/
│   ├── Lab_06_Solution.sql
│   ├── DB-Lab-6.pdf
│   └── README.md
│
└── README.md
```

---

## 🧩 Labs Summary

| # | Lab Title | Key Topics | Status |
|:-:|:----------|:-----------|:------:|
| 01 | DDL & DML Operations | CREATE, ALTER, INSERT, UPDATE, DELETE | ✅ Done |
| 02 | ER Model & Relational Schema | ER Diagram, Schema Design, FK Constraints | ✅ Done |
| 03 | Database Implementation | Real Data Insertion, CSV Files, PK/FK | ✅ Done |
| 04 | Data Retrieval | SELECT, WHERE, ORDER BY, FETCH FIRST, Aliases | ✅ Done |
| 05 | Data Retrieval Using INNER JOIN | Multi-table JOIN, GROUP BY, Aggregates | ✅ Done |
| 06 | Data Aggregation | GROUP BY, HAVING, COUNT, MAX, MIN | ✅ Done |

---

## 🔬 Labs in Detail

### 🔹 Lab 01 – DDL & DML Operations
> **Objective:** Practice fundamental SQL Data Definition and Data Manipulation commands.

- Table Creation using `CREATE TABLE`
- Schema modification using `ALTER TABLE`
- Column renaming using `RENAME COLUMN`
- `INSERT`, `UPDATE`, `DELETE` operations
- Basic `SELECT` queries with `WHERE` filtering

---

### 🔹 Lab 02 – ER Model & Relational Schema
> **Objective:** Design an ER diagram and convert it into a relational schema.

- ER Diagram designed using **draw.io**
- Identified entities: Student, Faculty, Course, Department, Enrollment
- Many-to-Many resolved via Enrollment junction table
- All tables created with proper `PRIMARY KEY` and `FOREIGN KEY` constraints

---

### 🔹 Lab 03 – Database Implementation
> **Objective:** Populate the college database with real-world data from B.P. Mandal College of Engineering.

- Data sourced from official college website, timetables, and department records
- 7 Departments, 26 Faculty, 10+ Students, 5 Courses inserted
- 50 Enrollment records with semester and grade data
- Full FK consistency maintained across all tables

---

### 🔹 Lab 04 – Data Retrieval (Read-Only Queries)
> **Objective:** Retrieve and analyze data using SELECT queries without modifying the database.

- Column selection with `AS` aliases
- Filtering with `WHERE` clause
- Sorting using `ORDER BY ASC / DESC`
- Limiting results using `FETCH FIRST n ROWS ONLY` *(Oracle syntax)*
- Derived columns using `EXTRACT`, `MONTHS_BETWEEN`, `SUBSTR`, `INSTR`

---

### 🔹 Lab 05 – Data Retrieval Using INNER JOIN
> **Objective:** Retrieve meaningful data from multiple related tables using INNER JOIN.

- 2-table and 3-table `INNER JOIN` queries
- Student–Enrollment–Course relationship traversal
- Department-based JOIN queries
- Filtering and sorting with JOIN + `WHERE` + `ORDER BY`
- Analytical queries using `GROUP BY` + `COUNT()` + `MAX()`

---

### 🔹 Lab 06 – Data Aggregation Using GROUP BY and HAVING
> **Objective:** Summarize and analyze data using aggregate functions and grouping clauses.

- Aggregate functions: `COUNT()`, `MAX()`, `MIN()`, `SUM()`, `AVG()`
- `GROUP BY` on single tables (dept-wise, grade-wise, semester-wise)
- `HAVING` clause to filter grouped results
- `GROUP BY` combined with `INNER JOIN`
- Analytical grouped queries with `ORDER BY`

---

## 🛠 Tools & Technologies

| Tool | Purpose |
|:-----|:--------|
| ![Oracle](https://img.shields.io/badge/Oracle-Database-red?logo=oracle) | Primary database engine |
| Oracle SQL Developer | GUI for writing and executing SQL |
| SQL\*Plus | Command-line SQL execution |
| draw.io (diagrams.net) | ER Diagram design |
| Microsoft Excel / CSV | Data collection and formatting |
| Git & GitHub | Version control and documentation |

---

## 🧠 Key Concepts Practiced

```
📌 Relational Database Design         📌 ER Modeling & Schema Conversion
📌 Primary Key & Foreign Key          📌 DDL & DML Commands
📌 Data Retrieval & Filtering         📌 Aliases & Derived Columns
📌 Multi-table JOIN Operations        📌 Aggregate Functions
📌 GROUP BY & HAVING Clauses          📌 Oracle-Specific SQL Syntax
```

---

## 📐 Database Schema

The college database used across all labs consists of **5 related tables**:

```
Department (1) ──────< (M) Student
Department (1) ──────< (M) Faculty
Department (1) ──────< (M) Course
Faculty    (1) ──────< (M) Course
Student    (M) >──────< (M) Course  [resolved via Enrollment]
```

| Table | Primary Key | Foreign Keys |
|:------|:------------|:-------------|
| Department | DepartmentID | — |
| Student | StudentID | DepartmentID |
| Faculty | FacultyID | DepartmentID |
| Course | CourseID | DepartmentID, FacultyID |
| Enrollment | (StudentID, CourseID) | StudentID, CourseID |

---

## ⚠ Important Note

> Oracle does **not** support the `CREATE DATABASE` command like MySQL.
> All tables are created under the **connected user schema** in Oracle.

Also note:
- Use `FETCH FIRST n ROWS ONLY` instead of MySQL's `LIMIT`
- Use `SYSDATE` instead of `NOW()`
- Use `MONTHS_BETWEEN()` for date difference calculations
- Use `VARCHAR2` instead of `VARCHAR` for best practice in Oracle

---

## 🚀 Future Work

Additional labs will be added progressively covering:

- [ ] Subqueries (Nested SELECT)
- [ ] OUTER JOIN (LEFT, RIGHT, FULL)
- [ ] Views & Virtual Tables
- [ ] Indexing & Query Optimization
- [ ] PL/SQL Basics
- [ ] Stored Procedures & Functions
- [ ] Triggers
- [ ] Transactions & ACID Properties

---

<div align="center">

---

### 💡 How to Use This Repository

1. Clone or download the repository
2. Open **Oracle SQL Developer** and connect to your schema
3. Start from `Lab-02` to create the schema, then `Lab-03` to insert data
4. Run each lab's `.sql` file using **F5** (full script) or **F9** (single query)

---

*Submitted as part of DBMS Laboratory Work*
*B.P. Mandal College of Engineering, Madhepura, Bihar*

---

### 📚 Structured · Clean · Academic · Oracle-Based

![Visitor](https://visitor-badge.laobi.icu/badge?page_id=ashish-srivastava-tech.DBMS-SQL-LAB)

</div>
