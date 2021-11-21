
CREATE table employees (
	employee_number INT not null primary key,
	employee_title_id INT (100) NOT NULL,
	birth_date DATE,
	first_name VARCHAR (50) NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	sex VARCHAR (2) NOT NULL,
	hire_date DATE
	);

CREATE table departments (
	department_number VARCHAR (50) NOT NULL primary key,
	dept_name VARCHAR (50) NOT NULL
	);

CREATE table dept_employee (
	employee_number INT,
	department_number INT NOT NULL
	);

CREATE table dept_manager (
	deptartment_number INT (5) NOT NULL,
	employee_number INT
	);

CREATE table salaries (
	employee_number INT,
	salary INT
	);
	
CREATE table titles (
	title_id INT (10) NOT NULL,
	title VARCHAR (50) NOT NULL
	);