-- an inner join returns a row if the roe matches
SELECT S.student_id,S.first_name,S.last_name,G.student_id,G.grade 
FROM students AS S
INNER JOIN grades AS G 
ON S.student_id=G.student_id;


--  student_id | first_name | last_name | student_id | grade 
-- ------------+------------+-----------+------------+-------
--       20220 | PRASANTH   | PN        |      20220 | A
--       20221 | SETHUKUMAR | BROTO     |      20221 | B+
--       20222 | FAZIL      | MUHAMMAD  |      20222 | D+
--       20223 | AJAL       | BROTO     |      20223 | A
-- (4 rows)

--left outer join determines what is in the first table but 
--not in the second  table
------------------------------------------------------------------
SELECT S.student_id,S.first_name,S.last_name,G.student_id,G.grade
FROM students AS S 
LEFT OUTER JOIN grades AS G
ON S.student_id=G.student_id
WHERE S.student_id IS NULL;

--  student_id | first_name | last_name | student_id | grade 
-- ------------+------------+-----------+------------+-------
--       20224 | ABHILASH   | BROTO     |            | 
-- (1 row)

-------------------------------------------------------------------------


--right outer join determines what is in the first table but
--not in the first table

SELECT S.student_id,S.first_name,S.last_name,G.student_id,G.grade
FROM students AS S 
RIGHT OUTER JOIN grades AS G 
ON S.student_id=G.student_id;
--WHERE G.student_id IS NULL;


--  student_id | first_name | last_name | student_id | grade 
-- ------------+------------+-----------+------------+-------
--       20220 | PRASANTH   | PN        |      20220 | A
--       20221 | SETHUKUMAR | BROTO     |      20221 | B+
--       20222 | FAZIL      | MUHAMMAD  |      20222 | D+
--       20223 | AJAL       | BROTO     |      20223 | A
--             |            |           |      20225 | ho
-- (5 rows)
-------------------------------------------------------------------------
-------------------------------------------------------------------------
SELECT S.student_id,S.first_name,S.last_name,G.student_id,G.grade
FROM students AS S 
RIGHT OUTER JOIN grades AS G 
ON S.student_id=G.student_id
WHERE G.student_id IS NULL;

--  student_id | first_name | last_name | student_id | grade 
-- ------------+------------+-----------+------------+-------
--             |            |           |      20225 | ho
-- (1 row)

----------------------------------------------------------------------------
----------------------------------------------------------------------------

--An full join determines what is in the second table bur 
--not in the first table and vice versa

SELECT S.student_id,S.first_name,S.last_name,G.student_id,G,grade
FROM students AS S
FULL OUTER JOIN grades AS G
ON S.student_id=G.student_id; 


--  student_id | first_name | last_name | student_id |     g      | grade 
-- ------------+------------+-----------+------------+------------+-------
--       20220 | PRASANTH   | PN        |      20220 | (20220,A)  | A
--       20221 | SETHUKUMAR | BROTO     |      20221 | (20221,B+) | B+
--       20222 | FAZIL      | MUHAMMAD  |      20222 | (20222,D+) | D+
--       20223 | AJAL       | BROTO     |      20223 | (20223,A)  | A
--             |            |           |      20225 | (20225,ho) | ho
--       20224 | ABHILASH   | BROTO     |            |            | 
-- (6 rows)

SELECT S.student_id,S.first_name,S.last_name,G.student_id,G,grade
FROM students AS S
FULL OUTER JOIN grades AS G
ON S.student_id=G.student_id 
WHERE S.student_id IS NULL OR G.student_id IS NULL;


--  student_id | first_name | last_name | student_id |     g      | grade 
-- ------------+------------+-----------+------------+------------+-------
--             |            |           |      20225 | (20225,ho) | ho
--       20224 | ABHILASH   | BROTO     |            |            | 
-- (2 rows)



