CREATE DATABASE colleges;

USE colleges;

-- unique constraints

CREATE TABLE student (
  phonenbr INT UNIQUE
);


INSERT INTO student(phonenbr)
VALUES
(123),
(456);

SELECT * FROM student;

-- null constraints 

CREATE TABLE student1(
  age INT,
  rollno INT NOT NULL
);

INSERT INTO student1(age,rollno)
VALUES
(27,2112);

SELECT * FROM student1


-- check constraints

CREATE TABLE student3(
  age INT CHECK(age > 18)
);



INSERT INTO student3(age)
VALUES (19);

SELECT * FROM student3



-- default constraints

CREATE TABLE student4(
  schoolName VARCHAR(50) DEFAULT 'XYZ',
  age INT
);


INSERT INTO student4(age)
VALUES (19);

SELECT * FROM student4


-- primary constraints 

CREATE TABLE student5(
  age INT,
  rollno INT PRIMARY KEY
);

-- unique

INSERT INTO student5(age,rollno)
VALUES (12,1) , (13,2) , (40,2);

-- not null 

INSERT INTO student5(age)
VALUES (12) , (13) , (40);




-- foreign key constraitns 

CREATE TABLE course(
  courseName VARCHAR(50),
  rollno INT,
  FOREIGN KEY (rollno) REFERENCES student5(rollno)
);