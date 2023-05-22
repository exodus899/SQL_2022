-- Create a query that returns "FirstName LastName - TItle" as a single field value for 20 employees.

USE employees;

SELECT  CONCAT(first_name, ' ', last_name, ' - ', title) as 'FirstName, LastName and Title'
FROM employees
join titles on employees.emp_no = titles.emp_no
LIMIT 20;

-- Create a query that returns 2 fields. The first should have the first letter of first name, a period, and their last name and have an alias of "Name_Abbr". 
-- The second field should be a calculation of the age they were when they started and have an alias of "Starting_Age".

SELECT  CONCAT(convert(first_name, char(1)), '. ', last_name) as Name_Abbr, format(DATEDIFF(hire_date, birth_date)/365.25, 0) as Starting_age
from employees;

-- Write a query using a group by statement that displays each Department number and the current number of employees for each department

select dept_no, count(emp_no) from dept_emp
where year(to_date) = '9999-01-01'
group by dept_no;

-- Add to the query you wrote in #3 and add a having clause to only display departments with less than 15000 members

select dept_no, count(emp_no) from dept_emp
where year(to_date) = '9999-01-01'
group by dept_no
having count(emp_no) < 15000;