/*Write a command to update the birthday of the employee with emp_no 10010 to 12/25/1970.*/

update employees
set birth_date = '1970-12-25'
where emp_no = '10010';

/*Write a command to change everyone with the title 'Manager' to 'Boss'*/

update titles
set title = 'Boss'
where title = 'Manager';

/*Write a command to change the hire date of everyone with the first name George to 1999-12-31.*/

update employees
set hire_date = '1999-12-31'
where first_name = 'George';
