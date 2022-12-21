-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name, e.last_name,
t.title, t.from_date, t.to_date
INTO RetirementTitles
FROM Employees as e
JOIN Titles as t
ON e.emp_no = t.emp_no
WHERE birth_date >= '1952-01-01' AND birth_date < '1955-12-31'
ORDER BY e.emp_no ASC;

SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title 
FROM RetirementTitles
WHERE to_date = '9999-01-01'

SELECT * 
FROM RetirementTitles

SELECT COUNT(title) AS "Title Count", title
FROM RetirementTitles 
GROUP BY title
ORDER BY "Title Count" DESC;

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, 
d.from_date, d.to_date, 
t.title
INTO mentorship_eligible
FROM employees as e
JOIN dept_emp as d
ON e.emp_no = d.emp_no
JOIN titles as t
ON e.emp_no = t.emp_no
WHERE d.to_date = '9999-01-01' 
AND e.birth_date >= '1965-01-01' AND e.birth_date < '1965-12-31'
ORDER BY e.emp_no;

SELECT * 
FROM mentorship_eligible
