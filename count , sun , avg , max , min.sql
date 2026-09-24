-- How to find total no. of employees?
SELECT COUNT(fname) as COUNT_EMP FROM employees;


-- Employee with Max salary
SELECT MAX(salary) as MAX_SAL FROM employees ;

SELECT fname as NAME, salary as SAL FROM employees
WHERE 
salary = (SELECT MAX(salary) FROM employees);


-- Employee with Min salary
SELECT MIN(salary) as MIN_SAL FROM employees ; 

-- Employee with Avg salary
SELECT AVG(salary) as AVG_SAL FROM employees ; 

SELECT SUM(salary) as TOTAL_SALARY FROM employees ; 


-- No. of employees in each department
SELECT dept, COUNT(fname) FROM employees GROUP BY dept;

