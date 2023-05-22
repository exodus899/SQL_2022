/*Create a database called Module10*/

CREATE DATABASE Module10;

/*Create the following 3 tables with the corresponding fields:
Table: Classes  Fields: Class_ID integer, Class_Name varchar(20), Class_Description varchar(50)
Table: Students Fields: Student_ID integer, Student_FName varchar(20), Student_LName varchar(30), State_Code char(2)
Table: States Fields: State_Code char(2), State_Name varchar(30)*/

USE Module10;

CREATE TABLE Classes
(	
	Class_ID int,
	Class_Name varchar(30),
    Class_Description varchar(50),
    PRIMARY KEY(Class_ID)
);

CREATE TABLE Students
(
	Student_ID int,
    Student_FName varchar(20),
    Student_LName varchar(30),
    State_Code char(2),
    PRIMARY KEY(Student_ID)
);

CREATE TABLE States
(
	State_Code char(2),
    State_Name varchar(30),
    PRIMARY KEY(State_Code)
);

/*Create a junction table named Grades with the following fields: Student_ID integer, Class_ID integer, Grade char(1).
 In the create table statement, create a foreign key relationship between the Student_ID fields in the Grades table and the Students table. 
 In the create table statement, create a foreign key relationship between the Class_ID fields in the Grades table and the Classes table.*/
 
 CREATE TABLE Grades
 (
	Student_ID int,
    Class_ID int,
    Grade char(1),
    FOREIGN KEY (Student_ID) REFERENCES Students(Student_ID),
    FOREIGN KEY (Class_ID) REFERENCES Classes(Class_ID)
    );
 
 /* Use an alter statement to add a foreign key relationship to the State_Code field in the Students table so that it relates to the States table.*/
 
 ALTER TABLE Students
 ADD FOREIGN KEY (State_Code) REFERENCES States(State_Code);
 
 /*Write a select statement with a join to create a query that includes the following fields:

Student First Name
Student Last Name
Class Name
Class Grade
State Name

*/

SELECT Students.Student_FName, Students.Student_LName, Classes.Class_Name, Grades.Grade, States.State_Name
from Grades
Join Students on Grades.Student_ID = Students.Student_ID
Join Classes on Grades.Class_ID = Classes.Class_ID
Join States on States.State_Code = Students.State_Code;

/*5. Update select statement created in question 4;
only return records where the grade is an A and the state name is Arizona, order by student last name.*/

SELECT Students.Student_FName, Students.Student_LName, Classes.Class_Name, Grades.Grade, States.State_Name
from Grades
Join Students on Grades.Student_ID = Students.Student_ID
Join Classes on Grades.Class_ID = Classes.Class_ID
Join States on States.State_Code = Students.State_Code
WHERE Grades.Grade = "A"
and States.State_Name = "Arizona"
ORDER BY Students.Student_LName;

 
 
 

