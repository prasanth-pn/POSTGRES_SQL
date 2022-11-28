--another example of a self-join
DROP TABLE IF EXISTS employee;
CREATE TABLE employee(
    id serial PRIMARY KEY,
    f_name text NOT NULL,
    l_name text NOT NULL,
    manager_id integer
);
INSERT INTO employee(f_name,l_name,manager_id)
VALUES
('PRASANTH','PN',NULL),
('AYYUBI','SUHAILUDHEEN',1),
('SREERAG ','BROTOTYPE',1),
('ALEN','SABU',2);

---------------------------------------------------------------------

--perform s self join to find for each employee their manager/boss
SELECT E.f_name AS "emp(fname)", E.l_name AS "emp(l_name)",
M.f_name AS "boss(fname)",M.l_name AS "boss(lname)"
FROM employee AS E
INNER JOIN employee AS M
ON E.manager_id=M.id; 


--  emp(fname) | emp(l_name)  | boss(fname) | boss(lname)  
-- ------------+--------------+-------------+--------------
--  AYYUBI     | SUHAILUDHEEN | PRASANTH    | PN
--  SREERAG    | BROTOTYPE    | PRASANTH    | PN
--  ALEN       | SABU         | AYYUBI      | SUHAILUDHEEN
-- (3 rows)

------------------------------------------------------------------



SELECT E.f_name AS "emp(fname)", E.l_name AS "emp(l_name)",
M.f_name AS "boss(fname)",M.l_name AS "boss(lname)"
FROM employee AS E
LEFT OUTER JOIN employee AS M
ON E.manager_id=M.id;

-- emp(fname) | emp(l_name)  | boss(fname) | boss(lname)  
-- ------------+--------------+-------------+--------------
--  PRASANTH   | PN           |             | 
--  AYYUBI     | SUHAILUDHEEN | PRASANTH    | PN
--  SREERAG    | BROTOTYPE    | PRASANTH    | PN
--  ALEN       | SABU         | AYYUBI      | SUHAILUDHEEN
-- (4 rows)

