

CREATE TABLE departments (
	dept_no VARCHAR,
	dept_name VARCHAR
);

SELECT * FROM departments;

CREATE TABLE dept_emp (
	emp_no VARCHAR,
	dept_no VARCHAR
);

SELECT * FROM dept_emp;

CREATE TABLE dept_manager (
	dept_no VARCHAR, 
	emp_no VARCHAR
	
);

SELECT * FROM dept_manager;

CREATE TABLE employees(
	emp_no VARCHAR,
	emp_title VARCHAR,
	birth_date DATE,
	first_name TEXT,
	last_name TEXT,
	sex TEXT,
	hire_date DATE
);

SELECT * FROM employees;

CREATE TABLE salaries(
	emp_no VARCHAR,
	salary INT
);

SELECT * FROM salaries;

CREATE TABLE titles(
	title_id VARCHAR,
	title VARCHAR
);

SELECT * FROM titles;

