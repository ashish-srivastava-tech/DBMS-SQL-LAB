------------------------------------------------------------
-- LAB 06 : DATA AGGREGATION USING GROUP BY AND HAVING
-- Oracle SQL Version
-- (Run after Lab 02 schema and Lab 03 data insertion)
------------------------------------------------------------

------------------------------------------------------------
-- PART A : BASIC AGGREGATE QUERIES
------------------------------------------------------------

-- 1. Total number of students
SELECT COUNT(*) AS Total_Students
FROM Student;

-- 2. Total number of faculty members
SELECT COUNT(*) AS Total_Faculty
FROM Faculty;

-- 3. Total number of courses
SELECT COUNT(*) AS Total_Courses
FROM Course;

-- 4. Maximum credits among all courses
SELECT MAX(Credits) AS Max_Credits
FROM Course;

-- 5. Minimum credits among all courses
SELECT MIN(Credits) AS Min_Credits
FROM Course;

------------------------------------------------------------
-- PART B : GROUP BY ON SINGLE TABLES
------------------------------------------------------------

-- 6. Number of students in each Department
SELECT DepartmentID, COUNT(*) AS Number_of_Students
FROM Student
GROUP BY DepartmentID
ORDER BY DepartmentID;

-- 7. Number of faculty members in each Department
SELECT DepartmentID, COUNT(*) AS Number_of_Faculty
FROM Faculty
GROUP BY DepartmentID
ORDER BY DepartmentID;

-- 8. Number of courses offered by each Department
SELECT DepartmentID, COUNT(*) AS Number_of_Courses
FROM Course
GROUP BY DepartmentID
ORDER BY DepartmentID;

-- 9. Number of enrollments in each Semester
SELECT Semester, COUNT(*) AS Number_of_Enrollments
FROM Enrollment
GROUP BY Semester
ORDER BY Semester;

-- 10. Number of students for each Grade
SELECT Grade, COUNT(*) AS Number_of_Students
FROM Enrollment
GROUP BY Grade
ORDER BY Grade;

------------------------------------------------------------
-- PART C : GROUP BY WITH HAVING
------------------------------------------------------------

-- 11. Departments having more than 3 students
SELECT DepartmentID, COUNT(*) AS Total_Students
FROM Student
GROUP BY DepartmentID
HAVING COUNT(*) > 3;

-- 12. Semesters where more than 2 enrollments exist
SELECT Semester, COUNT(*) AS Total_Enrollments
FROM Enrollment
GROUP BY Semester
HAVING COUNT(*) > 2;

-- 13. Grades assigned to more than one student
SELECT Grade, COUNT(*) AS Total_Students
FROM Enrollment
GROUP BY Grade
HAVING COUNT(*) > 1;

-- 14. DepartmentIDs where more than one course is offered
SELECT DepartmentID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY DepartmentID
HAVING COUNT(*) > 1;

------------------------------------------------------------
-- PART D : AGGREGATION WITH JOIN
------------------------------------------------------------

-- 15. Number of students enrolled in each CourseID
SELECT E.CourseID, COUNT(E.StudentID) AS Total_Students
FROM Enrollment E
GROUP BY E.CourseID
ORDER BY E.CourseID;

-- 16. CourseName and number of students enrolled
SELECT C.CourseName, COUNT(E.StudentID) AS Total_Students
FROM Course C
INNER JOIN Enrollment E
ON C.CourseID = E.CourseID
GROUP BY C.CourseName
ORDER BY C.CourseName;

-- 17. DepartmentID and number of students in that department
SELECT D.DepartmentID, D.DepartmentName, COUNT(S.StudentID) AS Total_Students
FROM Department D
INNER JOIN Student S
ON D.DepartmentID = S.DepartmentID
GROUP BY D.DepartmentID, D.DepartmentName
ORDER BY D.DepartmentID;

-- 18. Faculty Name and number of courses taught
SELECT F.Name AS Faculty_Name, COUNT(C.CourseID) AS Total_Courses
FROM Faculty F
INNER JOIN Course C
ON F.FacultyID = C.FacultyID
GROUP BY F.Name
ORDER BY Total_Courses DESC;

------------------------------------------------------------
-- PART E : ANALYTICAL QUERIES
------------------------------------------------------------

-- 19. CourseName and maximum grade obtained in that course
SELECT C.CourseName, MAX(E.Grade) AS Highest_Grade
FROM Course C
INNER JOIN Enrollment E
ON C.CourseID = E.CourseID
GROUP BY C.CourseName
ORDER BY C.CourseName;

-- 20. DepartmentID and total number of courses offered
SELECT DepartmentID, COUNT(*) AS Total_Courses
FROM Course
GROUP BY DepartmentID
ORDER BY DepartmentID;

-- 21. Semester and total number of students enrolled
SELECT Semester, COUNT(StudentID) AS Total_Students_Enrolled
FROM Enrollment
GROUP BY Semester
ORDER BY Semester;

-- 22. Courses that have more than 2 students enrolled
SELECT C.CourseName, COUNT(E.StudentID) AS Total_Students
FROM Course C
INNER JOIN Enrollment E
ON C.CourseID = E.CourseID
GROUP BY C.CourseName
HAVING COUNT(E.StudentID) > 2
ORDER BY Total_Students DESC;
