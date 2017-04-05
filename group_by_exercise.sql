USE employees;

SELECT title
FROM titles
GROUP BY title;

SELECT last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
GROUP BY last_name;