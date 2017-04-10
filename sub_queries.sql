USE employees;

SELECT CONCAT(first_name, ' ', last_name) AS 'Name', hire_date AS 'Hire Date'
FROM employees
WHERE hire_date IN (
	SELECT hire_date
	FROM employees
	WHERE emp_no = 101010
);

SELECT title AS 'Title'
FROM titles
WHERE emp_no IN (
	SELECT emp_no
	FROM employees
	WHERE first_name = 'Aamod'
)
GROUP BY title;

SELECT CONCAT(first_name, ' ', last_name) AS 'Name', gender
FROM employees
WHERE gender = 'F'
  AND emp_no IN (
	SELECT emp_no
	FROM dept_manager
);

SELECT dept_name AS 'Department'
FROM departments
WHERE dept_no IN (
	SELECT dept_no
	FROM dept_manager
	WHERE emp_no IN (
		SELECT emp_no
		FROM employees
		WHERE gender = 'F'
	)
);