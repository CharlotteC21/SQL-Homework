	
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT employees.employee_number, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries
ON employees.employee_number = salaries.employee_number
;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '01/01/1986' AND hire_date <= '12/31/1986';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
CREATE VIEW depts_and_managers AS
SELECT departments.department_number, departments.dept_name, dept_manager.employee_number
FROM departments
JOIN dept_manager
ON departments.department_number = dept_manager.department_number;

SELECT * FROM depts_and_managers dam;

SELECT employees.last_name, employees.first_name, dam.department_number, dam.dept_name, dam.employee_number
FROM depts_and_managers dam
JOIN employees
ON dam.employee_number = employees.employee_number
;

-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT e.employee_number, e.last_name, e.first_name, d.dept_name
FROM departments d
JOIN dep_emp de
ON de.department_number = d.department_number
JOIN employees e
ON de.employee_number = e.employee_number
;

-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT last_name, first_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department including their employee number, last name, first name, and department name.
SELECT dam.employee_number, dam.last_name, dam.first_name, dam.dept_name
WHERE dept_name = 'Sales';

-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT e.employee_number, e.last_name, e.first_name, d.dept_name
FROM departments d
JOIN dept_employee de
ON de.department_number = d.department_number
JOIN employees e
ON de.employee_number = e.employee_number
WHERE d.dept_name = 'SALES' OR d.dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT last_name, count(last_name)
FROM employees
GROUP BY last_name
ORDER BY last_name;

-- Epilogue
SELECT * FROM employees WHERE employee_number = 499942
