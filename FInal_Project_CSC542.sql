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
(2, 'April Buschelman', 'Education', 1),
(3, 'Tim Cook', 'Education', 1),
(4, 'Beverly Doyle', 'Education', 1),
(5, 'Max Engel', 'Education', 1),
(6, 'Ronald Fussell', 'Education', 1),
(7, 'Jean Hearn', 'Education', 1),
(8, 'Richard Hobbs', 'Education', 1),
(9, 'Jiwon Kim', 'Education', 1),
(10, 'Anne Mausbach', 'Education', 1),
(11, 'Jan Powers', 'Education', 1),
(12, 'Thomas Simonds', 'Education', 1),
(13, 'Samer Al-khateeb', 'Computer Science, Design and Journalism', 2),
(14, 'Catherin Baker', 'Computer Science, Design and Journalism', 2),
(15, 'Steven Fernandes', 'Computer Science, Design and Journalism', 2),
(16, 'Tim Guthrie', 'Computer Science, Design and Journalism', 2),
(17, 'Bethany Kalk', 'Computer Science, Design and Journalism', 2),
(18, 'Brian Kokensparger', 'Computer Science, Design and Journalism', 2),
(19, 'Alexander Myers', 'Computer Science, Design and Journalism', 2),
(20, 'David Reed' , 'Computer Science, Design and Journalism', 2),
(21, 'Peggy Rupprecht', 'Computer Science, Design and Journalism', 2),
(22, 'Carol Zuegner', 'Computer Science, Design and Journalism', 2),
(23, 'Leland Barker', 'Exercise Science and Pre-Health Professions', 3),
(24, 'Eric Bredahl', 'Exercise Science and Pre-Health Professions', 3),
(25, 'Mary Conway', 'Exercise Science and Pre-Health Professions', 3),
(26, 'Meghan Schlattmann', 'Exercise Science and Pre-Health Professions', 3),
(27, 'Joan Eckerson', 'Exercise Science and Pre-Health Professions', 3),
(28, 'Kelley Hammond', 'Exercise Science and Pre-Health Professions', 3),
(29, 'Dimitrios Katsavelis', 'Exercise Science and Pre-Health Professions', 3),
(30, 'Patrick Lambert', 'Exercise Science and Pre-Health Professions', 3),
(31, 'Mitchel Magrini', 'Exercise Science and Pre-Health Professions', 3),
(32, 'Geri Moore', 'Exercise Science and Pre-Health Professions', 3),
(33, 'Abbey Rieber', 'Exercise Science and Pre-Health Professions', 3),
(34, 'Jacob Siedlik', 'Exercise Science and Pre-Health Professions', 3),
(35, 'Jennifer Yee', 'Exercise Science and Pre-Health Professions', 3),
(36, 'Littleton Alston', 'Fine and Performing Arts', 4);












SELECT *
FROM instructor

