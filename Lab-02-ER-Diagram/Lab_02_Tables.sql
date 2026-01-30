-- Lab 02: ER Model to Relational Schema
-- Oracle SQL (DDL)

CREATE TABLE Department (
    DepartmentID NUMBER PRIMARY KEY,
    DepartmentName VARCHAR2(50),
    OfficeLocation VARCHAR2(50)
);

CREATE TABLE Student (
    StudentID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    DateOfBirth DATE,
    Gender VARCHAR2(10),
    ContactNumber VARCHAR2(15),
    DepartmentID NUMBER,
    CONSTRAINT fk_student_department
        FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

CREATE TABLE Faculty (
    FacultyID NUMBER PRIMARY KEY,
    Name VARCHAR2(50),
    Designation VARCHAR2(50),
    Email VARCHAR2(50),
    DepartmentID NUMBER,
    CONSTRAINT fk_faculty_department
        FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID)
);

CREATE TABLE Course (
    CourseID NUMBER PRIMARY KEY,
    CourseName VARCHAR2(50),
    Credits NUMBER,
    DepartmentID NUMBER,
    FacultyID NUMBER,
    CONSTRAINT fk_course_department
        FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID),
    CONSTRAINT fk_course_faculty
        FOREIGN KEY (FacultyID)
        REFERENCES Faculty(FacultyID)
);

CREATE TABLE Enrollment (
    StudentID NUMBER,
    CourseID NUMBER,
    Semester NUMBER,
    Grade VARCHAR2(5),
    CONSTRAINT pk_enrollment
        PRIMARY KEY (StudentID, CourseID),
    CONSTRAINT fk_enroll_student
        FOREIGN KEY (StudentID)
        REFERENCES Student(StudentID),
    CONSTRAINT fk_enroll_course
        FOREIGN KEY (CourseID)
        REFERENCES Course(CourseID)
);
