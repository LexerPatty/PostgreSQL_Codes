"""
CONCAT, CONCAT_WS
SUBSTR
LEFT, RIGHT
LENGTH
UPPER, LOWER
TRIM, LTRIM, RTRIM
REPLACE
POSITION
"""

-- CONCAT -- Join strings
SELECT CONCAT(fname, ' ',lname) AS full_name FROM employees ;

-- CONCAT_WS() -- With separator
SELECT CONCAT_WS(' - ', fname, lname, dept) AS employee_info FROM employees;

-- SUBSTR() — Extract part of a string SUBSTR(string, start, length)
SELECT SUBSTR(fname, 1, 2) AS short_name
FROM employees;

-- LEFT() — Get characters from the left
SELECT LEFT(fname, 2) AS first_two
FROM employees;

-- RIGHT() — Get characters from the right
SELECT RIGHT(fname, 2) AS first_two
FROM employees;

-- LENGTH() — Count characters
SELECT fname, LENGTH(fname) AS name_length
FROM employees;

-- UPPER() — Convert to uppercase
SELECT UPPER(fname) AS name
FROM employees;

-- LOWER() — Convert to lowercase
SELECT LOWER(fname) AS name
FROM employees;

-- TRIM() — Remove spaces from both sides
SELECT TRIM('   Raj   ') AS name;

-- RTRIM() — Remove spaces from right
SELECT RTRIM('   Raj   ') AS name;

-- LTRIM() — Remove spaces from Left
SELECT LTRIM('   Raj   ') AS name;

-- REPLACE() — Replace text
SELECT REPLACE(email, '@example.com', '@gmail.com') AS email
FROM employees;

SELECT REPLACE('Hey Buddy', 'Hey', 'Hello');

-- POSITION() — Find the position of text
SELECT email, POSITION('@' IN email) AS position
FROM employees;

-- REVERSE 
SELECT REVERSE('Hello World');


SELECT * FROM employees ;