-- ==========================================
-- Lab 04 – Data Retrieval Using SQL
-- Oracle Version
-- ==========================================

-- ===============================
-- Part A: Basic SELECT + Aliases
-- ===============================

SELECT StudentID AS Roll_No,
       Name AS Student_Name,
       DepartmentID AS Dept_ID
FROM Student;

SELECT CourseID AS Course_Code,
       CourseName AS Course_Title,
       Credits
FROM Course;


-- ===============================
-- Part B: WHERE Clause Filtering
-- ===============================

SELECT *
FROM Student
WHERE DepartmentID = 'D101';

SELECT *
FROM Course
WHERE Credits >= 4;

SELECT *
FROM Student
WHERE Gender = 'Female';


-- ===============================
-- Part C: ORDER BY and Limiting
-- ===============================

-- Sort students alphabetically
SELECT *
FROM Student
ORDER BY Name ASC;

-- Display first 5 students (Oracle syntax)
SELECT *
FROM Student
WHERE ROWNUM <= 5;

-- Sort courses by highest credits first
SELECT *
FROM Course
ORDER BY Credits DESC;


-- ===============================
-- Part D: Derived / Calculated Columns
-- ===============================

-- Calculate Age using DateOfBirth
SELECT Name,
       TRUNC(MONTHS_BETWEEN(SYSDATE, DateOfBirth)/12) AS Age
FROM Student;

-- Extract Birth Year
SELECT Name,
       EXTRACT(YEAR FROM DateOfBirth) AS Birth_Year
FROM Student;

-- ==========================================
-- End of Lab 04
-- ==========================================
