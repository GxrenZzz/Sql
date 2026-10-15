CREATE DATABASE IF NOT EXISTS office;


USE office;

CREATE TABLE IF NOT EXISTS emp_table(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  department VARCHAR(50),
  city VARCHAR(50),
  salary INT
);


INSERT INTO emp_table
VALUES
(1,"Rahul",25,"IT","Mumbai",1500),
(2,"Afsara",26,"HR","Pune",2000),
(3,"Abhi",27,"IT","Mumbai",2500),
(4,"Rahul",25,"Marketing","Surat",2400),
(5,"Rahul",24,"Finance","Indore",1500);


SELECT * FROM emp_table;

-- min salary 

SELECT MIN(salary) 
FROM emp_table;

-- greater than min_salary
SELECT name,salary
FROM emp_table
WHERE salary > (SELECT MIN(salary) 
FROM emp_table);



-- Min age

SELECT MIN(age) FROM emp_table;

-- EMP HAVIN THE MINIMUM AGE 

SELECT name , age
FROM emp_table
WHERE age = (SELECT MIN(age) FROM emp_table);



-- Min age

SELECT MIN(age) as min_age 
FROM emp_table;

age greate than min age 
SELECT emp.name , emp.age
FROM emp_table emp,(SELECT MIN(age) as min_age 
FROM emp_table) AS subquery
WHERE age > subquery.min_age;


-- averge age

SELECT AVG(age)
FROM emp_table;

-- PRINT THE EMP AGE AND AVG AGE

SELECT emp.age ,(SELECT AVG(age) FROM emp_table) AS averge_age
from emp_table emp;


-- Finding the nth highest Salary


SELECT DISTINCT salary
FROM emp_table
ORDER BY salary DESC
LIMIT 3,4;




