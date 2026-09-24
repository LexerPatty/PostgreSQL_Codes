-- CASE STATEMENT 

SELECT fname , salary , 
CASE 
WHEN salary >= 50000 THEN 'High'
ELSE 'Low'
END AS sal_cat
FROM 
employees;



SELECT fname, salary,
CASE
WHEN salary >= 50000 THEN 'High'
WHEN salary >= 40000 AND
salary <50000 THEN 'Mid'
ELSE 'Low'
END AS sal_cat
FROM
employees;



SELECT fname , salary ,
CASE 
WHEN salary > 0 THEN Round(Salary *.10)
END AS bonus 
FROM
employees ;

-- PROB 1
'''
Task
bonus | count
Mid 	2
High 	5
Low 	3

'''

SELECT 
CASE 
	WHEN salary > 55000 THEN 'HIGH'
	WHEN salary BETWEEN 48000 AND 55000
		THEN 'MID'
	ELSE 'LOW'
END AS sal_cat , COUNT(emp_id)
	FROM employees 
	GROUP BY sal_cat;