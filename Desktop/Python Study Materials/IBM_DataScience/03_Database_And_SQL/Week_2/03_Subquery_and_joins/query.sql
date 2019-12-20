-- Aggregate function as sub query: Sub select expression
select * from employees where salary < ( select AVG(salary) from employees);

-- Column expression
select emp_id, f_name, l_name, salary, 
	(select AVG(salary) from employees) AS average_salary
	from employees;

-- Derived tables or table expression
select * from
	(select emp_id, f_name, l_name from employees) as emp_name; 
	
-- Full join
select * from employees, departments;

-- Accessing multiple tables using sub query
select * from employees where dep_id in 
	(select dept_id_dep from departments where loc_id = 'L0002');
	
select dept_id_dep, dep_name from departments
	where dept_id_dep in 
	(select dep_id from employees where salary > 70000 );

select emp.f_name, emp.l_name, dep.dep_name
	from employees as emp, departments as dep 
	where emp.dep_id = dep.dept_id_dep;
	
	