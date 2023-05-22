/*Create a view named Dept_Manager_Info that queries the Dept_Manager table and joins in the employees and departments tables and includes employee first name, last name, and department name.*/
USE employees;
CREATE VIEW Dept_Manager_Info as
SELECT employees.first_name, employees.last_name, departments.dept_name
from dept_manager
join departments on dept_manager.dept_no = departments.dept_no
join employees on dept_manager.emp_no = employees.emp_no;

/*Create a new user named yogi*/
CREATE USER 'Yogi'@'localhost' IDENTIFIED BY 'yogi123';

/*Assign yogi the appropriate privileges to query the view.*/
GRANT SELECT on employees.Dept_Manager_Info TO 'Yogi'@'localhost';

/*Login as Yogi and run the following commands, show tables;  select * from Dept_Manager_Info limit 5; */
/*mysql -u Yogi -p*/
/*Yogi123*/

USE EMPLOYEES;
SHOW TABLES;
SELECT * from Dept_Manager_Info limit 5;