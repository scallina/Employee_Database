-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (e.emp_no) e.emp_no,
e.first_name, e.last_name,
t.title, t.from_date, t.to_date
INTO EmployeesAndTitles
FROM Employees as e
JOIN Titles as t
ON e.emp_no = t.emp_no
WHERE birth_date >= '1952-01-01' AND birth_date < '1955-01-01'
ORDER BY e.emp_no ASC;

SELECT * FROM EmployeesAndTitles