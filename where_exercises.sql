USE employees;


select * FROM employees WHERE first_name IN ('irena', 'vidya', 'maya');
select * FROM employees WHERE last_name LIKE 'e%';
select * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31';
SELECT * FROM employees WHERE birth_date LIKE '%-12-25';
SELECT * FROM employees WHERE last_name LIKE '%q%';