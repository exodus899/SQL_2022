 /*Create a stored procedure in the employees database named Get_Employee_Info that returns a list of all employees, their department name, and current title. 
(HINT: You will need to use a join in the stored procedure)*/

DELIMITER ||
USE employees ||
CREATE PROCEDURE Get_Employee_Info()
BEGIN
SELECT employees.emp_no, departments.dept_name, titles.title from employees
Join titles on employees.emp_no 
Join departments on employees.emp_no; 
END ||
DELIMITER ;

/*Duplicate the stored procedure you created in step 1, name it Get_X_Employees and add an input parameter. 
The input parameter should be an integer and be used in a limit clause to return a specific amount of records. 
The fields should be the same as step 1.*/

DELIMITER ||
USE employees ||
CREATE PROCEDURE Get_X_Employees(IN number int)
BEGIN
SELECT employees.emp_no, departments.dept_name, titles.title from employees
Join titles on employees.emp_no 
Join departments on employees.emp_no
LIMIT number;
END ||
DELIMITER ;

/*Create a stored procedure with an output parameter that gets the number of currently held titles in the titles table (this is when the to_date field equals 9999-01-01). 
The value should only be return via the output parameter.*/

DELIMITER ||
CREATE PROCEDURE Get_Total_Titles(OUT total int)
BEGIN
SELECT COUNT(title)
FROM titles
WHERE to_date = '9999-01-01'
INTO total;
END ||
DELIMITER ;
CALL Get_Total_Titles(@test);
SELECT @test;