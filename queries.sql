-- Insert sample department data with department name and department code
INSERT INTO "department"("department_name", "dept_code") VALUES
('Computer Science and Engineering', 'CS'),
('Mechanical Engineering', 'ME'),
('Electrical and Electronics Engineering', 'EE'),
('Civil Engineering', 'CE'),
('Electronics and Communication Engineering', 'EC'),
('Artificial Intelligence', 'AI'),
('Data Science', 'DS');

-- Insert sample student data with id, name, department, birthdate, email, and phone number
INSERT INTO "student"("id", "first_name", "last_name", "department_id", "date_of_birth", "email", "phone_number") VALUES
('CS1234', 'Thomas Sasikanth', 'S', 1, '2003-09-22', 'thomas.s@example.com', '9876543210'),
('ME5678', 'Joshua', 'V', 2, '2003-08-28', 'joshua.v@example.com', '8234567890'),
('EE2345', 'Ramesh', 'B', 3, '2002-12-18', 'ramesh.b@example.com', '7345678901'),
('CE3214', 'Samuel', 'S', 4, '2002-11-10', 'samuel.b@example.com', '6241567890'),
('EC1234', 'Solomon', 'G', 5, '2003-05-05', 'solomon.g@example.com', '6098745312'),
('AI1234', 'Stephen', 'D', 6, '2003-04-07', 'stephen.d@example.com', '9087564231'),
('DS1234', 'Raju', 'P', 7, '2002-08-18', 'raju.p@example.com', '8241356790');

-- Insert sample semester data with semester name, start date, and end date
INSERT INTO "semester"("name", "start_date", "end_date") VALUES
('1-1', '2021-07-10', '2021-12-18'),
('1-2', '2022-01-02', '2022-05-15'),
('2-1', '2022-06-01', '2022-11-15'),
('2-2', '2022-12-01', '2023-05-30'),
('3-1', '2023-07-22', '2023-12-15'),
('3-2', '2024-01-27', '2024-05-15'),
('4-1', '2024-08-01', '2024-12-15'),
('4-2', '2025-01-06', '2025-05-30');

-- Insert sample course data with course code, course name, department id, and course credits
INSERT INTO "courses" ("course_code", "course_name", "department_id", "credits") VALUES
('CS11051', 'Mathematics-1', 1, 3.0),
('CS11052', 'Communicative English', 1, 3.0),
('CS11053', 'Communication Skills Lab', 1, 1.5),
('CS11054', 'C Programming', 1, 3.0),
('CS11055', 'C Programming Lab', 1, 1.5),
('CS11056', 'Applied Physics', 1, 3.0),
('CS11057', 'Computer Engineering Workshop', 1, 3.0),
('CS11058', 'Applied Physics Lab', 1, 1.5),

('EC11041', 'Mathematics-1', 5, 3.0),
('EC11042', 'Communicative English', 5, 3.0),
('EC11043', 'Engineering Drawing', 5, 3.0),
('EC11044', 'Communication Skills Lab', 5, 1.5),
('EC11045', 'C Programming', 5, 3.0),
('EC11046', 'C Programming Lab', 5, 1.5),
('EC11047', 'Applied Chemistry', 5, 3.0),
('EC11048', 'Applied Chemistry Lab', 5, 1.5),

('AI11421', 'Mathematics-1', 6, 3.0),
('AI11422', 'Communicative English', 6, 3.0),
('AI11423', 'Communication Skills Lab', 6, 1.5),
('AI11424', 'C Programming', 6, 3.0),
('AI11425', 'C Programming Lab', 6, 1.5),
('AI11426', 'Applied Chemistry', 6, 3.0),
('AI11427', 'Applied Chemistry Lab', 6, 1.5),
('AI11428', 'Computer Engineering Workshop', 6, 3.0),

('CS12051', 'Mathematics-2', 1, 3.0),
('CS12052', 'Applied Chemistry', 1, 3.0),
('CS12053', 'Computer Organization', 1, 3.0),
('CS12054', 'Data Structures', 1, 3.0),
('CS12055', 'Python Programming', 1, 3.0),
('CS12056', 'Applied Chemistry Lab', 1, 1.5),
('CS12057', 'Data Structures Lab', 1, 1.5),
('CS12058', 'Python Programming Lab', 1, 1.5),

('EC12041', 'Mathematics-2', 5, 3.0),
('EC12042', 'Applied Physics', 5, 3.0),
('EC12043', 'Java Programming', 5, 3.0),
('EC12044', 'Network Analysis', 5, 3.0),
('EC12045', 'Basic Electrical Engineering', 5, 3.0),
('EC12046', 'Applied Physics Lab', 5, 1.5),
('EC12047', 'Electronic Workshop Lab', 5, 1.5),
('EC12048', 'Basic Electrical Engineering Lab', 5, 1.5),

('AI12421', 'Mathematics-2', 6, 3.0),
('AI12422', 'Applied Physics', 6, 3.0),
('AI12423', 'Data Structures', 6, 3.0),
('AI12424', 'Digital Logic Design', 6, 3.0),
('AI12425', 'Python Programming', 6, 3.0),
('AI12426', 'Applied Physics Lab', 6, 1.5),
('AI12427', 'Data Structures Lab', 6, 1.5),
('AI12428', 'Python Programming Lab', 6, 1.5),

('CS2105A', 'Community Service Project', 1, 2.0),
('CS21051', 'Mathematics-3', 1, 3.0),
('CS21052', 'C++ Programming', 1, 3.0),
('CS21053', 'Operating Systems', 1, 3.0),
('CS21054', 'Software Engineering', 1, 3.0),
('CS21055', 'Mathematical Foundations Of Computer Science', 1, 3.0),
('CS21056', 'C++ Programming Lab', 1, 1.5),
('CS21057', 'Operating Systems Lab', 1, 1.5),
('CS21058', 'Software Engineering Lab', 1, 1.5),
('CS21059', 'Skill Oriented Python Lab', 1, 2.0),

('CS22051', 'Probability and Statistics', 1, 3.0),
('CS22052', 'Database Management Systems', 1, 3.0),
('CS22053', 'Formal Language and Automata Theory', 1, 3.0),
('CS22054', 'Java Programming', 1, 3.0),
('CS22055', 'Managerial Economics and Financial Literacy', 1, 3.0),
('CS22056', 'Database Management Systems Lab', 1, 1.0),
('CS22057', 'R Programming Lab', 1, 2.0),
('CS22058', 'Java Programming Lab', 1, 1.5),
('CS22059', 'Web App Development Using Full Stack', 1, 2.0),

('CS31051', 'Digital Logic Design', 1, 3.0),
('CS31052', 'Computer Networks', 1, 3.0),
('CS31053', 'Design and Analysis Of Algorithms', 1, 3.0),
('CS31054', 'Data Warehousing and Data Mining', 1, 3.0),
('CS31055', 'Data Warehousing and Data Mining Lab', 1, 1.5),
('CS31056', 'Computer Networks Lab', 1, 1.5),
('CS31057', 'Skill Oriented Course - 3 Animation', 1, 2.0),
('CS31058', 'Summer Internship(2 Months)', 1, 1.5),
('CS31059', 'Software Project Management', 1, 3.0),

('CS32051', 'Data communications', 1, 3.0),
('CS32052', 'Machine Learning', 1, 3.0),
('CS32053', 'Compiler Design', 1, 3.0),
('CS32054', 'Cryptography and Network Security', 1, 3.0),
('CS32055', 'Machine Learning using Python Lab', 1, 1.5),
('CS32056', 'Compiler Design Lab', 1, 1.5),
('CS32057', 'Cryptography and Network Security Lab', 1, 1.5),
('CS32058', 'Skill Oriented Course - 4 Lab', 1, 2.0),
('CS32059', 'Mobile Computing', 1, 3.0);

-- Insert sample grades for students in different courses and semesters with grade and grade point
INSERT INTO "grades" ("student_id", "course_code", "semester_name", "grade", "grade_point") VALUES
('CS1234', 'CS11051', '1-1', 'D', 6.0),
('CS1234', 'CS11052', '1-1', 'B', 8.0),
('CS1234', 'CS11053', '1-1', 'A+', 10.0),
('CS1234', 'CS11054', '1-1', 'D', 6.0),
('CS1234', 'CS11055', '1-1', 'A+', 10.0),
('CS1234', 'CS11056', '1-1', 'C', 7.0),
('CS1234', 'CS11057', '1-1', 'A+', 10.0),
('CS1234', 'CS11058', '1-1', 'A+', 10.0),

('CS1234', 'CS12051', '1-2', 'A+', 10.0),
('CS1234', 'CS12052', '1-2', 'C', 7.0),
('CS1234', 'CS12053', '1-2', 'B', 8.0),
('CS1234', 'CS12054', '1-2', 'C', 7.0),
('CS1234', 'CS12055', '1-2', 'C', 7.0),
('CS1234', 'CS12056', '1-2', 'A+', 10.0),
('CS1234', 'CS12057', '1-2', 'A+', 10.0),
('CS1234', 'CS12058', '1-2', 'A+', 10.0),

('CS1234', 'CS2105A', '2-1', 'A+', 10.0),
('CS1234', 'CS21051', '2-1', 'D', 6.0),
('CS1234', 'CS21052', '2-1', 'C', 7.0),
('CS1234', 'CS21053', '2-1', 'D', 6.0),
('CS1234', 'CS21054', '2-1', 'C', 7.0),
('CS1234', 'CS21055', '2-1', 'C', 7.0),
('CS1234', 'CS21056', '2-1', 'A+', 10.0),
('CS1234', 'CS21057', '2-1', 'A+', 10.0),
('CS1234', 'CS21058', '2-1', 'A+', 10.0),
('CS1234', 'CS21059', '2-1', 'A+', 10.0),

('CS1234', 'CS22051', '2-2', 'B', 8.0),
('CS1234', 'CS22052', '2-2', 'A', 9.0),
('CS1234', 'CS22053', '2-2', 'C', 7.0),
('CS1234', 'CS22054', '2-2', 'C', 7.0),
('CS1234', 'CS22055', '2-2', 'B', 8.0),
('CS1234', 'CS22056', '2-2', 'A+', 10.0),
('CS1234', 'CS22057', '2-2', 'A+', 10.0),
('CS1234', 'CS22058', '2-2', 'A+', 10.0),
('CS1234', 'CS22059', '2-2', 'A+', 10.0),

('CS1234', 'CS31051', '3-1', 'B', 8.0),
('CS1234', 'CS31052', '3-1', 'B', 8.0),
('CS1234', 'CS31053', '3-1', 'B', 8.0),
('CS1234', 'CS31054', '3-1', 'D', 6.0),
('CS1234', 'CS31055', '3-1', 'A+', 10.0),
('CS1234', 'CS31056', '3-1', 'A+', 10.0),
('CS1234', 'CS31057', '3-1', 'A+', 10.0),
('CS1234', 'CS31058', '3-1', 'A+', 10.0),
('CS1234', 'CS31059', '3-1', 'C', 7.0),

('CS1234', 'CS32051', '3-2', 'B', 8.0),
('CS1234', 'CS32052', '3-2', 'A', 9.0),
('CS1234', 'CS32053', '3-2', 'C', 7.0),
('CS1234', 'CS32054', '3-2', 'A', 9.0),
('CS1234', 'CS32055', '3-2', 'A+', 10.0),
('CS1234', 'CS32056', '3-2', 'A+', 10.0),
('CS1234', 'CS32057', '3-2', 'A+', 10.0),
('CS1234', 'CS32058', '3-2', 'A+', 10.0),
('CS1234', 'CS32059', '3-2', 'C', 7.0),

('AI1234', 'AI11421', '1-1', 'B', 8.0),
('AI1234', 'AI11422', '1-1', 'A', 9.0),
('AI1234', 'AI11423', '1-1', 'A+', 10.0),
('AI1234', 'AI11424', '1-1', 'D', 6.0),
('AI1234', 'AI11425', '1-1', 'A+', 10.0),
('AI1234', 'AI11426', '1-1', 'A+', 10.0),
('AI1234', 'AI11427', '1-1', 'A+', 10.0),
('AI1234', 'AI11428', '1-1', 'A+', 10.0),

('AI1234', 'AI12421', '1-2', 'C', 7.0),
('AI1234', 'AI12422', '1-2', 'D', 6.0),
('AI1234', 'AI12423', '1-2', 'D', 6.0),
('AI1234', 'AI12424', '1-2', 'C', 7.0),
('AI1234', 'AI12425', '1-2', 'C', 7.0),
('AI1234', 'AI12426', '1-2', 'A+', 10.0),
('AI1234', 'AI12427', '1-2', 'A+', 10.0),
('AI1234', 'AI12428', '1-2', 'A+', 10.0),

('EC1234', 'EC11041', '1-1', 'B', 8.0),
('EC1234', 'EC11042', '1-1', 'B', 8.0),
('EC1234', 'EC11043', '1-1', 'A', 9.0),
('EC1234', 'EC11044', '1-1', 'A+', 10.0),
('EC1234', 'EC11045', '1-1', 'C', 7.0),
('EC1234', 'EC11046', '1-1', 'A+', 10.0),
('EC1234', 'EC11047', '1-1', 'D', 6.0),
('EC1234', 'EC11048', '1-1', 'A+', 10.0),

('EC1234', 'EC12041', '1-2', 'A+', 10.0),
('EC1234', 'EC12042', '1-2', 'B', 8.0),
('EC1234', 'EC12043', '1-2', 'D', 6.0),
('EC1234', 'EC12044', '1-2', 'C', 7.0),
('EC1234', 'EC12045', '1-2', 'A', 9.0),
('EC1234', 'EC12046', '1-2', 'A+', 10.0),
('EC1234', 'EC12047', '1-2', 'A+', 10.0),
('EC1234', 'EC12048', '1-2', 'A+', 10.0);

-- Update the grade and grade point for a specific student in a given course and semester
UPDATE "grades"
SET "grade" = 'A', "grade_point" = 9.0
WHERE "student_id" = 'CS1234' AND "course_code" = 'CS32051' AND "semester_name" = '3-2';

-- Delete a student record by student id
DELETE FROM "student"
WHERE "id" = 'DS1234';

-- Select student performance details for a specific student, including their grades and courses
SELECT "student"."id", "student"."first_name", "student"."last_name", "courses"."course_code", "courses"."course_name", "semester"."name", "grades"."grade", "grades"."grade_point"
FROM "grades"
JOIN "student" ON "grades"."student_id" = "student"."id"
JOIN "courses" ON "grades"."course_code" = "courses"."course_code"
JOIN "semester" ON "grades"."semester_name" = "semester"."name"
WHERE "student"."id" = 'CS1234';

-- Calculate and display the SGPA (Semester Grade Point Average) for a specific student and courses starting with 'CS12'
SELECT "student"."id" AS "student_id", "student"."first_name", "student"."last_name",  "semester"."name",
 ROUND(SUM("grades"."grade_point" * "courses"."credits") / SUM("courses"."credits"), 2) AS "SGPA"
FROM "grades"
JOIN "student" ON "grades"."student_id" = "student"."id"
JOIN "courses" ON "grades"."course_code" = "courses"."course_code"
JOIN "semester" ON "grades"."semester_name" = "semester"."name"
WHERE "student"."id" = 'CS1234' AND "courses"."course_code" LIKE 'CS12%'
GROUP BY "student"."id";

-- Queries to retrieve student performance from the student performance view for a specific student
SELECT * FROM "vw_student_performance" WHERE "student_id" = 'CS1234';
SELECT * FROM "vw_student_performance" WHERE "student_id" = 'EC1234';
SELECT * FROM "vw_student_performance" WHERE "student_id" = 'AI1234';

-- Queries to retrieve SGPA for a specific student from the SGPA view
SELECT * FROM "vw_student_sgpa" WHERE "student_id" = 'CS1234';
SELECT * FROM "vw_student_sgpa" WHERE "student_id" = 'EC1234';
SELECT * FROM "vw_student_sgpa" WHERE "student_id" = 'AI1234';

-- Queries to retrieve CGPA for a specific student from the CGPA view
SELECT * FROM "vw_student_cgpa" WHERE "student_id" = 'CS1234';
SELECT * FROM "vw_student_cgpa" WHERE "student_id" = 'EC1234';
SELECT * FROM "vw_student_cgpa" WHERE "student_id" = 'AI1234';

-- Query to retrieve department-wise CGPA from the department-wise CGPA view
SELECT * FROM "vw_dept_wise";
