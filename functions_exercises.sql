USE employees;

select count(*) AS 'Count', gender
FROM employees
WHERE (first_name = 'irena' OR first_name = 'vidya' OR first_name = 'maya')
GROUP BY gender;

select concat(first_name, ' ', last_name) AS 'Full Name'
FROM employees
WHERE last_name LIKE 'e%' OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name LIKE 'e%' AND last_name LIKE '%e';

SELECT *, datediff(now(), hire_date) AS 'DaysWorking'
FROM employees
WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND birth_date LIKE '%-12-25'
ORDER BY birth_date, hire_date DESC;

SELECT first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name;

SELECT count(*) AS 'repeats', first_name, last_name
FROM employees
WHERE last_name LIKE '%q%' AND last_name NOT LIKE '%qu%'
GROUP BY first_name, last_name
ORDER BY repeats DESC;