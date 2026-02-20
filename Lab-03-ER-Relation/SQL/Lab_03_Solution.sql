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

INSERT INTO Faculty VALUES (501, 'Kunal Kumar', 'Associate Professor', 'kunal1989kumar@gmail.com', 101);
INSERT INTO Faculty VALUES (502, 'Akhilesh Kumar', 'Associate Professor', 'akhileshkumar3804@gmail.com', 101);
INSERT INTO Faculty VALUES (503, 'Raushan Anand', 'Associate Professor', 'raushanbpmc@gmail.com', 101);
INSERT INTO Faculty VALUES (504, 'Pankaj Kumar', 'Associate Professor', 'pankajkumarpk8888@gmail.com', 101);
INSERT INTO Faculty VALUES (505, 'Nishikant Kumar', 'Associate Professor', 'nishikantbpmce32@gmail.com', 101);
INSERT INTO Faculty VALUES (506, 'Rupesh Kumar', 'Associate Professor', 'rupesh.kumar@gmail.com', 101);
INSERT INTO Faculty VALUES (507, 'Bablu Das', 'Associate Professor', 'bkmech78@gmail.com', 102);
INSERT INTO Faculty VALUES (508, 'Firoz Akhtar', 'Associate Professor', ' firozakhtar1581@gmail.com', 102);
INSERT INTO Faculty VALUES (509, 'Rahul Ranjan Bharti', 'Associate Professor', '15rahulbharti@gmail.com', 102);
INSERT INTO Faculty VALUES (510, 'Uttam Kumar', 'Associate Professor', 'uttamiitp1@gmail.com', 102);
INSERT INTO Faculty VALUES (511, 'Ajay Giri', 'Assistant Professor', 'ajay_giri05@rediffmail.com', 102);
INSERT INTO Faculty VALUES (518, 'E. Haque', 'Associate Professor', 'ehtasham47@gmail.com', 105);
INSERT INTO Faculty VALUES (519, 'Md. Izhar', 'Associate Professor', 'mdizhar1996@gmail.com', 105);
INSERT INTO Faculty VALUES (520, 'Prity Kumari Choudhary', 'Associate Professor', 'prity.choudhary@gmail.com', 105);
INSERT INTO Faculty VALUES (521, 'Sujeet Kumar', 'Associate Professor', 'ksujeet.cs@gmail.com', 105);
INSERT INTO Faculty VALUES (522, 'Murlidhar Prasad Singh', 'Associate Professor', 'singhmurlidhar@gmail.com', 105);
INSERT INTO Faculty VALUES (512, 'Hare Krishna Mishra', 'Professor', 'hare.dbit@gmail.com', 110);
INSERT INTO Faculty VALUES (513, 'Bhavesh Nandan', 'Associate Professor', 'bhavesh.nandan@gmail.com', 110);
INSERT INTO Faculty VALUES (514, 'Abhimanyu Mandal', 'Associate Professor', 'mandal.abhimanyu225@gmail.com', 110);
INSERT INTO Faculty VALUES (515, 'Nitish Kumar', 'Associate Professor', 'nitianj@gmail.com', 110);
INSERT INTO Faculty VALUES (516, 'Ashish Kumar Suman', 'Professor', 'sumanashish.rkt@gmail.com', 110);
INSERT INTO Faculty VALUES (517, 'Mitesh Kumar', 'Associate Professor', 'mitesh.sva@gmail.com', 110);
INSERT INTO Faculty VALUES (526, 'Manisha Kumari Singh', 'Associate Professor', 'manisha.ks241@gmail.com', 118);
INSERT INTO Faculty VALUES (527, 'Abhishek Kumar', 'Associate Professor', 'abhishek.kumar@gmail.com', 118);
INSERT INTO Faculty VALUES (525, 'N. Kumar', 'Associate Professor', 'n.kumar@gmail.com', 119);
INSERT INTO Faculty VALUES (523, 'Praveen Kumar', 'Assistant Professor', 'praveenkumaryadav782@gmail.com', 157);

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

INSERT INTO Enrollment VALUES (23105128001, 105501, 5, 'A');
INSERT INTO Enrollment VALUES (23105128001, 105502, 5, 'A-');
INSERT INTO Enrollment VALUES (23105128001, 105503, 5, 'B+');
INSERT INTO Enrollment VALUES (23105128001, 105504, 5, 'A');
INSERT INTO Enrollment VALUES (23105128001, 100508, 5, 'B');

INSERT INTO Enrollment VALUES (23105128002, 105501, 5, 'B+');
INSERT INTO Enrollment VALUES (23105128002, 105502, 5, 'A');
INSERT INTO Enrollment VALUES (23105128002, 105503, 5, 'A-');
INSERT INTO Enrollment VALUES (23105128002, 105504, 5, 'B');
INSERT INTO Enrollment VALUES (23105128002, 100508, 5, 'A');

INSERT INTO Enrollment VALUES (23105128003, 105501, 5, 'A');
INSERT INTO Enrollment VALUES (23105128003, 105502, 5, 'B+');
INSERT INTO Enrollment VALUES (23105128003, 105503, 5, 'B');
INSERT INTO Enrollment VALUES (23105128003, 105504, 5, 'A-');
INSERT INTO Enrollment VALUES (23105128003, 100508, 5, 'A');

INSERT INTO Enrollment VALUES (23105128004, 105501, 5, 'A-');
INSERT INTO Enrollment VALUES (23105128004, 105502, 5, 'A');
INSERT INTO Enrollment VALUES (23105128004, 105503, 5, 'B+');
INSERT INTO Enrollment VALUES (23105128004, 105504, 5, 'B');
INSERT INTO Enrollment VALUES (23105128004, 100508, 5, 'A');

INSERT INTO Enrollment VALUES (23105128005, 105501, 5, 'B+');
INSERT INTO Enrollment VALUES (23105128005, 105502, 5, 'A-');
INSERT INTO Enrollment VALUES (23105128005, 105503, 5, 'A');
INSERT INTO Enrollment VALUES (23105128005, 105504, 5, 'B');
INSERT INTO Enrollment VALUES (23105128005, 100508, 5, 'A');

INSERT INTO Enrollment VALUES (23105128006, 105501, 5, 'A');
INSERT INTO Enrollment VALUES (23105128006, 105502, 5, 'B+');
INSERT INTO Enrollment VALUES (23105128006, 105503, 5, 'A-');
INSERT INTO Enrollment VALUES (23105128006, 105504, 5, 'B');
INSERT INTO Enrollment VALUES (23105128006, 100508, 5, 'A');

INSERT INTO Enrollment VALUES (23105128007, 105501, 5, 'A-');
INSERT INTO Enrollment VALUES (23105128007, 105502, 5, 'A');
INSERT INTO Enrollment VALUES (23105128007, 105503, 5, 'B+');
INSERT INTO Enrollment VALUES (23105128007, 105504, 5, 'B');
INSERT INTO Enrollment VALUES (23105128007, 100508, 5, 'A');

INSERT INTO Enrollment VALUES (23105128008, 105501, 5, 'B');
INSERT INTO Enrollment VALUES (23105128008, 105502, 5, 'A-');
INSERT INTO Enrollment VALUES (23105128008, 105503, 5, 'A');
INSERT INTO Enrollment VALUES (23105128008, 105504, 5, 'B+');
INSERT INTO Enrollment VALUES (23105128008, 100508, 5, 'A');

INSERT INTO Enrollment VALUES (23105128009, 105501, 5, 'A');
INSERT INTO Enrollment VALUES (23105128009, 105502, 5, 'B+');
INSERT INTO Enrollment VALUES (23105128009, 105503, 5, 'A-');
INSERT INTO Enrollment VALUES (23105128009, 105504, 5, 'B');
INSERT INTO Enrollment VALUES (23105128009, 100508, 5, 'A');

INSERT INTO Enrollment VALUES (23105128010, 105501, 5, 'A-');
INSERT INTO Enrollment VALUES (23105128010, 105502, 5, 'A');
INSERT INTO Enrollment VALUES (23105128010, 105503, 5, 'B+');
INSERT INTO Enrollment VALUES (23105128010, 105504, 5, 'B');
INSERT INTO Enrollment VALUES (23105128010, 100508, 5, 'A');

COMMIT;


