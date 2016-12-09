USE join_test_db;

CREATE TABLE roles (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE users (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  role_id INT UNSIGNED DEFAULT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
  ('bob', 'bob@example.com', 1),
  ('joe', 'joe@example.com', 2),
  ('sally', 'sally@example.com', 3),
  ('adam', 'adam@example.com', 3),
  ('jane', 'jane@example.com', null),
  ('mike', 'mike@example.com', null);


SELECT count(*), roles.name
FROM users
RIGHT JOIN roles ON users.role_id = roles.id
GROUP BY roles.name;

USE employees;

SELECT departments.dept_name AS Department_Name, concat(employees.first_name, ' ', employees.last_name) AS Department_Manager
FROM departments
JOIN dept_manager on departments.dept_no = dept_manager.dept_no
JOIN employees on dept_manager.emp_no = employees.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND employees.gender = 'F';


SELECT titles.title as Title, count(*)
FROM titles
JOIN employees on titles.emp_no = employees.emp_no
JOIN dept_emp on employees.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no = 'd009' AND titles.to_date = '9999-01-01'
GROUP BY titles.title;


SELECT departments.dept_name AS Department_Name, concat(employees.first_name, ' ', employees.last_name) AS Department_Manager, salaries.salary
FROM departments
JOIN dept_manager on departments.dept_no = dept_manager.dept_no
JOIN employees on dept_manager.emp_no = employees.emp_no
JOIN salaries on employees.emp_no = salaries.emp_no
WHERE dept_manager.to_date = '9999-01-01' AND salaries.to_date = '9999-01-01';


SELECT concat(e.first_name, ' ', e.last_name) as employee_name,
  departments.dept_name AS department_name, concat(m.first_name, ' ', m.last_name) as manager_name
FROM employees e
JOIN dept_emp ON e.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
JOIN dept_manager ON departments.dept_no = dept_manager.dept_no
JOIN employees m ON dept_manager.emp_no = m.emp_no
WHERE dept_emp.to_date = '9999-01-01' AND dept_manager.to_date = '9999-01-01';


SELECT *
FROM employees
WHERE hire_date LIKE (SELECT hire_date
FROM employees
WHERE employees.emp_no = 101010);

SELECT titles.title, employees.first_name
FROM titles
JOIN employees ON titles.emp_no = employees.emp_no
WHERE employees.first_name = 'aamod';


SELECT concat(employees.first_name, ' ', employees.last_name)
FROM employees
WHERE employees.emp_no IN (
  SELECT dept_manager.emp_no
  FROM dept_manager
  WHERE gender = 'F'
);

SELECT departments.dept_name
from departments, employees
where employees.emp_no IN (
  SELECT dept_manager.emp_no
  FROM dept_manager
  JOIN employees ON dept_manager.emp_no = employees.emp_no
  WHERE employees.gender = 'F'
)
GROUP BY dept_name;