-- DBMS SQL Lab
-- Oracle SQL Developer / SQL*Plus

-- NOTE:
-- Oracle does not support CREATE DATABASE.
-- Tables are created under the connected user schema.

CREATE TABLE Student (
    RollNo NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Dept VARCHAR2(20),
    Age NUMBER,
    Phone VARCHAR2(15)
);

CREATE TABLE Course (
    CourseID NUMBER,
    CourseName VARCHAR2(50),
    Credits NUMBER
);

ALTER TABLE Student ADD City VARCHAR2(30);

ALTER TABLE Student ADD Semester NUMBER;

ALTER TABLE Student RENAME COLUMN Phone TO MobileNo;

DROP TABLE Course;

INSERT INTO Student
(RollNo, Name, Dept, Age, MobileNo, City, Semester)
VALUES
(101, 'Rahul', 'CSE', 20, '9876543210', 'Delhi', 3);

INSERT INTO Student
VALUES
(102, 'Amit', 'ECE', 21, '9876543211', 'Patna', 4);

INSERT INTO Student
VALUES
(103, 'Neha', 'CSE', 22, '9876543212', 'Ranchi', 5);

INSERT INTO Student
VALUES
(104, 'Priya', 'ME', 19, '9876543213', 'Kolkata', 2);

INSERT INTO Student
VALUES
(105, 'Suman', 'CSE', 23, '9876543214', 'Patna', 6);

COMMIT;

SELECT * FROM Student;

SELECT RollNo, Name FROM Student;

SELECT * FROM Student WHERE Dept = 'CSE';

SELECT * FROM Student WHERE Age > 20;

UPDATE Student SET Dept = 'ECE' WHERE RollNo = 101;

UPDATE Student SET City = 'Patna' WHERE Name = 'Rahul';

UPDATE Student SET Age = Age + 1;

DELETE FROM Student WHERE RollNo = 105;

COMMIT;
