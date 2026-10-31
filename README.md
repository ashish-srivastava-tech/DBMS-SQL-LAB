# DBMS-SQL-LAB: Oracle SQL

DBMS laboratory work using Oracle SQL, written for the Database Management Systems lab (B.Tech CSE, B.P. Mandal College of Engineering, Madhepura, Bihar). Each lab has its own README, and query outputs are saved as CSV files wherever the lab asks for them.

## About

| | |
|:--|:--|
| Name | Ashish Srivastava |
| Program | B.Tech, Computer Science and Engineering (batch 2023-27) |
| Institution | B.P. Mandal College of Engineering, Madhepura, Bihar |
| Subject | Database Management Systems Lab (5th semester, session 2025-26) |
| Tools | Oracle Database 21c, Oracle SQL Developer / SQL*Plus, draw.io, Git |
| GitHub | github.com/ashish-srivastava-tech |

## What is in this repository

- Oracle-native syntax throughout (`VARCHAR2`, `SYSDATE`, `FETCH FIRST n ROWS ONLY`, `MONTHS_BETWEEN`, `EXTRACT`), not MySQL syntax
- Lab-wise folders, each with its own README, solution `.sql` file and question paper
- An ER diagram (PNG and editable draw.io source) and a 5-table relational schema with constraints
- CSV outputs for the SELECT and JOIN labs, so each result can be checked without re-running the query

## Lab dashboard

| Lab | Title | Content | Output proof | Status |
|:--:|:--|:--|:--|:--|
| 01 | DDL and DML operations | 18 queries | none | Complete |
| 02 | ER model and relational schema | 5 tables with constraints, ER diagram | ER diagram (PNG, draw.io) | Complete |
| 03 | Populating the database | 98 INSERT statements, 5 data CSVs | none | Complete |
| 04 | Data retrieval (SELECT) | 23 queries | 18 CSV files | Complete |
| 05 | INNER JOIN | 20 queries | 20 CSV files | Complete |
| 06 | GROUP BY and HAVING | 22 queries | none | Complete |


**Totals:** 83 queries (Labs 01, 04, 05, 06), 5 CREATE TABLE statements, 98 INSERT statements, 38 CSV outputs (Labs 04 and 05).

## Folder structure

```
DBMS-SQL-LAB/
├── Lab-01-DDL-DML/
│   ├── lab1_solution.sql
│   ├── questions.pdf
│   └── README.md
├── Lab-02-ER-Diagram/
│   ├── Lab_02_Tables.sql
│   ├── ER_Diagram_Lab_02.png
│   ├── ER_Diagram_Lab_02.drawio
│   ├── questions.pdf
│   └── README.md
├── Lab-03-ER-Relation/
│   ├── SQL/Lab_03_Solution.sql
│   ├── Data_Files/ (Student, Faculty, Course, Department, Enrollment CSVs)
│   ├── Questions/
│   ├── Reference_Material/
│   └── README.md
├── Lab-04-Data-Retrieval/
│   ├── Lab_04_Solution.sql
│   ├── CSV/ (18 outputs)
│   ├── Lab_04_Questions.pdf
│   └── README.md
├── Lab-05-Joins/
│   ├── Lab_05_solution.sql
│   ├── CSV/ (20 outputs)
│   ├── DB-Lab-5_Question.pdf
│   └── README.md
├── Lab-06-Data-Aggregation/
│   ├── Lab_06_Solution.sql
│   ├── DB-Lab-6.pdf
│   └── README.md
└── README.md
```

## Labs in brief

**Lab 01: DDL and DML.** Define, modify and manipulate tables.

```sql
CREATE TABLE Student (RollNo NUMBER PRIMARY KEY, Name VARCHAR2(50), ...);
ALTER TABLE Student ADD City VARCHAR2(30);
ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;
UPDATE Student SET Age = Age + 1;
DELETE FROM Student WHERE RollNo = 105;
```

**Lab 02: ER model and relational schema.** A college ER diagram implemented as Oracle tables. The many-to-many relationship between Student and Course is resolved through an Enrollment table.

```sql
CREATE TABLE Enrollment (
    StudentID  NUMBER,
    CourseID   NUMBER,
    Semester   NUMBER,
    Grade      VARCHAR2(5),
    CONSTRAINT pk_enrollment PRIMARY KEY (StudentID, CourseID),
    CONSTRAINT fk_stu FOREIGN KEY (StudentID) REFERENCES Student(StudentID),
    CONSTRAINT fk_crs FOREIGN KEY (CourseID)  REFERENCES Course(CourseID)
);
```

**Lab 03: Populating the database.** 98 INSERT statements (7 departments, 26 faculty, 5 courses, 10 students, 50 enrollments) load the dataset described below.

```sql
-- Illustrative rows (placeholder faculty details)
INSERT INTO Faculty VALUES (518, 'Faculty A', 'Associate Professor', 'faculty.a@example.com', 105);
INSERT INTO Course  VALUES (105501, 'Artificial Intelligence', 4, 105, 518);
```

**Lab 04: Data retrieval (23 queries).** Aliases, filtering, sorting, limiting and derived columns, using Oracle functions.

```sql
SELECT Name, FLOOR(MONTHS_BETWEEN(SYSDATE, DateOfBirth) / 12) AS Age FROM Student;
SELECT Name, SUBSTR(Email, INSTR(Email, '@') + 1) AS Email_Domain FROM Faculty;
SELECT * FROM Student FETCH FIRST 3 ROWS ONLY;
```

**Lab 05: INNER JOIN (20 queries).** Combining two and three related tables.

```sql
SELECT S.Name, C.CourseName, E.Grade
FROM   Student S
INNER JOIN Enrollment E ON S.StudentID = E.StudentID
INNER JOIN Course     C ON E.CourseID  = C.CourseID
WHERE  E.Semester = 5
ORDER BY S.Name ASC;
```

**Lab 06: GROUP BY and HAVING (22 queries).** WHERE filters rows before grouping, HAVING filters groups after grouping.

```sql
SELECT C.CourseName, COUNT(E.StudentID) AS Total_Students
FROM   Course C
INNER JOIN Enrollment E ON C.CourseID = E.CourseID
GROUP BY C.CourseName
HAVING COUNT(E.StudentID) > 2
ORDER BY Total_Students DESC;
```

## Dataset

The data follows the structure of B.P. Mandal College of Engineering and was prepared as part of the lab assignment, using the reference material (timetables and syllabus) provided by the course faculty:

- **Faculty names and email addresses** are the ones published publicly on the college website.
- **Student records** (names, dates of birth, contact numbers) are dummy values created for practice.
- Course titles follow the college's CSE curriculum.

| Entity | Loaded by `Lab_03_Solution.sql` | Full reference file in `Data_Files/` |
|:--|:--:|:--:|
| Departments | 7 | 7 |
| Faculty | 26 | 26 |
| Courses | 5 (CSE only) | 32 |
| Students | 10 | 72 |
| Enrollments | 50 | 50 |

## Database schema

| Table | Columns |
|:--|:--|
| Department | DepartmentID (PK), DepartmentName, OfficeLocation |
| Student | StudentID (PK), Name, DateOfBirth, Gender, Contact, DeptID (FK) |
| Faculty | FacultyID (PK), Name, Designation, Email, DeptID (FK) |
| Course | CourseID (PK), CourseName, Credits, DeptID (FK), FacultyID (FK) |
| Enrollment | StudentID (PK, FK), CourseID (PK, FK), Semester, Grade |

Relationships: Department 1:M Student, Department 1:M Faculty, Department 1:M Course, Faculty 1:M Course, Student M:N Course (through Enrollment).

## Tech stack

Oracle Database 21c, Oracle SQL Developer, draw.io (ER diagrams), Git and GitHub, CSV for query outputs.

## Oracle vs MySQL cheatsheet

| Feature | MySQL | Oracle (used here) |
|:--|:--|:--|
| Limit rows | `LIMIT 5` | `FETCH FIRST 5 ROWS ONLY` |
| Current date | `NOW()` | `SYSDATE` |
| String type | `VARCHAR` | `VARCHAR2` |
| Age calculation | `DATEDIFF()` | `MONTHS_BETWEEN()` |
| Create database | `CREATE DATABASE` | Schema-based, no CREATE DATABASE here |
| Extract year | `YEAR(col)` | `EXTRACT(YEAR FROM col)` |
| Email domain | `SUBSTRING_INDEX()` | `SUBSTR()` with `INSTR()` |
| Concatenation | `CONCAT(a, b)` | `a \|\| b` |

## Skills practised

| Area | Covered |
|:--|:--|
| DDL | CREATE, ALTER, DROP, RENAME, TRUNCATE |
| DML | INSERT, UPDATE, DELETE, SELECT |
| Constraints | PRIMARY KEY, FOREIGN KEY, NOT NULL, UNIQUE |
| Filtering | WHERE, AND, OR, IN, BETWEEN, LIKE |
| Sorting and limiting | ORDER BY ASC/DESC, FETCH FIRST n ROWS ONLY |
| Functions | MONTHS_BETWEEN, EXTRACT, SUBSTR, INSTR, FLOOR, SYSDATE, COUNT, MAX, MIN, AVG |
| Joins | INNER JOIN (two-table and three-table) |
| Aggregation | GROUP BY, HAVING |
| Schema design | ER modelling, relational schema |

## Roadmap

- Subqueries and nested SELECT
- OUTER JOIN (LEFT, RIGHT, FULL)
- Views
- Indexing and query optimisation
- PL/SQL basics, stored procedures and functions
- Triggers and cursors
- Transactions and ACID properties

## How to run

1. Clone the repository.

   ```
   git clone https://github.com/ashish-srivastava-tech/DBMS-SQL-LAB.git
   cd DBMS-SQL-LAB
   ```

2. Open Oracle SQL Developer and connect to your schema.
3. Run the scripts in this order:

   | Step | File | Purpose |
   |:--:|:--|:--|
   | 1 | `Lab-02-ER-Diagram/Lab_02_Tables.sql` | creates the 5 tables and constraints |
   | 2 | `Lab-03-ER-Relation/SQL/Lab_03_Solution.sql` | inserts the sample data |
   | 3 | `Lab-04-Data-Retrieval/Lab_04_Solution.sql` | 23 SELECT queries |
   | 4 | `Lab-05-Joins/Lab_05_solution.sql` | 20 INNER JOIN queries |
   | 5 | `Lab-06-Data-Aggregation/Lab_06_Solution.sql` | 22 GROUP BY and HAVING queries |

**Note on Lab 01:** it creates its own practice `Student` table with different columns. If you run it in the same schema as Lab 02, you will get an `ORA-00955` name conflict. Run Lab 01 in a separate schema, or drop that table first.

| Key (SQL Developer) | Action |
|:--|:--|
| `F5` | run full script |
| `F9` | run single statement |
| `Ctrl + Enter` | run statement at cursor |
| `Ctrl + Shift + F` | format SQL |

---

Author: Ashish Srivastava, B.P. Mandal College of Engineering, Madhepura, Bihar.
