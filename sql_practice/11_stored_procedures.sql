USE ecom;

CREATE PROCEDURE getAllOrderDetails()
BEGIN
SELECT * FROM orders;
END;


CALL getAllOrderDetails();


-- MAKING PROCEDURE BY IDS



CREATE PROCEDURE getAllOrderDetailsByIdss(IN id INT)
BEGIN
SELECT id,ordername FROM orders WHERE id = id;
END;


CALL getAllOrderDetailsByIdss(3);

USE office;

-- View in sql 


CREATE VIEW emp_view AS 
SELECT id,name,city FROM emp_table;


SELECT * FROM emp_view;

SELECT * FROM emp_table;