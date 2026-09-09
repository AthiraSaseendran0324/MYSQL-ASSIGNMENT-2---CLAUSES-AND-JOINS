USE employee;

SELECT DISTINCT salary
FROM employees;

SELECT age AS Employee_Age,
       salary AS Employee_Salary
FROM employees;

SELECT *
FROM employees
WHERE salary > 50000
AND hire_date < '2016-01-01';

SELECT *
FROM employees
WHERE designation IS NULL;

UPDATE employees
SET designation = 'Data Scientist'
WHERE employee_id = 5004
LIMIT 1;

SELECT *
FROM employees
WHERE employee_id = 5004;

SELECT *
FROM employees
ORDER BY department_id ASC, salary DESC;

SELECT *
FROM employees
WHERE hire_date >= '2018-01-01'
  AND hire_date < '2019-01-01'
ORDER BY hire_date ASC
LIMIT 5;

SELECT SUM(salary) AS Total_Finance_Salary
FROM employees
WHERE department_id = 7;

SELECT MIN(age) AS Minimum_Age
FROM employees;

SELECT MIN(age) AS Minimum_Age
FROM employees;

SELECT location_id,
       MAX(salary) AS Maximum_Salary
FROM employees
GROUP BY location_id;
SELECT
    CASE location_id
        WHEN 1 THEN 'Chennai'
        WHEN 2 THEN 'Bangalore'
        WHEN 3 THEN 'Hyderabad'
        WHEN 4 THEN 'Pune'
    END AS Location_Name,
    MAX(salary) AS Maximum_Salary
FROM employees
GROUP BY location_id;

SELECT designation,
       AVG(salary) AS Average_Salary
FROM employees
WHERE designation LIKE '%Analyst%'
GROUP BY designation;

SELECT department_id,
       COUNT(*) AS Employee_Count
FROM employees
GROUP BY department_id
HAVING COUNT(*) < 3;

SELECT location_id,
       AVG(age) AS Average_Age
FROM employees
WHERE gender = 'F'
GROUP BY location_id
HAVING AVG(age) < 30;

SELECT employees.employee_name,
       employees.designation,
       departments.department_name
FROM employees
INNER JOIN departments
ON employees.department_id = departments.department_id;

SELECT departments.department_name,
       employees.employee_name
FROM departments
LEFT JOIN employees
ON departments.department_id = employees.department_id;

SELECT employees.employee_name,
       location.location
FROM employees
RIGHT JOIN location
ON employees.location_id = location.location_id;