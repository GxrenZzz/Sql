CREATE DATABASE xyz;

USE xyz;

-- make an schema of employee in xyz database

CREATE TABLE employee(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  age INT,
  department VARCHAR(50),
  city VARCHAR(50),
  salary INT
);

-- fill the details


INSERT INTO employee(id,name,age,department,city,salary)
VALUES
(1,"Rahul",25,"HR","Delhi",1500),
(2,"Puja",24,"IT","Delhi",2500),
(3,"Rohan",21,"HR","Delhi",43500),
(4,"Piyush",29,"IT","Delhi",45500),
(5,"Tushar",25,"IT","Delhi",231500);


-- see the data 

SELECT * FROM employee;

-- updation command 

UPDATE employee
SET salary = 50000
WHERE department ="HR"

SET SQL_SAFE_UPDATES=0


-- NAME UPDATION

UPDATE employee
SET name = "Priyansh"
WHERE name = "Rahul"


-- Delete Command 

Delete FROM employee
WHERE department = "HR";


DELETE FROM employee
WHERE name = "Puja";

-- selecting the data

SELECT * FROM employee WHERE AGE <= 30;

-- ALTER COMMAND

ALTER TABLE employee
ADD dob VARCHAR(50) DEFAULT "np";

-- Deleting Columns 

ALTER TABLE employee
DROP COLUMN dob;


-- modifying the dtype of a column 

ALTER TABLE employee
MODIFY age VARCHAR(50);


-- changing the name of a column 

ALTER TABLE employee
CHANGE age emo_age VARCHAR(50);

-- another way of changing the commands 

ALTER TABLE employee
RENAME COLUMN name TO new_name;