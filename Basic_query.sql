CREATE TABLE person ( 
	id INT,
	name VARCHAR(100),
	city VARCHAR(100)
); 

-- see the columns and their data types of a PostgreSQL table.
SELECT column_name, data_type
FROM information_schema.columns
WHERE table_name = 'person';


-- INSERT QUERY 
INSERT INTO person VALUES (101, 'RAJA' , 'DELHI');
INSERT INTO person VALUES (102, 'Ram' , 'Mumbai');
INSERT INTO person VALUES (103, 'Pushpendu' , 'Chennai');


-- Reading data from a Table
SELECT * FROM person ; 
