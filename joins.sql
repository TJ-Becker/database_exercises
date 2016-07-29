SELECT users.name, email, role_id, roles.name AS role_name FROM users
JOIN roles ON users.role_id = roles.id;

SELECT CONCAT(first_name, ' ', last_name) AS full_name, departments.dept_name, departments.dept_no FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE departments.dept_no = 'd009';

SELECT dept_name, CONCAT(employees.first_name, ' ', employees.last_name) FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date LIKE '9999%';

SELECT titles.title, COUNT(*)
FROM dept_emp
JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN employees ON employees.emp_no = dept_emp.emp_no
JOIN titles ON titles.emp_no = employees.emp_no
WHERE dept_emp.to_date LIKE '9999%' AND departments.dept_name = 'Customer Service' AND titles.to_date LIKE '9999%'
GROUP BY titles.title;

SELECT dept_name, CONCAT(employees.first_name, ' ', employees.last_name) FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
WHERE dept_manager.to_date LIKE '9999%';

SELECT departments.dept_name, CONCAT(employees.first_name, ' ', employees.last_name) AS 'full_name', salaries.salary
FROM departments
JOIN dept_manager ON dept_manager.dept_no = departments.dept_no
JOIN employees ON employees.emp_no = dept_manager.emp_no
JOIN salaries ON salaries.emp_no = employees.emp_no
WHERE dept_manager.to_date LIKE '9999%' AND salaries.to_date LIKE '9999%';

SELECT CONCAT(employees.first_name, ' ', employees.last_name) AS full_name, departments.dept_name, CONCAT(managers.first_name, ' ', managers.last_name) AS manager_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
JOIN dept_manager ON dept_manager.dept_no = dept_emp.dept_no
JOIN employees AS managers ON managers.emp_no = dept_manager.emp_no;
