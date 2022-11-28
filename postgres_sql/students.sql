DROP TABLE IF EXISTS students;
CREATE TABLE students(
    student_id integer PRIMARY KEY,
    first_name text,
    last_name text
);

INSERT INTO students(student_id,first_name,last_name)
VALUES
(20220,'PRASANTH','PN'),
(20221,'SETHUKUMAR','BROTO'),
(20222,'FAZIL','MUHAMMAD'),
(20223,'AJAL','BROTO');


DROP TABLE IF EXISTS grades;
CREATE TABLE grades(
    student_id integer PRIMARY KEY,
    grade text
);
INSERT INTO grades
VALUES
(20220,'A'),
(20221,'B+'),
(20222,'D+'),
(20223,'A');
