-- Deliverable #1:

-- Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp.emp_no,
    emp.first_name,
    emp.last_name,
    t.title,
    t.from_date,
    t.to_date
-- Create a new table using the INTO clause.
INTO retirement_titles
-- Retrieve the title, from_date, and to_date columns from the Titles table.
FROM employees as emp
-- Join both tables on the primary key.
INNER JOIN titles as t 
ON emp.emp_no = t.emp_no
-- Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. 
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
-- Then, order by the employee number.
ORDER BY emp.emp_no;

SELECT * from retirement_titles

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title
INTO unique_titles
FROM retirement_titles
WHERE to_date = '9999-01-01'
ORDER BY emp_no, from_date DESC;

SELECT * from unique_titles

-- Write another query in the Employee_Database_challenge.sql file to retrieve
-- the number of employees by their most recent job title who are about to retire.
SELECT COUNT (title) count, title
INTO retiring_titles
FROM unique_titles
GROUP BY (title)
ORDER BY count DESC;

SELECT * from retiring_titles