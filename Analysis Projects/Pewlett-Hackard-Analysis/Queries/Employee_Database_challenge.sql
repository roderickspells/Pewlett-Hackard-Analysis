-- DELIVERABLE 1
--Step 1
SELECT e.emp_no, e.first_name, e.last_name
FROM employees AS e;

--Step 2
SELECT ti.title, ti.from_date, ti.to_date
FROM titles AS ti;

--Step 3, 4, 5
SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-01-01'
ORDER BY emp_no ASC;



