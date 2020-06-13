/*Data Analysis 1. employee number, last name, first name, sex, and salary*/
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
INNER JOIN salaries ON
employees.emp_no = salaries.emp_no;

/*Data Analysis 2. List first name, last name, and hire date for employees who were hired in 1986. */
SELECT first_name, last_name, hire_date 
FROM employees
WHERE hire_date BETWEEN '1986-01-01' and '1986-12-31'

/*Data Analysis 3. List the manager of each department with the 
following information: department number, department name, the manager's employee number, 
last name, first name*/
SELECT  employees.first_name, employees.last_name,  dept_manager.dept_no, dept_manager.emp_no
FROM employees
INNER JOIN dept_manager ON
dept_manager.emp_no = employees.emp_no;


/*Data Analysis 4. List the department of each employee with the following 
information: employee number, last name, first name, and department name. */
SELECT dept_emp.dept_no, employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_emp ON
dept_emp.emp_no = employees.emp_no;


/*Data Analysis 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."*/
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';


/*Data Analysis 6. List all employees in the Sales department, including their 
employee number, last name, first name, and department name.*/
SELECT dept_emp.dept_no, departments.dept_name, employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Sales'

/*Data Analysis 7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.*/
SELECT dept_emp.dept_no, departments.dept_name, employees.last_name, employees.first_name
FROM employees
INNER JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
INNER JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_name = 'Development' or departments.dept_name = 'Sales';



/*Data Analysis 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.*/
SELECT last_name,
	COUNT (last_name)
FROM
	employees
GROUP BY
	last_name;






