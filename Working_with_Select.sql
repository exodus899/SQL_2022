/*Write a select statement that retreives the first name, last name, and hire date fields from all employees from the employee table.*/

USE employees;

SELECT first_name, last_name, hire_date FROM employees;

-- Write a select statement that retrieves the first name, last name, and birthdate for all employees whose last name is Sethi.

SELECT first_name, last_name, birth_date FROM employees	

where last_name = "Sethi";

-- Write a select statement that retrieves the titles from titles table that start with the letter S and has a emp_no between 10017 and 10025.

SELECT title, emp_no from titles

where title like "S%"

AND emp_no BETWEEN 10017 and 10025;

-- Write a select statement that retrieves a list of the department names contained in the department table. The resulting record set should contain 9 unique department names.

SELECT distinct dept_name from departments;

-- Write a select statement that retrieves a list of employee last names from the employees table, sorts by last name from A to Z, and restricts the query to 10 records.

SELECT distinct last_name

from employees

order by last_name asc

limit 10;

Error Code: 1305. PROCEDURE employees.Get_Employee_Info does not exist
