# 📘 DBMS Lab 05 – INNER JOIN Queries  

## 👨‍🎓 Student Information

| Field | Details |
|-------|----------|
| **Name** | Ashish Srivastava |
| **Course** | B.Tech – Computer Science & Engineering |
| **Semester** | 5th |
| **Subject** | Database Management Systems Lab |
| **Tool Used** | Oracle SQL Developer |

---

# 🎯 Objective

To understand and implement **INNER JOIN operations** for retrieving meaningful data from multiple related tables using primary–foreign key relationships.

This lab focuses on:

- Multi-table data retrieval  
- Use of table aliases  
- Analytical queries with `GROUP BY`  
- Filtering & sorting using `JOIN`  
- Read-only SQL queries (no table modification)

---

# 🗂 Database Tables Used

This lab is based on:

- Lab 02 – ER Model to Relational Schema  
- Lab 03 – Data Insertion  

### Tables Used:

- `Department`
- `Student`
- `Faculty`
- `Course`
- `Enrollment`

---

# 🔗 INNER JOIN Concept

**INNER JOIN** returns only those records that have matching values in both tables.

### Example Query

```sql
SELECT S.Name, C.CourseName
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID;
```

---

# 🧩 Lab Implementation Breakdown

## 🔹 Part A – Student & Enrollment Relationship
- Displayed student details with enrolled courses  
- Retrieved semester and grade information  

## 🔹 Part B – Course & Faculty Relationship
- Displayed course name with faculty  
- Retrieved faculty designation with courses  

## 🔹 Part C – Student–Course–Enrollment JOIN
- Joined three tables together  
- Extracted combined academic information  

## 🔹 Part D – Department-Based JOIN Queries
- Linked students and faculty with department details  
- Displayed department-wise course list  

## 🔹 Part E – Filtering & Sorting with JOIN
- Applied `WHERE` clause with JOIN  
- Used `ORDER BY` for sorting  

## 🔹 Part F – Analytical JOIN Queries
- Counted students enrolled in each course  
- Counted courses taught by each faculty  
- Department-wise student count  
- Retrieved maximum grade per course  

---

# 🛠 SQL Concepts Practiced

- INNER JOIN  
- Table Aliases  
- GROUP BY  
- Aggregate Functions (`COUNT`, `MAX`)  
- ORDER BY  
- WHERE Clause with JOIN  
- Primary Key – Foreign Key relationships  

---

# 🧠 Key Learning Outcomes

- Understood relational database normalization  
- Strengthened PK–FK relationship understanding  
- Learned multi-table JOIN implementation  
- Improved analytical SQL query writing  
- Practiced clean and readable query structure  

---

# 📌 Conclusion

Lab 05 successfully demonstrated the implementation of **INNER JOIN operations** in Oracle SQL.

This lab forms a strong foundation for advanced SQL concepts such as:

- Subqueries  
- OUTER JOIN  
- Views  
- Indexing  
- Stored Procedures  

---

# 📂 Folder Structure

```
DBMS-SQL-Lab
│
└── Lab-05-Joins
    │
    ├── README.md
    ├── Lab_05_Join_Queries.sql
    ├── Lab_05_Question.pdf
    └── CSV/   (Optional – if data files are used)
```

### 📌 Description

- **README.md** → Contains lab objective, explanation, and summary  
- **Lab_05_Join_Queries.sql** → Contains all INNER JOIN queries (Part A–F)  
- **Lab_05_Question.pdf** → Official lab question sheet  
- **CSV/** → Dataset files (only if used)

---

---

### ✅ Lab 05 Completed Successfully
