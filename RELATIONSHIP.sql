-- RELATIONSHIP
SELECT * from customers ;

-- ONE TO ONE 


-- CREATE CUSTOMER TABLE 
CREATE TABLE customers (
	cust_id SERIAL PRIMARY KEY, 
    cust_name VARCHAR(100) NOT NULL 
)


-- ADD DATA 
INSERT INTO customers (cust_name)
VALUES 
('Raju'), ('Sham'), ('Paul'), ('Alex')

-- CREATE ORDER TABLE 
CREATE TABLE orders ( 
   ord_id SERIAL PRIMARY KEY, 
   ord_date DATE NOT NULL, 
   price NUMERIC NOT NULL,
   cust_id INTEGER NOT NULL, 
   FOREIGN KEY (cust_id) REFERENCES 
   customers (cust_id) 
)

-- ADD DATA
INSERT INTO orders (ord_date, cust_id, price)
VALUES 
('2024-01-01', 1, 250.00),  
('2024-01-15', 1, 300.00),  
('2024-02-01', 2, 150.00),
('2024-03-01', 3, 450.00),
('2024-04-04', 2, 550.00); 



-- CROSS JOINS
-- Every row from one table is combined with every row from another table
SELECT * FROM customers CROSS JOIN orders ;

-- INNER JOIN
-- Returns only the rows where there is a match between the specified columns in both the left (or first) and right (or second) tables.
SELECT * FROM customers c
INNER JOIN 
orders o 
ON c.cust_id = o.cust_id
GROUP BY cust_name ;



-- LEFT JOIN
-- Returns all rows from the left (or first) table and the matching rows from the right (or second) table.





-- RIGHT JOIN
-- Returns all rows from the right (or second) table and the matching rows from the left (or first) table.







-- ONE TO MANY 


-- MANY TO ONE 