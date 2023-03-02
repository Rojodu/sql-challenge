SELECT employees.emp_no, last_name, first_name, sex, salaries.salary 
FROM employees
LEFT JOIN salaries
ON salaries.emp_no = employees.emp_no
;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31'
;

SELECT departments.dept_no, departments.dept_name, employees.emp_no, last_name, first_name, titles.title
FROM employees
LEFT JOIN titles
ON titles.title_id = employees.emp_title
LEFT JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments
ON departments.dept_no = dept_emp.dept_no
WHERE titles.title = 'Manager'
;

SELECT departments.dept_no, employees.emp_no, last_name, first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
LEFT JOIN departments
ON departments.dept_no = dept_emp.dept_no OR departments.dept_no = dept_manager.dept_no
;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'
;

SELECT employees.emp_no, last_name, first_name
FROM employees
LEFT JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
LEFT JOIN departments
ON departments.dept_no = dept_emp.dept_no OR departments.dept_no = dept_manager.dept_no
WHERE departments.dept_name = 'Sales'
;

SELECT employees.emp_no, last_name, first_name, departments.dept_name
FROM employees
LEFT JOIN dept_emp
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN dept_manager
ON dept_manager.emp_no = employees.emp_no
LEFT JOIN departments
ON departments.dept_no = dept_emp.dept_no OR departments.dept_no = dept_manager.dept_no
WHERE departments.dept_name = 'Sales' OR departments.dept_name = 'Development'
;

SELECT last_name, COUNT(last_name) AS "Frequency Count of Name"
FROM employees
GROUP BY last_name
ORDER BY "Frequency Count of Name" DESC
;