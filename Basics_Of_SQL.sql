# Here we use hash for comment in MySQL

SELECT "Hello World!";

SHOW Databases;

Create Database LearningSQL; 

Use LearningSQL;

SHOW Tables;

Create TABLE Student (
id Bigint NOT NULL AUTO_INCREMENT,
name VARCHAR(255) NOT NULL,
address text,
PRIMARY KEY(id)
);

# To get Table Attribute Details like Not Null, Auto_Increment etc.
DESCRIBE Student;

# Insert data in 'Student' Table
Insert into Student (name, address) values("Lipi", "Hyderabad");
Insert into Student (name, address) values("Vijaya", "Siddipet");
Insert into Student (name, address) values("Sai", "Asif Nagar");
Insert into Student (name, address) values("Narayana", "Vidya Nagar");
Insert into Student (name, address) values("VD", "New Delhi");
Insert into Student (name, address) values("Varun", "BB Nagar");
Insert into Student (name, address) values("Varun", "Malakpet");
Insert into Student (name, address) values("VD", null);
Insert into Student (name, address) values("Sunil", "BB Nagar");

Select * from Student;

Select Count(*) from Student;

Select * from Student WHERE name = 'Varun' AND address = 'BB Nagar';

# Sorting in ASC and DESC
Select * from Student ORDER BY name DESC;
Select * from Student ORDER BY name ASC;

# DISTINCT Unique values
SELECT DISTINCT name from Student;

# NOT NULL Filter
SELECT * from Student where `address` is NOT NULL;

# NULL Filter
SELECT * from Student where `address` is NULL;

# Updating Existing Record or Row
INSERT into  Student (name, address) Values('Kay', NULL);
UPDATE Student set `address` = 'Palvancha' where id = 10;

# DELETE Student details with id = 9
Delete from Student where id = 9;

# Limit 
Select * from Student ORDER BY name ASC Limit 2;

# Like
SELECT * from Student where name like "V_%";
SELECT * from Student where name like "V_";
SELECT * from Student where name like "V____";
SELECT * from Student where name like "__j___";
SELECT * from Student where name like "%_i";
SELECT * from Student where name like "%a%";

# IN
SELECT * from Student where address in ('Hyderabad', 'Asif Nagar', 'Siddipet', 'Vidya Nagar');

# ----------------------------------------------------------------------------------------------------------

# Table-02 Employees with their Salaries
Create Table `EmployeeSalary` (
`id` BIGINT NOT NULL AUTO_INCREMENT,
`employee_name` VARCHAR(255) NOT NULL,
`salary` DECIMAL(10,2) NOT NULL,
PRIMARY KEY(id)
);

DESCRIBE `EmployeeSalary`;

SELECT * from `EmployeeSalary`;

INSERT into `EmployeeSalary` (employee_name, salary) values('Lipi' , 10000);
INSERT into `EmployeeSalary` (employee_name, salary) values('Vinay' , 15000);
INSERT into `EmployeeSalary` (employee_name, salary) values('Vijaya' , 20000);
INSERT into `EmployeeSalary` (employee_name, salary) values('Narayana' , 50000);

# MIN, MAX, AVG
SELECT MIN(salary) from `EmployeeSalary`;
SELECT * FROM `EmployeeSalary` WHERE salary = (SELECT MIN(salary) from `EmployeeSalary`);

SELECT MAX(salary) from `EmployeeSalary`;
SELECT * FROM `EmployeeSalary` WHERE salary = (SELECT MAX(salary) from `EmployeeSalary`);

SELECT AVG(salary) from `EmployeeSalary`;

# Find the second highest salary
SELECT * FROM `EmployeeSalary`
WHERE salary = (
    SELECT MAX(salary)
    FROM EmployeeSalary
    WHERE salary < (
        SELECT MAX(salary) FROM EmployeeSalary
    )
);


# BETWEEN Range Salary
SELECT * FROM `EmployeeSalary` WHERE salary BETWEEN 900 AND 30000;









