--Creating tables for csv files
--Input the tables and csv files in the same order as below
CREATE TABLE titles (
title_id VARCHAR(30) PRIMARY KEY,
title VARCHAR(30) NOT NULL
);

CREATE TABLE departments (
dept_no VARCHAR(30) PRIMARY KEY,
dept_name VARCHAR(30) NOT NULL
);

CREATE TABLE employees (
emp_no INT(30) PRIMARY KEY NOT NULL,
emp_title_id VARCHAR(30) NOT NULL,
birth_date DATE NOT NULL,
first_name VARCHAR(30) NOT NULL,
last_name VARCHAR(30) NOT NULL,	
sex	VARCHAR NOT NULL,
hire_date DATE NOT NULL,
FOREIGN KEY(emp_title_id) REFERENCES titles(title_id)
);


CREATE TABLE salaries (
emp_no INT(30) PRIMARY KEY NOT NULL,
salary INT(30) NOT NULL,
FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
 

CREATE TABLE dept_emp (
emp_no INT NOT NULL,
dept_no VARCHAR NOT NULL,
FOREIGN KEY(dept_no) REFERENCES departments(dept_no),
FOREIGN KEY(emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
dept_no VARCHAR NOT NULL,
emp_no INT NOT NULL,
FOREIGN KEY(emp_no) REFERENCES employees(emp_no),
FOREIGN KEY(dept_no) REFERENCES departments(dept_no)
);











