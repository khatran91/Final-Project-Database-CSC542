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
minor 		VARCHAR(50),
depID 		INT 		NOT NULL
);

CREATE TABLE major
(
majorID 		INT 		PRIMARY KEY		AUTO_INCREMENT,
major_name 		VARCHAR(50) 		NOT NULL,
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
(36, 'Littleton Alston', 'Fine and Performing Arts', 4),
(37, 'Erin Everett', 'Fine and Performing Arts', 4),
(38, 'Matthew Everett', 'Fine and Performing Arts', 4),
(39, 'Addie Barnhart', 'Fine and Performing Arts', 4),
(40, 'Jessica Benjamin', 'Fine and Performing Arts', 4),
(41, 'Barron Breland', 'Fine and Performing Arts', 4),
(42, 'Michael Flecky', 'Fine and Performing Arts', 4),
(43, 'Martha Harbash', 'Fine and Performing Arts', 4),
(44, 'Paul Hanna', 'Fine and Performing Arts', 4),
(45, 'Jeffrey Hause', 'Fine and Performing Arts', 4),
(46, 'Matt Hill', 'Fine and Performing Arts', 4),
(47, 'Amy Lane', 'Fine and Performing Arts', 4),
(48, 'Rachel Mindrup', 'Fine and Performing Arts', 4),
(49, 'Amy Nelson', 'Fine and Performing Arts', 4),
(50, 'Momoro Ono', 'Fine and Performing Arts', 4),
(51, 'Custis Reynolds', 'Fine and Performing Arts', 4),
(52, 'Patrick Rody', 'Fine and Performing Arts', 4),
(53, 'Robert Dornsife', 'English', 5),
(54, 'Fidel Fajardo-Acosta', 'English', 5),
(55, 'Hyoseol Ha', 'English', 5),
(56, 'Bridget Keegan', 'English', 5),
(57, 'Brooke Kowalke', 'English', 5),
(58, 'Faith Kurtyka', 'English', 5),
(59, 'Mark Latta', 'English', 5),
(60, 'Surbhi Malik', 'English', 5),
(61, 'Trey Moody', 'English', 5),
(62, 'David Mullen', 'English', 5),
(63, 'Joshue Prenosil', 'English', 5),
(64, 'Allison Serraes', 'English', 5),
(65, 'Theodore Wheeler', 'English', 5),
(66, 'Robert Whipple', 'English', 5),
(67, 'Tamora Whitney', 'English', 5),
(68, 'Greg Zacharias', 'English', 5),
(69, 'Simon Appleford', 'History', 6),
(70, 'John Calvert', 'History', 6),
(71, 'Eileen Dugan', 'History', 6),
(72, 'Scott Eastman', 'History', 6),
(73, 'Elizabeth Elliot-Meisel', 'History', 6),
(74, 'Michael Hawkins', 'History', 6),
(75, 'Andrew Hogan', 'History', 6),
(76, 'Tracy Leavelle', 'History', 6),
(77, 'Britta McEwen', 'History', 6),
(78, 'Adam Sundberg', 'History', 6),
(79, 'Ogechukwu Williams', 'History', 6),
(80, 'Colleen Baade', 'Modern Languages and Literature', 7),
(81, 'Olaf Bohlke', 'Modern Languages and Literature', 7),
(82, 'Erin Johnston', 'Modern Languages and Literature', 7),
(83, 'Jose Lemus', 'Modern Languages and Literature', 7),
(84, 'Josep McClanahan', 'Modern Languages and Literature', 7),
(85, 'Maria Bohlke', 'Modern Languages and Literature', 7),
(86, 'Kathryn Padilla', 'Modern Languages and Literature', 7),
(87, 'Leticia Herce', 'Modern Languages and Literature', 7),
(88, 'Ivelisse Stommes', 'Modern Languages and Literature', 7),
(89, 'Ryan Spangler', 'Modern Languages and Literature', 7),
(90, 'David Vanderboegh', 'Modern Languages and Literature', 7),
(91, 'Aaron Yamada', 'Modern Languages and Literature', 7),
(92, 'Jerold Abrams', 'Philosophy', 8),
(93, 'Elizabeth Cooke', 'Philosophy', 8),
(94, 'Samuel Gavin', 'Philosophy', 8),
(95, 'Kevin Graham', 'Philosophy', 8),
(96, 'Marc Johansen', 'Philosophy', 8),
(97, 'Thomas Kiefer', 'Philosophy', 8),
(98, 'John Murray', 'Philosophy', 8),
(99, 'Anne Ozar', 'Philosophy', 8),
(100, 'Jacob Rump', 'Philosophy', 8),
(101, 'Jeanne Schuler', 'Philosophy', 8),
(102, 'Amy Wendling', 'Philosophy', 8),
(103, 'Richard White', 'Philosophy', 8),
(104, 'Jinmei Yuan', 'Philosophy', 8),
(105, 'Thomas Backer', 'Theology', 9),
(106, 'Dulcinea Boesenberg', 'Theology', 9),
(107, 'Sherri Brown', 'Theology', 9),
(108, 'Gordon Brubacher', 'Theology', 9),
(109, 'Susan Calef', 'Theology', 9),
(110, 'James Carney', 'Theology', 9),
(111, 'Theodore Dedon', 'Theology', 9),
(112, 'Julia Fleming', 'Theology', 9),
(113, 'Leonard Greenspoon', 'Theology', 9),
(114, 'Ashley Hall', 'Theology', 9),
(115, 'Thomas Kelley', 'Theology', 9),
(116, 'Christophe Krall', 'Theology', 9),
(117, 'Richard Miller', 'Theology', 9),
(118, 'Peter Nguyen', 'Theology', 9),
(119, 'Nicolae Roddy', 'Theology', 9),
(120, 'Todd Salzman', 'Theology', 9),
(121, 'Ronald Simkins', 'Theology', 9),
(122, 'Zachary Smith', 'Theology', 9);


INSERT INTO student VALUES
	(1, 'John Doe', 2, 'Computer Science', NULL, 1),
(2, 'Jane Smith', 3, 'Electrical Engineering', 'Physics', 2),
(3, 'Alex Johnson', 4, 'Mechanical Engineering', 'Chemistry', 3),
(4, 'Emily Davis', 1, 'Biology', 'English Literature', 4),
(5, 'Michael Wilson', 2, 'History', 'Political Science', 5),
(6, 'Olivia Brown', 3, 'Psychology', 'Sociology', 6),
(7, 'Daniel Miller', 4, 'Economics', 'Statistics', 7),
(8, 'Sophia Davis', 1, 'Art', 'French', 8),
(9, 'Matthew Wilson', 2, 'Geology', 'Environmental Science', 9),
(10, 'Emma Taylor', 3, 'Music', 'Drama', 10),
(11, 'Isaac Turner', 1, 'Physics', NULL, 2),
(12, 'Ava White', 3, 'Chemistry', 'Biology', 4),
(13, 'Liam Parker', 3, 'Computer Science', NULL, 1),
(14, 'Zoe Foster', 4, 'Mechanical Engineering', 'Chemistry', 3),
(15, 'Logan Brown', 1, 'Computer Engineering', 'Mathematics', 1),
(16, 'Grace Hall', 3, 'Astronomy', 'Astrophysics', 2),
(17, 'Ethan Clark', 2, 'Psychiatry', 'Neuroscience', 6),
(18, 'Ryan Anderson', 1, 'Physics', NULL, 2),
(19, 'Aria Foster', 3, 'Music', 'Drama', 10),
(20, 'Carter Reed', 1, 'Biology', 'English Literature', 4),
(21, 'Avery Hayes', 2, 'History', 'Political Science', 5),
(22, 'Nora Mitchell', 3, 'Psychology', 'Sociology', 6),
(23, 'Jacob Harris', 4, 'Political Science', 'History', 5),
(24, 'Mia Thompson', 2, 'Sociology', 'Psychology', 6),
(25, 'William Turner', 3, 'Statistics', 'Economics', 7),
(26, 'Ella Martinez', 1, 'French', 'Art', 8),
(27, 'Noah Cooper', 4, 'Environmental Science', 'Geology', 9),
(28, 'Lily Wright', 2, 'Drama', 'Music', 10),
(29, 'Owen Brooks', 1, 'Computer Engineering', 'Mathematics', 1),
(30, 'Evelyn Turner', 3, 'Astronomy', 'Astrophysics', 2),
(31, 'Henry Watson', 2, 'Psychiatry', 'Neuroscience', 6),
(32, 'Sophie Turner', 2, 'Computer Science', NULL, 1),
(33, 'Catherine Baker', 2, 'Computer Science', NULL, 1),
(34, 'David Reed', 2, 'Computer Science', NULL, 1),
(35, 'Eric Bredahl', 3, 'Exercise Science', NULL, 3),
(36, 'Meghan Schlattmann', 3, 'Exercise Science', NULL, 3),
(37, 'Joan Eckerson', 3, 'Exercise Science', NULL, 3),
(38, 'Patrick Lambert', 3, 'Exercise Science', NULL, 3),
(39, 'Mitchel Magrini', 3, 'Exercise Science', NULL, 3),
(40, 'Geri Moore', 3, 'Exercise Science', NULL, 3),
(41, 'Abbey Rieber', 3, 'Exercise Science', NULL, 3),
(42, 'Jacob Siedlik', 3, 'Exercise Science', NULL, 3),
(43, 'Jennifer Yee', 3, 'Exercise Science', NULL, 3),
(44, 'Littleton Alston', 4, 'Fine Arts', NULL, 4),
(45, 'Erin Everett', 4, 'Fine Arts', NULL, 4),
(46, 'Matthew Everett', 4, 'Fine Arts', NULL, 4),
(47, 'Addie Barnhart', 4, 'Fine Arts', NULL, 4),
(48, 'Jessica Benjamin', 4, 'Fine Arts', NULL, 4),
(49, 'Barron Breland', 4, 'Fine Arts', NULL, 4),
(50, 'Alexander Myers', 4, 'Fine Arts', NULL, 4);










SELECT *
FROM student
WHERE major = 'Computer Science'
