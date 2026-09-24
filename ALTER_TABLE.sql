-- ADD OR REMOE THE COLUMN
SELECT * FROM person ;

ALTER TABLE person
ADD COLUMN Age INT DEFAULT 12;

ALTER TABLE person
ADD COLUMN Department VARCHAR(50) NOT NULL DEFAULT 'IT' ;

-- Add a column only if it doesn't already exist
ALTER TABLE person
ADD COLUMN IF NOT EXISTS department VARCHAR(50) DEFAULT 'IT';

-- Add a constraint using CHECK
ALTER TABLE person
ADD COLUMN department VARCHAR(50)
CHECK (department IN ('IT', 'HR', 'Finance'));

-- DELETE COLUMN 
ALTER TABLE person 
DROP COLUMN Department;


-- RENAME COLUMN 
ALTER TABLE person
RENAME COLUMN name TO full_name;  

-- How to rename a  table name?
ALTER TABLE person 
RENAME TO persons ; 


-- Changing datatype or adding Default values etc
ALTER TABLE person 
ALTER COLUMN full_name 
SET DATA TYPE VARCHAR(200) ;

ALTER TABLE person 
ALTER COLUMN full_name
SET DEFAULT 'unknown' ;


