SHOW Databases;

Create Database `StudentsAndCourses`;

Use `StudentsAndCourses`;

SHOW Tables;

# Table - 01 (Students)
Create Table `Students` (
`id` BIGINT NOT NULL AUTO_INCREMENT,
`name` VARCHAR(255) NOT NULL,
`age` BIGINT NOT NULL,
`phone` INT NOT NULL,
PRIMARY KEY(id)
);

Alter Table `Students`
MODIFY COLUMN phone BIGINT NOT NULL;

DESCRIBE `Students`;

INSERT into `Students` (name, age, phone) VALUES ("Lipi", 27, 9100153758);
INSERT into `Students` (name, age, phone) VALUES ("Sai", 28, 9700117495);
INSERT into `Students` (name, age, phone) VALUES ("Vijaya", 50, 7093423161);
INSERT into `Students` (name, age, phone) VALUES ("Narayana", 57, 9885232952);
INSERT into `Students` (name, age, phone) VALUES ("Kavya", 20, 9784021546);

SELECT * from `Students`;

SELECT * from `Students` Order By name ASC;
SELECT * from `Students` Order By name DESC;

SELECT name, age, phone from `Students` where age < 30;

# ----------------------------------------------------------------------------------------------------------

# Table - 02 (Courses)
Create Table `Courses` (
`id` BIGINT NOT NULL AUTO_INCREMENT,
`course_name` VARCHAR(255) NOT NULL,
`price` DECIMAL(10, 2),
PRIMARY KEY(id)
);

SELECT * from `Courses`;

INSERT into `Courses` (course_name, price) VALUES('ManualTestingBatch', 4000);
INSERT into `Courses` (course_name, price) VALUES('APITestingBatch', 6000);
INSERT into `Courses` (course_name, price) VALUES('AutomationTestingBatch', 10000);

# ----------------------------------------------------------------------------------------------------------

# Table-03 (StudentCouse) with Relationship btw Students and ourses Table using Foreign Key
Create Table `StudentCourse` (
`StudentID` BIGINT NOT NULL,
`CourseID` BIGINT NOT NULL
);

SELECT * from `StudentCourse`;

INSERT into `StudentCourse` (StudentID, CourseID) VALUES (1, 1);
INSERT into `StudentCourse` (StudentID, CourseID) VALUES (2, 3);
INSERT into `StudentCourse` (StudentID, CourseID) VALUES (3, 2);
INSERT into `StudentCourse` (StudentID, CourseID) VALUES (4, 3);
INSERT into `StudentCourse` (StudentID, CourseID) VALUES (5, 2);
INSERT into `StudentCourse` (StudentID, CourseID) VALUES (1, 3);

ALTER TABLE `StudentCourse` ADD FOREIGN KEY (StudentID) REFERENCES `Students`(id);
ALTER TABLE `StudentCourse` ADD FOREIGN KEY (CourseID) REFERENCES `Courses`(id);

DESCRIBE `StudentCourse`;

SHOW CREATE TABLE `StudentCourse`;

SELECT * from `StudentCourse` where StudentID = 1;
SELECT * from `StudentCourse` where CourseID = 3;


