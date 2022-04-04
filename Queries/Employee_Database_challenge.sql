-- (Deliverable 1) Create new table for retiring employees
SELECT e.emp_no, e.first_name, e.last_name, ti.title,ti.from_date,ti.to_date
INTO retirement_titles
FROM employees as e
INNER JOIN titles as ti
ON (e.emp_no = ti.emp_no)
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY emp_no;
-- Check the table

SELECT * FROM retirement_titles;
