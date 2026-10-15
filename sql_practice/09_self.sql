CREATE DATABASE IF NOT EXISTS myschool;

USE myschool;

CREATE TABLE student(
  s_id INT,
  name VARCHAR(50),
  m_id INT
);

SELECT * FROM student;

INSERT INTO student 
VALUES
(1,"Ram",NULL),
(2,"Rahul",1),
(3,"Riti",1),
(4,"Riya",3);


-- inner join 

SELECT s1.name AS Mentor_Name ,s2.name AS student_name 
FROM student as s1
JOIN student as s2
WHERE s1.s_id = s2.m_id;


-- left exclusive

USE ecom;

SELECT *
FROM customer
LEFT JOIN orders
ON customer.id = orders.id
WHERE orders.id IS NULL;

-- right exclusive

SELECT * 
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id
WHERE customer.id IS NULL;


-- full exclusice

SELECT *
FROM customer
LEFT JOIN orders
ON customer.id = orders.id
WHERE orders.id IS NULL

UNION

SELECT * 
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id
WHERE customer.id IS NULL;


SELECT * from customer;
SELECT * from orders;