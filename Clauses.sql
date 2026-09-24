-- CLAUSES 
"""
Where
DISTINCT → Remove duplicates
ORDER BY → Sort
LIMIT    → Restrict number of rows
LIKE     → Search patterns

"""
SELECT * FROM employees ; 


-- WHERE 
SELECT fname, email , salary from employees WHERE dept='IT';
SELECT fname, dept ,salary from employees WHERE dept ='IT' and salary>= 50000;

-- IN , NOT IN
SELECT * FROM employees WHERE (dept = 'IT' OR dept = 'HR' OR dept = 'Finance') AND salary >= 53000; 

SELECT fname , salary FROM employees WHERE dept IN ('IT', 'HR', 'Finance') AND salary >= 53000;

-- BETWEEN 
SELECT fname , salary FROM employees 
WHERE 
salary >=50000 AND salary <=65000 ;

-- Distinct 
SELECT DISTINCT dept FROM employees;

-- ORDER BY 
SELECT fname , salary FROM employees WHERE dept IN ('IT', 'HR', 'Finance') 
AND salary >= 50000 
ORDER BY salary DESC;


-- LIMIT 
SELECT fname , salary FROM employees WHERE dept IN ('IT', 'HR', 'Finance') 
AND salary >= 50000 
ORDER BY salary DESC 
LIMIT 3 ;

-- LIKE 
'''
a%     → Starts with a
%a     → Ends with a
%a%    → Contains a
Second character is 'a': LIKE '_a%'
Case-insensitive contains 'john': ILIKE '%john%
'''
SELECT fname
FROM employees
WHERE fname LIKE '%a';


