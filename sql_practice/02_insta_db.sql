CREATE DATABASE IF NOT EXISTS instagramDb;

Use instagramDb;

-- creation of tables 

CREATE TABLE IF NOT EXISTS users(
  userId INT PRIMARY KEY,
  userName VARCHAR(50),
  email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS posts(
  postId INT PRIMARY KEY,
  userId INT,
  caption VARCHAR(100)
);

-- Show tables 

SHOW TABLES;

-- ISNERTING DATA 

INSERT INTO users(userId,userName,email)
VALUES
(1,"Piyush","abc@gmail.com"),
(2,"Priyansh","bcd@gmail.com"),
(3,"Tushar","cde@gmail.com");


-- show the data COMMENT

INSERT INTO posts(postId,userId,caption) 
VALUES
(101,561,"light"),
(102,562,"air"),
(103,563,"water");

USE instagramDb;


SHOW tables;

SELECT * FROM users 


 