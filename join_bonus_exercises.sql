SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Historic Average Manager Salary'
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN salaries AS s
  ON s.emp_no = e.emp_no
GROUP BY e.gender;

SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Current Average Manager Salary'
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
JOIN salaries AS s
  ON s.emp_no = e.emp_no
WHERE s.to_date > NOW()
GROUP BY e.gender;

SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Historic Average Employee Salary'
FROM employees AS e
JOIN salaries AS s
  ON s.emp_no = e.emp_no
GROUP BY e.gender;

SELECT e.gender AS 'Gender', AVG(s.salary) AS 'Current Average Employee Salary'
FROM employees AS e
JOIN salaries AS s
  ON s.emp_no = e.emp_no
WHERE s.to_date > NOW()
GROUP BY e.gender;

SELECT e.gender AS 'Gender', COUNT(e.gender) AS 'Current Manager Count'
FROM employees AS e
JOIN dept_manager AS dm
  ON dm.emp_no = e.emp_no
WHERE dm.to_date > NOW()
GROUP BY e.gender;

SELECT e.gender AS 'Gender', COUNT(e.gender) AS 'Current Engineer Count'
FROM employees AS e
JOIN titles AS t
  ON t.emp_no = e.emp_no
WHERE t.to_date > NOW()
  AND t.title = 'Engineer'
GROUP BY e.gender;