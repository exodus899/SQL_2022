-- Create a trigger that execute after someone adds a new row into the the departments table and log the entry into the Activity_Log table that we created in the lesson. 
-- It should add the new dept_no into the emp_no field and the new department name into the details field.

DELIMITER $$
CREATE TRIGGER row_added AFTER INSERT
ON departments for each row
begin
INSERT INTO Activity_Log(emp_no, Action_Taken, Modified_By, Modified_When, Details)
values(
    NEW.dept_no, 'New Row/Dept added', USER(), NOW(), NEW.dept_name
);
END $$
DELIMITER ;

-- Create a trigger that executes when a change is going to be made to the salaries table 
-- and stop the change if the salary entered is lower than 10,000 or higher than 500,000 and return an error message

DELIMITER $$
CREATE TRIGGER salary_range_error BEFORE UPDATE
ON salaries for each row
IF (new.salary < 10000 or new.salary > 500000) 
THEN SIGNAL SQLSTATE '10000' SET MESSAGE_TEXT = 'Min, Max Salary must be: $10,000 - $500,000'; 
END IF; $$
DELIMITER ;
