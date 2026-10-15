CREATE DATABASE ecom;

USE ecom;

CREATE TABLE customer(
  id INT,
  name VARCHAR(50)
);

INSERT INTO customer(id,name)
VALUES
(1,"rahul"),
(2,"Riya"),
(3,"Piyush"),
(4,"Hifza"),
(5,"Tushar"),
(6,"Ananya");


SELECT * FROM customer;


CREATE TABLE orders(
  id INT PRIMARY KEY,
  orderName VARCHAR(50)
);

INSERT INTO orders(id,orderName)
VALUES 
(2,"Fruits"),
(3,"Ball"),
(4,"Utensils");

SELECT * FROM orders 

-- inner join command

SELECT *
FROM customer
INNER JOIN orders
ON customer.id = orders.id;

-- left outer join -> left table + inner join 

SELECT *
From customer
LEFT JOIN orders
ON customer.id = orders.id;

-- Right Join 

SELECT * 
FROM customer
RIGHT JOIN orders
ON CUSTOMER.id = ORDERS.ID;


-- full join COMMENT

SELECT *
FROM customer
LEFT JOIN orders
ON customer.id = orders.id

UNION

SELECT *
FROM customer
RIGHT JOIN orders
ON customer.id = orders.id;


-- cross join

SELECT * 
FROM customer
CROSS JOIN orders;


