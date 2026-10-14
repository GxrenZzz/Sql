CREATE DATABASE opearators;

USE opearators;

-- create a table 

CREATE TABLE IF NOT EXISTS emp(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  salary INT
);

INSERT INTO emp(id,name,age,salary)
VALUES
(1,"piyush",63,230000),
(2,"Rahul",41,31000),
(3,"Sujir",29,230000),
(4,"Riya",61,23600),
(5,"Pragun",57,230000);

ALTER TABLE emp
ADD COLUMN city VARCHAR(50);

UPDATE emp
SET city = CASE
  WHEN id = 1 THEN "Delhi"
  WHEN id = 2 THEN "Pune"
  WHEN id = 3 THEN "Pune"
  WHEN id = 4 THEN "Delhi"
  WHEN id = 5 THEN "Rajasthan"
END  
WHERE id IN (1, 2, 3, 4 ,5);

-- selectin the table

SELECT * FROM emp

-- using arithmetic operator to satisfy a condition

SELECT * FROM emp WHERE age > 20;


-- using logical operator and

SELECT * FROM emp WHERE city = "Pune" and age > 18;

-- using logical operator or

SELECT * FROM emp WHERE city ="Pune" or age > 49;

-- using logical operator not

SELECT * FROM emp WHERE age NOT IN (25,29,63);


-- operator in Sql 

SELECT * FROM emp WHERE age  IN (25,29,63);


-- like wildcard operator 

SELECT * FROM emp;

SELECT * FROM emp WHERE name LIKE "%R%";

-- like wildcard operator _

SELECT * FROM emp WHERE name LIKE "_r%";

-- between opearator COMMENT

SELECT * FROM emp WHERE salary BETWEEN 23000 and 230000;

-- Limit CLause COMMENT

SELECT * FROM emp LIMIT 2;

-- sorting the order in ascending or descending order 

SELECT * FROM emp
ORDER BY salary DESC;

-- Practice Questions

SELECT * FROM emp
WHERE id = 1;

SELECT * FROM emp
WHERE id = 1 and city ="Delhi";


SELECT * FROM emp WHERE salary > 30000 and city = "Pune";


SELECT * FROM emp WHERE city NOT IN ("Delhi");


SELECT * FROM emp 
ORDER BY salary DESC
LIMIT 2;