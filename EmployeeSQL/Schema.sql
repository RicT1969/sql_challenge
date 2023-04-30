
-- Create tables and import data

----------------------------------------------------------
-- Drop table if exists
DROP TABLE IF EXISTS department CASCADE;

-- Create new table (department)
CREATE TABLE department 
(
  	dept_no VARCHAR (10) NOT NULL,
 	dept_name VARCHAR (50) NOT NULL,
	PRIMARY KEY (dept_no)
);
 
-- Verify successful data import
SELECT * FROM department;

----------------------------------------------------------
-- Drop table if exists
DROP TABLE IF EXISTS title CASCADE;

-- Create new table (title)
CREATE TABLE title (
  	title_id VARCHAR (10) NOT NULL,
 	title VARCHAR (50) NOT NULL,
	PRIMARY KEY (title_id)
);

-- Verify successful data import
SELECT * FROM title;

--------------------------------------------------------	
-- Drop table if exists
DROP TABLE IF EXISTS employee CASCADE;

ALTER DATABASE "employeesql" SET datestyle = "ISO, MDY";

-- Create new table (employee)
CREATE TABLE employee (
  	emp_no INT PRIMARY KEY,
 	emp_title_id VARCHAR (10) NOT NULL,	
    birth_date DATE NOT NULL,
	first_name VARCHAR (50)  NOT NULL,
	last_name VARCHAR (50) NOT NULL,
	sex CHAR (1) NOT NULL,
	hire_date DATE NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES title (title_id)
 );
 
-- add foreign key as emp_title_id
--  ALTER TABLE employee
--  FOREIGN KEY (emp_title_id) REFERENCES title (title_id);
 
-- Verify successful data import
SELECT * FROM employee;
	
----------------------------------------------------------
-- Drop table if exists
DROP TABLE IF EXISTS dept_emp;

-- Create new table (department employee)
CREATE TABLE dept_emp 
(
  	emp_no INT NOT NULL,
 	dept_no VARCHAR (10) NOT NULL,
	PRIMARY KEY (emp_no, dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no)											 
);

-- Verify successful data import
SELECT * FROM dept_emp;
	
----------------------------------------------------------
-- Drop table if exists
DROP TABLE IF EXISTS salary;

-- Create new table (salary)
CREATE TABLE salary 
(
  	emp_no INT NOT NULL,
 	salary decimal (12,2) NOT NULL,
	PRIMARY KEY (emp_no, salary),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

-- Verify successful data import
SELECT * FROM salary;
	

----------------------------------------------------------
DROP TABLE IF EXISTS dept_manager;
--DROP TABLE IF EXISTS dept_manager;

-- Create new table (dept_manager)
CREATE TABLE dept_manager
(
  	dept_no VARCHAR (10) NOT NULL,
 	emp_no INT NOT NULL,
	PRIMARY KEY (dept_no, emp_no),
	FOREIGN KEY (dept_no) REFERENCES department(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employee(emp_no)
);

-- Verify successful data import
SELECT * FROM dept_manager;
