-- DATATYPES 
"""
Numeric - INT DOUBLE FLOAT DECIMAL 
String     - VARCHAR 
Date       - DATE
Boolean  - BOOLEAN
"""



-- CONSTRAINTS 
"""
Constraint....
Primary Key
NOT NULL
Default 
Serial
Unique
"""



-- CREATE TABLE 
CREATE TABLE employees (
emp_id SERIAL PRIMARY KEY,
fname VARCHAR(50) NOT NULL , 
lname VARCHAR(50) NOT NULL , 
email VARCHAR(100) NOT NULL UNIQUE ,
dept VARCHAR(70),
salary DECIMAL (10,2) DEFAULT 30000.00,
hire_date DATE NOT NULL DEFAULT CURRENT_DATE
)



-- CHECK TABLE CREATED OR EXIST OR NOT 
SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'public'
AND table_type = 'BASE TABLE'
ORDER BY table_name;


-- ADD DATA INTO TABLE
INSERT INTO employees (emp_id, fname, lname, email, dept, salary, hire_date) 
VALUES
(1, 'Raj', 'Sharma', 'raj.sharma@example.com', 'IT', 50000.00, '2020-01-15'),
(2, 'Priya', 'Singh', 'priya.singh@example.com', 'HR', 45000.00, '2019-03-22'),
(3, 'Arjun', 'Verma', 'arjun.verma@example.com', 'IT', 55000.00, '2021-06-01'),
(4, 'Suman', 'Patel', 'suman.patel@example.com', 'Finance', DEFAULT, '2018-07-30'),
(5, 'Kavita', 'Rao', 'kavita.rao@example.com', 'HR', 47000.00, '2020-11-10'),
(6, 'Amit', 'Gupta', 'amit.gupta@example.com', 'Marketing', 52000.00, '2020-09-25'),
(7, 'Neha', 'Desai', 'neha.desai@example.com', 'IT', 48000.00, '2019-05-18'),
(8, 'Rahul', 'Kumar', 'rahul.kumar@example.com', 'IT', 53000.00, '2021-02-14'),
(9, 'Anjali', 'Mehta', 'anjali.mehta@example.com', 'Finance', 61000.00 , DEFAULT ),
(10, 'Vijay', 'Nair', 'vijay.nair@example.com', 'Marketing', 50000.00, '2020-04-19'),


INSERT INTO employees (fname, lname, email, dept, salary, hire_date) 
VALUES
('Pushpendu', 'Dey', 'pushpendu.dey@example.com', 'CSE', 100000.00, '2020-04-27');

"""
Debug for emp_id 
shows Key (emp_id)=(1) already exists. 

Test_Demo=# SELECT currval ('employees_emp_id_seq');
ERROR:  currval of sequence "employees_emp_id_seq" is not yet defined in this session
Test_Demo=# SELECT setval ('employees_emp_id_seq' , 10);  set the value 

"""

SELECT * FROM employees ; 