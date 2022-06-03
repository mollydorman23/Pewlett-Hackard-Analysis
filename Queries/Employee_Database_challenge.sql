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

-- Deliverable #2
-- create a mentorship-eligibility table that holds the current employees who were born between January 1, 1965 and December 31, 1965.

-- Retrieve the emp_no, first_name, last_name, and birth_date columns from the Employees table.
-- Retrieve the from_date and to_date columns from the Department Employee table.
-- Retrieve the title column from the Titles table.
-- Use a DISTINCT ON statement to retrieve the first occurrence of the employee number for each set of rows defined by the ON () clause.
SELECT DISTINCT ON (emp.emp_no) emp.emp_no,
    emp.first_name,
    emp.last_name,
    emp.birth_date,
    de.from_date,
    de.to_date,
    t.title
-- Create a new table using the INTO clause.
INTO mentorship_eligibility
-- Join the Employees and the Department Employee tables on the primary key.
FROM employees as emp
INNER JOIN dept_emp as de 
ON (emp.emp_no = de.emp_no)
-- Join the Employees and the Titles tables on the primary key.
INNER JOIN titles as t 
ON (emp.emp_no = t.emp_no)
-- Filter the data on the to_date column to all the current employees, 
-- then filter the data on the birth_date columns to get all the employees 
-- whose birth dates are between January 1, 1965 and December 31, 1965.  
WHERE (de.to_date = '9999-01-01') 
AND (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31') 
-- Order the table by the employee number.
ORDER BY emp_no;

SELECT * from mentorship_eligibility