USE employees;

SELECT
	d.dept_name AS 'Department Name',
	CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager AS dm
  ON dm.dept_no = d.dept_no
JOIN employees AS e
  ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW();

SELECT
	d.dept_name AS 'Department Name',
	CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments AS d
JOIN dept_manager AS dm
  ON dm.dept_no = d.dept_no
JOIN employees AS e
  ON e.emp_no = dm.emp_no
WHERE dm.to_date > NOW()
  AND e.gender = 'F';
  
SELECT
	t.title AS 'Title',
	COUNT(t.title) AS 'Count'
FROM titles AS t
JOIN dept_emp AS de
  ON de.emp_no = t.emp_no
JOIN departments AS d
  ON d.dept_no = de.dept_no
WHERE d.dept_name = 'Customer Service'
  AND t.to_date > NOW()
GROUP BY title;

SELECT
	d.dept_name AS 'Department Name',
	CONCAT(e.first_name, ' ', e.last_name) AS 'Name',
	s.salary AS 'Salary'
FROM departments AS d
JOIN dept_manager AS dm
  ON dm.dept_no = d.dept_no
JOIN employees AS e
  ON e.emp_no = dm.emp_no
JOIN salaries AS s
  ON s.to_date = dm.to_date
 AND s.emp_no = dm.emp_no
WHERE dm.to_date > NOW();

SELECT
	CONCAT(e.first_name, ' ', e.last_name) AS 'Employee Name',
	d.dept_name AS 'Department Name',
	(
		SELECT CONCAT(e.first_name, ' ', e.last_name)
		FROM employees AS e
		JOIN dept_manager AS dm
		  ON dm.emp_no = e.emp_no
		WHERE dm.to_date > NOW()
		  AND d.dept_no = dm.dept_no
	) AS 'Manager Name'
FROM employees AS e
JOIN dept_emp AS de
  ON de.emp_no = e.emp_no
JOIN departments AS d
  ON d.dept_no = de.dept_no
JOIN dept_manager AS dm
  ON dm.dept_no = d.dept_no
WHERE de.to_date > NOW()
  AND dm.to_date > NOW();