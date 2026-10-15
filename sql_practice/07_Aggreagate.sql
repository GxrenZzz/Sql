USE opearators;

-- select

SELECT * FROM emp;

-- Aggregate Functions 

-- 1 count

SELECT COUNT(name) FROM emp;

-- 2 SUM

SELECT SUM(salary) FROM emp;

-- 3 AVERAGE

SELECT AVG(salary) FROM emp;

-- 4 MAX

SELECT MAX(salary) FROM emp;

-- 5 MIN

SELECT MIN(salary) FROM emp;

SELECT * FROM emp


-- gROUP bY CLAUSE


SELECT city , AVG(salary) AS avgsal
FROM emp 
GROUP BY city;


-- Having Clause 


SELECT city , AVG(salary) AS avgsal
FROM emp 
GROUP BY city
HAVING avgsal > 130000;


SELECT city ,MAX(salary) AS max_sal
FROM emp
GROUP BY city
ORDER BY max_sal DESC;

SELECT city , COUNT(name) as total_emp
FROM emp
GROUP BY city
ORDER BY total_emp DESC;

