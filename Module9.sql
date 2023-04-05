Table Schema:
Employees Table:
•	emp_no INT PRIMARY KEY
•	birth_date DATE
•	first_name VARCHAR(14)
•	last_name VARCHAR(16)
•	gender ENUM('M','F')
•	hire_date DATE
Departments Table:
•	dept_no CHAR(4) PRIMARY KEY
•	dept_name VARCHAR(40)
Dept_Emp Table:
•	emp_no INT PRIMARY KEY
•	dept_no CHAR(4) PRIMARY KEY
•	from_date DATE
•	to_date DATE
Salaries Table:
•	emp_no INT PRIMARY KEY
•	salary INT
•	from_date DATE
•	to_date DATE
Titles Table:
•	emp_no INT PRIMARY KEY
•	title VARCHAR(50)
•	from_date DATE
•	to_date DATE
Data Analysis:
1.	SELECT emp_no, last_name, first_name, gender, salary FROM employees, salaries WHERE employees.emp_no = salaries.emp_no;
2.	SELECT first_name, last_name, hire_date FROM employees WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';
3.	SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name FROM dept_manager INNER JOIN departments ON dept_manager.dept_no = departments.dept_no INNER JOIN employees ON dept_manager.emp_no = employees.emp_no;
4.	SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM employees INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no INNER JOIN departments ON dept_emp.dept_no = departments.dept_no;
5.	SELECT first_name, last_name, gender FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';
6.	SELECT employees.emp_no, employees.last_name, employees.first_name FROM employees INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no INNER JOIN departments ON dept_emp.dept_no = departments.dept_no WHERE departments.dept_name = 'Sales';
7.	SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name FROM employees INNER JOIN dept_emp ON employees.emp_no = dept_emp.emp_no INNER JOIN departments ON dept_emp.dept_no = departments.dept_no WHERE departments.dept_name IN ('Sales', 'Development');
8.	SELECT last_name, COUNT(*) as frequency FROM employees GROUP BY last_name ORDER BY frequency DESC;

