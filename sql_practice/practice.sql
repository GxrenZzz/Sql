-- to avoid the erroes we do this at creation 

-- CREATE DATABASE school;

-- CREATE DATABASE if NOT EXISTS school;

-- DROP DATABASE school;

-- DROP DATABASE IF EXISTS school;


CREATE DATABASE college;

-- use the college database 

USE college;


-- Creating. a Table 

CREATE TABLE course(
  cid INT,
  cname VARCHAR(50)
);


-- Inserting Values  

INSERT INTO course(cid,cname)
VALUES(1,"Physics"),(2,"Maths");


-- how to see the data now 

SELECT cid FROM course;

-- how to see all the tables 

SHOW TABLES;