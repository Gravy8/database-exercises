USE employees;


select *
FROM employees
WHERE (first_name = 'irena' OR first_name = 'vidya' OR first_name = 'maya') AND gender = 'm'
ORDER BY last_name DESC, first_name DESC;

select *
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT *
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';