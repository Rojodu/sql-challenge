CREATE TABLE titles (
    id SERIAL
    title_id VARCHAR(5) NOT NULL,
    title VARCHAR(30),
    PRIMARY KEY (id)
);

CREATE TABLE employees (
    emp_no INTEGER NOT NULL,
    emp_title VARCHAR(5) NOT NULL,
    birth_date DATE,
    first_name VARCHAR(30),
    last_name VARCHAR(30),
    sex VARCHAR(1),
    hire_date DATE,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title) REFERENCES titles(title)
);

CREATE TABLE departments (
    id SERIAL
    dept_no VARCHAR(4) NOT NULL,
    dept_name VARCHAR(30),
    PRIMARY KEY (id)
);

CREATE TABLE salaries (
    emp_no INTEGER NOT NULL,
    salary INTEGER,
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_emp (
    emp_no INTEGER NOT NULL,
    dept_no INTEGER,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

CREATE TABLE dept_manager (
    emp_no INTEGER NOT NULL,
    dept_no INTEGER,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);