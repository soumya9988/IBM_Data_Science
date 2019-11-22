-- Query 1: Retrieve all employees whose address is in Elgin,IL
SELECT * FROM Employees WHERE Address LIKE '%Elgin%';

--Query 2: Retrieve all employees who were born during the 1970's
SELECT * FROM Employees WHERE
b_date LIKE '197%';

-- Query 3: Retrieve all employees in department 5 whose salary is between 60000 and 70000 .
SELECT * FROM Employees WHERE 
salary BETWEEN 60000.00 AND 70000.00;

-- Query 4A: Retrieve a list of employees ordered by department ID.
SELECT * FROM Employees ORDER BY dep_id;

-- Query 4B: Retrieve a list of employees ordered in descending order by 
-- department ID and within each department ordered alphabetically in descending order by last name.
SELECT * FROM Employees ORDER BY dep_id DESC, l_name DESC;

-- Query 5A: For each department ID retrieve the number of employees in the department.
SELECT dep_id, count(*) as number_of_employees FROM Employees GROUP BY dep_id 
ORDER BY number_of_employees;

-- Query 5B: For each department retrieve the number of employees in the department, 
-- and the average employees salary in the department.
SELECT dep_id, count(*) as number_of_employees, AVG(salary) as average_salary
FROM Employees GROUP BY dep_id;

-- Query 5C: Label the computed columns in the result set of Query 5B as “NUM_EMPLOYEES” 
-- and “AVG_SALARY”.
SELECT dep_id, count(*) as NUM_EMPLOYEES, AVG(salary) as AVG_SALARY
FROM Employees GROUP BY dep_id;

-- Query 5D: In Query 5C order the result set by Average Salary.
SELECT dep_id, count(*) as NUM_EMPLOYEES, AVG(salary) as AVG_SALARY
FROM Employees GROUP BY dep_id ORDER BY AVG_SALARY;

-- Query 5E: In Query 5D limit the result to departments with fewer than 4 employees.
SELECT dep_id, count(*) as NUM_EMPLOYEES, AVG(salary) as AVG_SALARY
FROM Employees 
GROUP BY dep_id HAVING COUNT(dep_id) < 4  
ORDER BY AVG_SALARY ;


-- BONUS Query 6: Similar to 4B but instead of department ID use department name. 
--Retrieve a list of employees ordered by department name, and within each department ordered alphabetically 
-- in descending order by last name.
SELECT * FROM departments;
SELECT * FROM employees;
SELECT dep.dep_name, emp.f_name, emp.l_name 
FROM departments  AS dep JOIN Employees as emp
ON dep.dept_id_dep = emp.dep_id 
ORDER BY dep.dep_name, emp.f_name, emp.l_name DESC;






