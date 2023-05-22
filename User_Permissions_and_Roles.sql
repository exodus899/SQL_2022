/* Create 5 users: Aang, Katara, Sukko, Appa, Zuko with localhost as the hostname and 1234 as the password */

CREATE USER 'Ang'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'Katara'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'Sukko'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'Appa'@'localhost' IDENTIFIED BY '1234';
CREATE USER 'Zuko'@'localhost' IDENTIFIED BY '1234';

/*Grant Aang full permissions over all databases*/

GRANT ALL PRIVILEGES ON *.* TO 'Ang'@'localhost';

/*Grant Katara all permissions Employees sample database but not other databases on the system*/

GRANT ALL PRIVILEGES ON employees TO 'Katara'@'localhost';

/*Grant Sukko permission to query the employees table in the employees database and nothing else*/

GRANT SELECT ON employees.employees TO 'Sukko'@'localhost';

/*Create a role named Fire_Nation and add Zuko to the role*/

CREATE ROLE Fire_Nation;

GRANT Fire_Nation TO 'Zuko'@'localhost';

/*Grant the Fire_Nation role permissions to query the employees database and nothing else*/

GRANT SELECT on employees to Fire_Nation;
