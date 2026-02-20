📌 DBMS Lab 05 – Data Retrieval Using INNER JOIN
👨‍🎓 Student Details

Name: Ashish Srivastava

Course: B.Tech – Computer Science & Engineering

Semester: 5th

Subject: Database Management Systems (DBMS Lab)

Tool Used: Oracle SQL Developer

🎯 Objective

The objective of this lab is to understand and implement INNER JOIN operations to retrieve meaningful information from multiple related tables using primary–foreign key relationships.

This lab focuses on:

Combining data from multiple tables

Using table aliases for readability

Performing analytical queries using GROUP BY

Applying filtering and sorting with JOIN

Executing read-only queries without modifying database structure

🗂 Database Tables Used

This lab is based on the schema created in:

Lab 02 – ER Model to Relational Schema

Lab 03 – Data Insertion

The following tables were used:

Department

Student

Faculty

Course

Enrollment

🔗 JOIN Concept Used

Only INNER JOIN was used in this lab (as instructed).

INNER JOIN returns only those records that have matching values in both tables.

Example Structure
SELECT S.Name, C.CourseName
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID;
🧩 Lab Work Breakdown
🔹 Part A – Student & Enrollment Relationship

Displayed student details along with enrolled courses

Retrieved semester and grade information

🔹 Part B – Course & Faculty Relationship

Displayed courses with respective faculty names

Retrieved faculty designation with course details

🔹 Part C – Student–Course–Enrollment Relationship

Joined three tables together

Extracted combined academic information

🔹 Part D – Department-Based JOIN Queries

Linked students and faculty with department details

Displayed department-wise course list

🔹 Part E – Filtering & Sorting with JOIN

Applied WHERE clause with JOIN

Used ORDER BY for structured output

🔹 Part F – Analytical JOIN Queries

Counted students enrolled in each course

Counted courses taught by each faculty

Department-wise student count

Retrieved maximum grade per course

🛠 SQL Concepts Practiced

INNER JOIN

Table Aliases

GROUP BY

Aggregate Functions (COUNT, MAX)

ORDER BY

WHERE Clause with JOIN

Primary Key – Foreign Key relationships

🧠 Key Learning Outcomes

Understood how relational databases minimize redundancy

Learned how to retrieve meaningful data from multiple related tables

Practiced multi-table JOIN queries

Improved readability using table aliases

Strengthened analytical SQL query writing skills

📌 Conclusion

Lab 05 successfully demonstrated the implementation of INNER JOIN operations in Oracle SQL.

This lab enhanced understanding of relational schema design and multi-table data retrieval while maintaining read-only query constraints.

The knowledge gained in this lab forms a strong foundation for advanced SQL concepts such as:

Subqueries

OUTER JOIN

Views

Indexing

Stored Procedures