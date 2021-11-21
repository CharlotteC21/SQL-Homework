-- Create employee table - import CSV
CREATE table employees (
	employee_number INT not null primary key,
	employee_title_id INT (100) NOT NULL,
	birth_date DATE,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	sex VARCHAR (2) NOT NULL,
	hire_date DATE
	);

SELECT * from employees;

-- Create dept table - import CSV
CREATE table departments (
	department_number VARCHAR (50) NOT NULL primary key,
	dept_name VARCHAR (50) NOT NULL
	);

SELECT * FROM departments;

-- Create dept_employee table - import CSV 
CREATE table dept_employee (
	employee_number INT,
	department_number INT NOT NULL
	);

SELECT * FROM dept_employee;

-- Create dept_manager table - import CSV 
CREATE table dept_manager (
	deptartment_number INT (5) NOT NULL,
	employee_number INT
	);

SELECT * FROM dept_manager;

-- Create salaries table - import CSV 
CREATE table salaries (
	employee_number INT,
	salary INT
	);

SELECT * FROM salaries;
	
-- Create titles table - import CSV
CREATE table titles (
	title_id INT (10) NOT NULL,
	title VARCHAR (50) NOT NULL
	);

SELECT * FROM titles;