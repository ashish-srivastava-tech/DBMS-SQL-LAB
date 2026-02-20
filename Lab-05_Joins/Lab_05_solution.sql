------------------------------------------------------------
-- LAB 05 : INNER JOIN QUERIES
------------------------------------------------------------

------------------------------------------------------------
-- PART A : Student – Enrollment
------------------------------------------------------------

-- 1. StudentID, Name with CourseID
SELECT S.StudentID, S.Name, E.CourseID
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID;

-- 2. Student Name and Semester
SELECT S.Name, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID;

-- 3. Student Name and Grade
SELECT S.Name, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID;

------------------------------------------------------------
-- PART B : Course – Faculty
------------------------------------------------------------

-- 4. CourseName, Credits with Faculty Name
SELECT C.CourseName, C.Credits, F.Name AS Faculty_Name
FROM Course C
INNER JOIN Faculty F
ON C.FacultyID = F.FacultyID;

-- 5. Courses taught by FacultyID = 518
SELECT C.CourseName
FROM Course C
INNER JOIN Faculty F
ON C.FacultyID = F.FacultyID
WHERE F.FacultyID = 518;

-- 6. Faculty Name, Designation with CourseName
SELECT F.Name, F.Designation, C.CourseName
FROM Faculty F
INNER JOIN Course C
ON F.FacultyID = C.FacultyID;

------------------------------------------------------------
-- PART C : Student – Enrollment – Course
------------------------------------------------------------

-- 7. Student Name with CourseName
SELECT S.Name, C.CourseName
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID;

-- 8. Student Name, CourseName, Semester
SELECT S.Name, C.CourseName, E.Semester
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID;

-- 9. Student Name, CourseName, Grade (Semester 5)
SELECT S.Name, C.CourseName, E.Grade
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID
WHERE E.Semester = 5;

-- 10. Courses taken by StudentID 23105128001
SELECT C.CourseName
FROM Enrollment E
INNER JOIN Course C
ON E.CourseID = C.CourseID
WHERE E.StudentID = 23105128001;

------------------------------------------------------------
-- PART D : Department Based JOIN
------------------------------------------------------------

-- 11. Student Name, DepartmentID with CourseName
SELECT S.Name, S.DepartmentID, C.CourseName
FROM Student S
INNER JOIN Course C
ON S.DepartmentID = C.DepartmentID;

-- 12. Department-wise list of courses
SELECT D.DepartmentID, D.DepartmentName, C.CourseName
FROM Department D
INNER JOIN Course C
ON D.DepartmentID = C.DepartmentID;

-- 13. Faculty Name with Department Name
SELECT F.Name, D.DepartmentName
FROM Faculty F
INNER JOIN Department D
ON F.DepartmentID = D.DepartmentID;

------------------------------------------------------------
-- PART E : Filtering and Sorting
------------------------------------------------------------

-- 14. Student Name and CourseName (Department 105)
SELECT S.Name, C.CourseName
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID
WHERE S.DepartmentID = 105;

-- 15. Student Name and CourseName sorted by Name
SELECT S.Name, C.CourseName
FROM Student S
INNER JOIN Enrollment E
ON S.StudentID = E.StudentID
INNER JOIN Course C
ON E.CourseID = C.CourseID
ORDER BY S.Name ASC;

-- 16. Faculty Name and CourseName sorted by Credits DESC
SELECT F.Name, C.CourseName
FROM Faculty F
INNER JOIN Course C
ON F.FacultyID = C.FacultyID
ORDER BY C.Credits DESC;

------------------------------------------------------------
-- PART F : Analytical JOIN Queries
------------------------------------------------------------

-- 17. Number of students enrolled in each course
SELECT C.CourseName, COUNT(E.StudentID) AS Total_Students
FROM Course C
INNER JOIN Enrollment E
ON C.CourseID = E.CourseID
GROUP BY C.CourseName;

-- 18. Number of courses taught by each faculty
SELECT F.Name, COUNT(C.CourseID) AS Total_Courses
FROM Faculty F
INNER JOIN Course C
ON F.FacultyID = C.FacultyID
GROUP BY F.Name;

-- 19. Department-wise count of students
SELECT D.DepartmentName, COUNT(S.StudentID) AS Total_Students
FROM Department D
INNER JOIN Student S
ON D.DepartmentID = S.DepartmentID
GROUP BY D.DepartmentName;

-- 20. Course with Maximum Grade Awarded
SELECT C.CourseName, MAX(E.Grade) AS Highest_Grade
FROM Course C
INNER JOIN Enrollment E
ON C.CourseID = E.CourseID
GROUP BY C.CourseName;