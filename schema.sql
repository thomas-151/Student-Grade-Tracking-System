-- Creates the "department" table to store department information
CREATE TABLE "department" (
     "id" INTEGER,
     "department_name" TEXT NOT NULL,
     "dept_code" TEXT,
     PRIMARY KEY("id")
);

-- Creates the "student" table to store student details and their department associations
CREATE TABLE "student" (
    "id" TEXT,
    "first_name" TEXT,
    "last_name" TEXT,
    "department_id" INTEGER,
    "date_of_birth" NUMERIC,
    "email" TEXT,
    "phone_number" NUMERIC,
    PRIMARY KEY("id"),
    FOREIGN KEY("department_id") REFERENCES "department"("id")
);

-- Creates the "semester" table to store semester details (e.g., start and end dates)
CREATE TABLE "semester" (
     "name" TEXT,
     "start_date" NUMERIC,
     "end_date" NUMERIC,
     PRIMARY KEY("name")
);

-- Creates the "courses" table to store course information and link them to departments
CREATE TABLE "courses" (
     "course_code" TEXT,
     "course_name" TEXT NOT NULL,
     "department_id" INTEGER,
     "credits" NUMERIC,
     PRIMARY KEY("course_code"),
     FOREIGN KEY("department_id") REFERENCES "department"("id")
);

-- Creates the "grades" table to store students' grades for each course and semester
CREATE TABLE "grades" (
     "grade_id" INTEGER,
     "student_id" TEXT,
     "course_code" TEXT,
     "semester_name" TEXT,
     "grade" TEXT,
     "grade_point" NUMERIC,
     PRIMARY KEY("grade_id"),
     FOREIGN KEY("student_id") REFERENCES "student"("id"),
     FOREIGN KEY("course_code") REFERENCES "courses"("course_code"),
     FOREIGN KEY("semester_name") REFERENCES "semester"("name")
);

-- Creates an index on "student_id" in the "grades" table to optimize queries filtering by student
CREATE INDEX "idx_student_id" ON "grades"("student_id");

-- Creates an index on "semester_name" in the "grades" table to optimize queries filtering by semester
CREATE INDEX "idx_semester_name" ON "grades"("semester_name");

-- Creates an index on "course_code" in the "grades" table to optimize queries filtering by course
CREATE INDEX "idx_course_code" ON "grades"("course_code");

-- Creates a view to display detailed student performance (grades, courses, semester)
CREATE VIEW "vw_student_performance" AS
SELECT
    "student"."id" AS "student_id",
    "student"."first_name",
    "student"."last_name",
    "courses"."course_code",
    "courses"."course_name",
    "semester"."name" AS "semester_name",
    "grades"."grade",
    "grades"."grade_point",
    "courses"."credits"
FROM "grades"
JOIN "student" ON "grades"."student_id" = "student"."id"
JOIN "courses" ON "grades"."course_code" = "courses"."course_code"
JOIN "semester" ON "grades"."semester_name" = "semester"."name"
ORDER BY "courses"."course_code";

-- Creates a view to calculate and display the SGPA (Semester Grade Point Average) for each student
CREATE VIEW "vw_student_sgpa" AS
SELECT
    "student"."id" AS "student_id",
    "student"."first_name",
    "student"."last_name",
    "department"."dept_code",
    "semester"."name" AS "semester_name",
    ROUND(SUM("grades"."grade_point" * "courses"."credits") / SUM("courses"."credits"), 2) AS "SGPA"
FROM "grades"
JOIN "student" ON "grades"."student_id" = "student"."id"
JOIN "courses" ON "grades"."course_code" = "courses"."course_code"
JOIN "department" ON "courses"."department_id" = "department"."id"
JOIN "semester" ON "grades"."semester_name" = "semester"."name"
GROUP BY "semester"."name", "student"."id"
ORDER BY "student"."id", "semester"."name";

-- Creates a view to calculate and display the CGPA (Cumulative Grade Point Average) for each student
CREATE VIEW "vw_student_cgpa" AS
SELECT "student_id",
       "first_name",
       "last_name",
       "dept_code",
       ROUND(SUM("SGPA") / COUNT("SGPA") , 2) AS "CGPA"
FROM "vw_student_sgpa"
GROUP BY "student_id"
ORDER BY "student_id";

-- Creates a view to display the CGPA grouped by department
CREATE VIEW "vw_dept_wise" AS
SELECT * FROM "vw_student_cgpa" GROUP BY "dept_code";
