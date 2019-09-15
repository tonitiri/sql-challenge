-- Reading all imported files
select * from salaries
select * from department_employees
select * from department_managers
select * from departments
select * from employees
select * from titles

--List the following details of each employee: employee number, last name, first name, gender, and salary.
SELECT employees.emp_no,
  employees.last_name,
  employees.first_name,
  employees.gender,
  salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

--List employees who were hired in 1986
SELECT *
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department with the following information: department number, department name, 
--the manager's employee number, last name, first name, and start and end employment dates.
SELECT
   department_managers.dept_no,
   departments.dept_name,
   department_managers.emp_no,
   employees.last_name,
   employees.first_name,
   department_managers.from_date,
   department_managers.to_date

FROM
   department_managers
	LEFT JOIN departments ON department_managers.dept_no = departments.dept_no
		LEFT JOIN employees ON department_managers.emp_no = employees.emp_no;




	

   


