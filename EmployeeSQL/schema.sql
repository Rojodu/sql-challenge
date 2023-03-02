CREATE TABLE titles (
    title_id VARCHAR(5),
    title VARCHAR(30),
    PRIMARY KEY (title_id)
);

CREATE TABLE employees (
    emp_no INTEGER,
    emp_title VARCHAR(5),
    birth_date DATE,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    sex VARCHAR(1),
    hire_date DATE,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title) REFERENCES titles(title_id)
);

CREATE TABLE departments (
    dept_no VARCHAR(4),
    dept_name VARCHAR(30),
    PRIMARY KEY (dept_no)
);

CREATE TABLE salaries (
    emp_no INTEGER,
    salary INTEGER,
	PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
    emp_no INTEGER,
    dept_no VARCHAR(4),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
	dept_no VARCHAR(4),
    emp_no INTEGER,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);