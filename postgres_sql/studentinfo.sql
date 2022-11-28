--THIS is example of a one to many realatioship in a database
--the one table (student ) can have many rows in the many table (address)
-- a student can have many address.

--this is the parent table
--parent can have many childrens
--parent id does not repeat
DROP TABLE IF EXISTS student CASCADE; --using cascsde dekete can be possible
CREATE TABLE student(
    id serial PRIMARY KEY ,
    f_name text,
    l_name text
    
);
---------------------------------------------------------
--this is the children table
--children student id can be repeat
DROP TABLE IF EXISTS address;
CREATE TABLE address (
    place text,
    student_id integer REFERENCES student(id) ON DELETE CASCADE --deleting refered by student _id
);

---------------------------------------------------------

--STEP 1 : add data to the student table
INSERT INTO student (f_name,l_name)
VALUES 
('PRASASNTH','PN'),
('FAZIL','MUHAMMAD');
------------------------------------------------------------
--STEP 2 : add data to the address table
INSERT INTO address(place,student_id)
VALUES
('ATTAPPADI',1),
('PADAVAYAL',1),
('NILAMBUR',2);

---------------------------------------------------------

SELECT S.f_name,S.l_name,A.place
FROM student AS S
INNER JOIN address AS A
ON S.id =A.student_id;


--   f_name   |  l_name  |   place   
-- -----------+----------+-----------
--  PRASASNTH | PN       | ATTAPPADI
--  PRASASNTH | PN       | PADAVAYAL
--  FAZIL     | MUHAMMAD | NILAMBUR
-- (3 rows)

-------------------------------------------------------------

--this is how a delete a row

-- DELETE FROM student
-- WHERE id =1;

--after deleted the table looks 
-- address=> SELECT S.f_name,S.l_name,A.place
-- FROM student AS S
-- INNER JOIN address AS A
-- ON a.student_id =S.id;
--  f_name |  l_name  |  place   
-- --------+----------+----------
--  FAZIL  | MUHAMMAD | NILAMBUR
-- (1 row)
----------------------------------------------------------

