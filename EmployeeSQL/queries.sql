
--Queries:
--List the employee number, last name, first name, sex, and salary of each employee.
SELECT 
	e.emp_no,
	e.last_name, 
	e.first_name, 
	e.sex,
	s.salary
FROM employees as e
INNER JOIN salaries as s
ON e.emp_no=s.emp_no
ORDER BY 1;

--List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT 
	e.first_name, 
	e.last_name, 
	e.hire_date
FROM employees as e
WHERE hire_date LIKE '%1986'
ORDER BY 3;


--List the manager of each department along with their department number, 
--department name, employee number, last name, and first name.
SELECT 
	m.emp_no,
	m.dept_no,
	d.dept_name,
	e.emp_no,
	e.last_name,
	e.first_name
FROM dept_manager AS m
INNER JOIN departments AS d
ON m.dept_no=d.dept_no
INNER JOIN employees AS e
ON m.emp_no=e.emp_no;


--List the department number for each employee 
--along with that employee’s employee number, last name, first name, and department name.
CREATE VIEW department_complete_empl_info AS
SELECT
	d.dept_no,
	e.emp_no,
	e.last_name,
	e.first_name,
	dn.dept_name
FROM dept_emp AS d
INNER JOIN employees as e 
ON d.emp_no=e.emp_no
INNER JOIN departments AS dn
ON d.dept_no=dn.dept_no
ORDER BY 2;


--List first name, last name, and sex of each employee 
--whose first name is Hercules and whose last name begins with the letter B.
SELECT 
	e.first_name,
	e.last_name,
	e.sex
FROM employees AS e
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

--List each employee in the Sales department, including their employee number, last name, and first name.
SELECT *
FROM department_complete_empl_info
WHERE dept_name = 'Sales';


--List each employee in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.
SELECT *
FROM department_complete_empl_info
WHERE dept_name='Sales'
OR dept_name='Development';


--List the frequency counts, in descending order, 
--of all the employee last names (that is, how many employees share each last name).
SELECT last_name, count(last_name)
FROM employees
GROUP BY 1
ORDER BY 2 DESC;



