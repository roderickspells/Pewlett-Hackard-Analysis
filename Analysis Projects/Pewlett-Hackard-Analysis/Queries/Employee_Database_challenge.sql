-- DELIVERABLE 1
-- Find the employees that are eligible to retire
SELECT e.emp_no, e.first_name, e.last_name
FROM employees AS e;

--Step 2
SELECT ti.title, ti.from_date, ti.to_date
FROM titles AS ti;

--Combine tables from employee numbers and remove duplicates
SELECT e.emp_no, e.first_name, e.last_name, ti.title, ti.from_date, ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON e.emp_no = ti.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY emp_no ASC;

SELECT * FROM retirement_titles
--Drop TABLE retirement_titles

--Order titles by employee using distinct on to order
SELECT DISTINCT ON (emp_no) emp_no, first_name, last_name, title
INTO unique_titles
FROM retirement_titles
ORDER BY emp_no, to_date DESC;

SELECT * FROM unique_titles
--DROP TABLE unique_titles

-- Find the total number of retiring employees by title
SELECT COUNT(title),  title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(title) DESC;

SELECT * FROM retiring_titles

--DELIVERABLE 2

-- Determine mentorship eligibility 
--Retrieve relevant employee information
SELECT e.emp_no, e.first_name, e.last_name, e.birth_date
FROM employees AS e;

SELECT de.from_date, de.to_date
FROM dept_emp AS de;

SELECT ti.title
FROM titles AS ti;

SELECT DISTINCT ON (e.emp_no) 
				e.emp_no,
				e.first_name, 
				e.last_name, 
				e.birth_date, 
				de.from_date, 
				de.to_date,
				ti.title
-- Join tables using INTO to determine eligibility
INTO mentorship_eligibilty
FROM employees as e
INNER JOIN dept_emp AS de
		ON (e.emp_no = de.emp_no)
INNER JOIN titles AS ti
		ON (de.emp_no = ti.emp_no)
WHERE (e.birth_date BETWEEN '01-01-1965' AND '12-31-1965')
		AND (de.to_date = '9999-01-01')
ORDER BY e.emp_no;



