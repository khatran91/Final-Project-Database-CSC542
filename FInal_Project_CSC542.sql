-- create the database
DROP DATABASE IF EXISTS ap;
CREATE DATABASE ap;
-- select the database
USE ap;

CREATE TABLE department
(
depID		INT 		PRIMARY KEY		AUTO_INCREMENT,
dept_name 		VARCHAR(50) 	NOT NULL,
instructorID		INT		NOT NULL,
majorID		INT 		NOT NULL,
building 		VARCHAR(50) 		NOT NULL
);

CREATE TABLE instructor
(
instructorID		INT  		PRIMARY KEY,
name 		VARCHAR(50)		NOT NULL,
dept_name 	VARCHAR(50) 	NOT NULL,
depID 		INT 		NOT NULL
);

CREATE TABLE student
(
stuID 		INT 		PRIMARY KEY 		AUTO_INCREMENT,
name 		VARCHAR(50) 		NOT NULL,
year 		INT 		NOT NULL,
major		VARCHAR(50) 		NOT NULL,
minor 		VARCHAR(50)			NOT NULL,
depID 		INT 		NOT NULL
);

CREATE TABLE major
(
majorID 		INT 		PRIMARY KEY		AUTO_INCREMENT,
classes 		VARCHAR(50) 		NOT NULL,
depID			INT 		NOT NULL
);

CREATE TABLE minor
(
minorID 		INT 		PRIMARY KEY		AUTO_INCREMENT,
classes 		VARCHAR(50) 		NOT NULL,
depID			INT 		NOT NULL
);

CREATE TABLE course
(
courseID 		INT 		PRIMARY KEY   	AUTO_INCREMENT,
courseNum 		INT 		NOT NULL,
instructorID 	INT 		NOT NULL
);

INSERT INTO department VALUES
(1, 'Education', 1, 1, 'Creighton Hall'),
(2, 'Computer Science, Design and Journalism', 2, 2, 'Hitchcock'),
(3, 'Exercise Science and Pre-Health Professions', 3, 3, 'Hixon-Lied'),
(4, 'Fine and Performing Arts', 4, 4, 'Eppley'),
(5, 'English', 5, 5, 'Creighton Hall'),
(6, 'History', 6, 6, 'Dowling Hall'),
(7, 'Modern Language and Literature', 7, 7, 'Creighton Hall'),
(8, 'Philosophy', 8, 8, 'Dowling Hall'),
(9, 'Theology', 9, 9, 'Dowling Hall');

INSERT INTO instructor VALUES
(1, 'Carin Appleget', 'Education', 1),
(2, 'April Buschelman', 'Education', 1);

SELECT *
FROM instructor

