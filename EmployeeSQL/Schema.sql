--Schema:

CREATE TABLE departments(
	dept_no VARCHAR(30) NOT NULL,
	dept_name VARCHAR(255) NOT NULL,
	PRIMARY KEY (dept_no)
);


CREATE TABLE dept_emp (
	emp_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees.emp_no,
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES department.dept_no,
	PRIMARY KEY (emp_no, dept_no)
);


CREATE TABLE dept_manager(
	dept_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES department.dept_no,
	emp_no VARCHAR(30) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees.emp.no,
	PRIMARY KEY (dept_no, emp_no)
);


CREATE TABLE employees (
	emp_no VARCHAR(30) NOT NULL,
	emp_title VARCHAR(255) NOT NULL,
	FOREIGN KEY (emp_title) REFERENCES titles.title_id,
	birth_date VARCHAR(30) NOT NULL,
	first_name VARCHAR(255) NOT NULL,
	last_name VARCHAR(255) NOT NULL,
	sex VARCHAR(30) NOT NULL,
	hire_date VARCHAR(30) NOT NULL,
	PRIMARY KEY (emp_no)
);


CREATE TABLE salaries (
	emp_no VARCHAR(30), 
	FOREIGN KEY (emp_no) REFERENCES employee.emp_no,
	salary INT
);	


CREATE TABLE titles(
	title_id VARCHAR(30) NOT NULL,
	title VARCHAR(255) NOT NULL,
	PRIMARY KEY (title_id)
);


select * from departments
select * from dept_emp
select * from dept_manager
select * from employees
select * from salaries
select * from titles



