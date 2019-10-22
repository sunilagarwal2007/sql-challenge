-- Create a Department table
CREATE TABLE department (
    dept_no VARCHAR(4) NOT NULL,
	dept_name VARCHAR(40),
	PRIMARY KEY (dept_no)
);

-- Create a Department Employee table
CREATE TABLE dept_emp (
	emp_no INT,
	dept_no VARCHAR(4) NOT NULL,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (dept_no,emp_no)
);

-- Create a Department Manager table
CREATE TABLE dept_manager (
    dept_no VARCHAR(4) NOT NULL,
	emp_no INT,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (dept_no,emp_no,from_date)
);

-- Create a Employee table
CREATE TABLE employee (
    emp_no INT NOT NULL,
	birth_date DATE,
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(10),
	hire_date DATE,
	PRIMARY KEY (emp_no)
);

-- Create a Employee salaries table
CREATE TABLE salaries (
    emp_no INT NOT NULL,
	salary INT,
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no,from_date)
);

-- Create a Title table
CREATE TABLE titles (
    emp_no INT NOT NULL,
	title VARCHAR(60),
	from_date DATE,
	to_date DATE,
	PRIMARY KEY (emp_no,from_date)
);