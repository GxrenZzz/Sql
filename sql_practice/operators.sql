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

-- selectin the table

SELECT * FROM emp

-- using arithmetic operator to satisfy a condition