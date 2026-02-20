------------------------------------------------------------
-- LAB 04 : DATA RETRIEVAL (READ ONLY QUERIES)
-- Oracle SQL Version
------------------------------------------------------------

------------------------------------------------------------
-- PART A : BASIC DATA DISPLAY (ALIASES)
------------------------------------------------------------

-- 1. Display all columns from Student with aliases
SELECT 
    StudentID AS Roll_No,
    Name AS Student_Name,
    DateOfBirth AS DOB,
    Gender AS Gender_Type,
    ContactNumber AS Contact_No,
    DepartmentID AS Dept_ID
FROM Student;

-- 2. Display selected columns with renamed headers
SELECT 
    StudentID AS Roll_No,
    Name AS Student_Name,
    DepartmentID AS Dept_ID
FROM Student;

-- 3. Faculty with readable names
SELECT 
    FacultyID AS Faculty_ID,
    Name AS Faculty_Name,
    Designation AS Job_Title,
    Email AS Email_Address
FROM Faculty;

-- 4. Course table with renamed headers
SELECT 
    CourseID AS Course_Code,
    CourseName AS Course_Title,
    Credits AS Credit_Value,
    DepartmentID AS Dept_ID,
    FacultyID AS Instructor_ID
FROM Course;

-- 5. Enrollment table with meaningful aliases
SELECT 
    StudentID AS Roll_No,
    CourseID AS Course_Code,
    Semester AS Semester_No,
    Grade AS Grade_Awarded
FROM Enrollment;

------------------------------------------------------------
-- PART B : CONDITIONAL DATA DISPLAY (WHERE)
------------------------------------------------------------

-- 6. Students of Department 105 (CSE)
SELECT * 
FROM Student
WHERE DepartmentID = 105;

-- 7. Female students
SELECT *
FROM Student
WHERE Gender = 'F';

-- 8. Assistant Professors
SELECT *
FROM Faculty
WHERE Designation = 'Assistant Professor';

-- 9. Faculty of Department 102
SELECT *
FROM Faculty
WHERE DepartmentID = 102;

-- 10. Courses with credits >= 4
SELECT *
FROM Course
WHERE Credits >= 4;

-- 11. Students born after 1 Jan 2003
SELECT *
FROM Student
WHERE DateOfBirth > DATE '2003-01-01';

-- 12. Enrollment records for Semester 5
SELECT *
FROM Enrollment
WHERE Semester = 5;

------------------------------------------------------------
-- PART C : SORTING AND LIMITING
------------------------------------------------------------

-- 13. Students sorted by Name (Ascending)
SELECT *
FROM Student
ORDER BY Name ASC;

-- 14. Students sorted by DOB (Descending)
SELECT *
FROM Student
ORDER BY DateOfBirth DESC;

-- 15. Faculty sorted by Designation
SELECT *
FROM Faculty
ORDER BY Designation ASC;

-- 16. Courses sorted by Credits (Descending)
SELECT *
FROM Course
ORDER BY Credits DESC;

-- 17. First 3 student records (Oracle method)
SELECT *
FROM Student
FETCH FIRST 3 ROWS ONLY;

-- 18. First 5 course records
SELECT *
FROM Course
FETCH FIRST 5 ROWS ONLY;

------------------------------------------------------------
-- PART D : DERIVED / COMPUTED OUTPUT
------------------------------------------------------------

-- 19. Student name with calculated age
SELECT 
    Name,
    FLOOR(MONTHS_BETWEEN(SYSDATE, DateOfBirth)/12) AS Age
FROM Student;

-- 20. Course with updated credits (display only)
SELECT 
    CourseName,
    Credits + 1 AS Updated_Credits
FROM Course;

-- 21. Enrollment with Grade renamed
SELECT 
    StudentID,
    CourseID,
    Semester,
    Grade AS Final_Grade
FROM Enrollment;

-- 22. Student name with Year of Birth
SELECT 
    Name,
    EXTRACT(YEAR FROM DateOfBirth) AS Birth_Year
FROM Student;

-- 23. Faculty name with Email Domain
SELECT 
    Name,
    SUBSTR(Email, INSTR(Email,'@')+1) AS Email_Domain
FROM Faculty;
