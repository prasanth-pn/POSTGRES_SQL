-- A  FIRST demomstration table
DROP TABLE IF EXISTS lecture CASCADE;
CREATE TABLE lecture (
    id serial PRIMARY KEY,
    f_name text NOT NULL,
    l_name text NOT NULL,
    gender text NOT NULL
);

--SECOND TABLE
DROP TABLE IF EXISTS course;
CREATE TABLE course(
    id serial PRIMARY KEY,
    name text NOT NULL,
    lecture_id integer REFERENCES lecture(id) ON DELETE CASCADE

);

INSERT INTO lecture(f_name,l_name,gender)
VALUES
('PRASANTH','PN','MALE'),
('JASEELA','BROTOTYPE','FEMALE'),
('FAZIL',',MUHAMMAD','MALE'),
('ABHILASH','MJ','MALE'),
('DHANESH','KAMMATH','MALE');

INSERT INTO course(name,lecture_id)
VALUES
('database',1),
('programming 1',1),
('programming 2',1),
('programming 3',2),
('web development',2),
('programming 1',2),
('programming 3',2),
('programming 2',2),
('c-programming',3),
('c++ programming',3),
('bee',4),
('communication',1),
('data structures',3),
('software engineering',2),
('software testing',4);

/*
---lectures and their courses 
SELECT L.f_name,L.l_name,C.name
FROM lecture AS L
INNER JOIN course AS C
ON L.id=c.lecture_id
ORDER BY C.name;\


SELECT L.f_name,L.l_name,C.name
FROM lecture AS L
INNER JOIN course AS C
ON L.id=C.lecture_id;


--lectures that teach indroduction to databases
SELECT L.f_name,L.l_name,C.name
FROM lecture AS L 
INNER JOIN course AS C
ON L.id=C.lecture_id
WHERE C.name='programming 1';
*/
---lectures that take two lectures
SELECT L.f_name, L.l_name,C.name
FROM lecture AS L
INNER JOIN course AS C
ON L.id =C.lecture_id
WHERE C.name='programming 1' AND C.name='programming 2';


SELECT L.f_name,L.l_name,C1.name,C2.name,C3.name
FROM lecture AS L
INNER JOIN course AS C1
ON L.id=C1.lecture_id
INNER JOIN course AS C2
ON L.id=C2.lecture_id
INNER JOIN course AS C3
ON L.id=C3.lecture_id
WHERE C1.name='programming 1' 
AND C2.name='programming 2'
AND C3.name='programming 3';

--    f_name  |  l_name   
-- ----------+-----------
--  PRASANTH | PN
--  JASEELA  | BROTOTYPE
-- (2 rows)


-- SELECT L1.name,L2.name
-- FROM course AS L1,course AS L2;