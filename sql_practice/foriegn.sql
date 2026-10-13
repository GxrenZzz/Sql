CREATE DATABASE school1;

USE school1;

CREATE TABLE student(
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

CREATE TABLE course(
  cid INT PRIMARY KEY,
  id INT,
  FOREIGN KEY (id) REFERENCES student(id)
)

 