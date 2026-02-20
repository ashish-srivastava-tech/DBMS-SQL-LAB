------------------------------------------------------------
-- LAB 03 : INSERT DATA INTO TABLES
-- (Run after Lab 02 schema creation)
------------------------------------------------------------

------------------------------------------------------------
-- 1. DEPARTMENT
------------------------------------------------------------

INSERT INTO Department VALUES (101, 'Civil Engineering', 'Block A');
INSERT INTO Department VALUES (102, 'Mechanical Engineering', 'Block B');
INSERT INTO Department VALUES (105, 'Computer Science and Engineering', 'Block C');
INSERT INTO Department VALUES (110, 'Electrical and Electronics Engineering', 'Block D');
INSERT INTO Department VALUES (118, '3D Animation and Graphics', 'Block E');
INSERT INTO Department VALUES (119, 'Civil Engineering with Computer Application', 'Block F');
INSERT INTO Department VALUES (157, 'Computer Science and Engineering (AIML)', 'Block G');

------------------------------------------------------------
-- 2. STUDENT  (Only CSE students included for enrollment consistency)
------------------------------------------------------------

INSERT INTO Student VALUES (23105128001, 'Shrishty Priya', DATE '2004-03-18', 'F', '8123456701', 105);
INSERT INTO Student VALUES (23105128002, 'Aman Kumar', DATE '2003-12-07', 'M', '8234567812', 105);
INSERT INTO Student VALUES (23105128003, 'Monu Kumar', DATE '2004-01-25', 'M', '8345678923', 105);
INSERT INTO Student VALUES (23105128004, 'Rohit Raj', DATE '2003-10-14', 'M', '8456789034', 105);
INSERT INTO Student VALUES (23105128005, 'Arun Kumar', DATE '2004-05-09', 'M', '8567890145', 105);
INSERT INTO Student VALUES (23105128006, 'Amarjeet Kumar', DATE '2003-08-21', 'M', '8678901256', 105);
INSERT INTO Student VALUES (23105128007, 'Md. Altaf Alam', DATE '2004-02-02', 'M', '8789012367', 105);
INSERT INTO Student VALUES (23105128008, 'Asha Kumari', DATE '2004-06-11', 'F', '8890123478', 105);
INSERT INTO Student VALUES (23105128009, 'Prince Kumar', DATE '2003-11-29', 'M', '8901234589', 105);
INSERT INTO Student VALUES (23105128010, 'Ananya Kumari', DATE '2004-04-17', 'F', '9012345690', 105);

------------------------------------------------------------
-- 3. FACULTY  (Only required ones for CSE courses)
------------------------------------------------------------

INSERT INTO Faculty VALUES (518, 'E. Haque', 'Associate Professor', 'ehtasham47@gmail.com', 105);
INSERT INTO Faculty VALUES (519, 'Md. Izhar', 'Associate Professor', 'mdizhar1996@gmail.com', 105);
INSERT INTO Faculty VALUES (520, 'Prity Kumari Choudhary', 'Associate Professor', 'prity.choudhary@gmail.com', 105);
INSERT INTO Faculty VALUES (522, 'Murlidhar Prasad Singh', 'Associate Professor', 'singhmurlidhar@gmail.com', 105);
INSERT INTO Faculty VALUES (523, 'Praveen Kumar', 'Assistant Professor', 'praveenkumaryadav782@gmail.com', 105);

------------------------------------------------------------
-- 4. COURSE  (CSE Courses Only)
------------------------------------------------------------

INSERT INTO Course VALUES (105501, 'Artificial Intelligence', 4, 105, 518);
INSERT INTO Course VALUES (105502, 'Database Management Systems', 4, 105, 519);
INSERT INTO Course VALUES (105503, 'Formal Language and Automata', 4, 105, 523);
INSERT INTO Course VALUES (105504, 'Software Engineering', 4, 105, 522);
INSERT INTO Course VALUES (100508, 'Professional Skill Development', 2, 105, 520);

------------------------------------------------------------
-- 5. ENROLLMENT
------------------------------------------------------------

INSERT INTO Enrollment VALUES (1201, '5th', 'A', 23105128001, 105501);
INSERT INTO Enrollment VALUES (1202, '5th', 'A-', 23105128001, 105502);
INSERT INTO Enrollment VALUES (1203, '5th', 'B+', 23105128001, 105503);
INSERT INTO Enrollment VALUES (1204, '5th', 'A', 23105128001, 105504);
INSERT INTO Enrollment VALUES (1205, '5th', 'B', 23105128001, 100508);

INSERT INTO Enrollment VALUES (1206, '5th', 'B+', 23105128002, 105501);
INSERT INTO Enrollment VALUES (1207, '5th', 'A', 23105128002, 105502);
INSERT INTO Enrollment VALUES (1208, '5th', 'A-', 23105128002, 105503);
INSERT INTO Enrollment VALUES (1209, '5th', 'B', 23105128002, 105504);
INSERT INTO Enrollment VALUES (1210, '5th', 'A', 23105128002, 100508);

INSERT INTO Enrollment VALUES (1211, '5th', 'A', 23105128003, 105501);
INSERT INTO Enrollment VALUES (1212, '5th', 'B+', 23105128003, 105502);
INSERT INTO Enrollment VALUES (1213, '5th', 'B', 23105128003, 105503);
INSERT INTO Enrollment VALUES (1214, '5th', 'A-', 23105128003, 105504);
INSERT INTO Enrollment VALUES (1215, '5th', 'A', 23105128003, 100508);

INSERT INTO Enrollment VALUES (1216, '5th', 'A-', 23105128004, 105501);
INSERT INTO Enrollment VALUES (1217, '5th', 'A', 23105128004, 105502);
INSERT INTO Enrollment VALUES (1218, '5th', 'B+', 23105128004, 105503);
INSERT INTO Enrollment VALUES (1219, '5th', 'B', 23105128004, 105504);
INSERT INTO Enrollment VALUES (1220, '5th', 'A', 23105128004, 100508);

INSERT INTO Enrollment VALUES (1221, '5th', 'B+', 23105128005, 105501);
INSERT INTO Enrollment VALUES (1222, '5th', 'A-', 23105128005, 105502);
INSERT INTO Enrollment VALUES (1223, '5th', 'A', 23105128005, 105503);
INSERT INTO Enrollment VALUES (1224, '5th', 'B', 23105128005, 105504);
INSERT INTO Enrollment VALUES (1225, '5th', 'A', 23105128005, 100508);

INSERT INTO Enrollment VALUES (1226, '5th', 'A', 23105128006, 105501);
INSERT INTO Enrollment VALUES (1227, '5th', 'B+', 23105128006, 105502);
INSERT INTO Enrollment VALUES (1228, '5th', 'A-', 23105128006, 105503);
INSERT INTO Enrollment VALUES (1229, '5th', 'B', 23105128006, 105504);
INSERT INTO Enrollment VALUES (1230, '5th', 'A', 23105128006, 100508);

INSERT INTO Enrollment VALUES (1231, '5th', 'A-', 23105128007, 105501);
INSERT INTO Enrollment VALUES (1232, '5th', 'A', 23105128007, 105502);
INSERT INTO Enrollment VALUES (1233, '5th', 'B+', 23105128007, 105503);
INSERT INTO Enrollment VALUES (1234, '5th', 'B', 23105128007, 105504);
INSERT INTO Enrollment VALUES (1235, '5th', 'A', 23105128007, 100508);

INSERT INTO Enrollment VALUES (1236, '5th', 'B', 23105128008, 105501);
INSERT INTO Enrollment VALUES (1237, '5th', 'A-', 23105128008, 105502);
INSERT INTO Enrollment VALUES (1238, '5th', 'A', 23105128008, 105503);
INSERT INTO Enrollment VALUES (1239, '5th', 'B+', 23105128008, 105504);
INSERT INTO Enrollment VALUES (1240, '5th', 'A', 23105128008, 100508);

INSERT INTO Enrollment VALUES (1241, '5th', 'A', 23105128009, 105501);
INSERT INTO Enrollment VALUES (1242, '5th', 'B+', 23105128009, 105502);
INSERT INTO Enrollment VALUES (1243, '5th', 'A-', 23105128009, 105503);
INSERT INTO Enrollment VALUES (1244, '5th', 'B', 23105128009, 105504);
INSERT INTO Enrollment VALUES (1245, '5th', 'A', 23105128009, 100508);

INSERT INTO Enrollment VALUES (1246, '5th', 'A-', 23105128010, 105501);
INSERT INTO Enrollment VALUES (1247, '5th', 'A', 23105128010, 105502);
INSERT INTO Enrollment VALUES (1248, '5th', 'B+', 23105128010, 105503);
INSERT INTO Enrollment VALUES (1249, '5th', 'B', 23105128010, 105504);
INSERT INTO Enrollment VALUES (1250, '5th', 'A', 23105128010, 100508);

COMMIT;
