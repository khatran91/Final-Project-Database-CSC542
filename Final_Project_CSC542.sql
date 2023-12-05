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
dept_name		VARCHAR(50) 		NOT NULL
);

CREATE TABLE minor
(
minorID 		INT 		PRIMARY KEY		AUTO_INCREMENT,
minor_name		VARCHAR(50) 		NOT NULL,
dept_name		VARCHAR(50)		NOT NULL
);

CREATE TABLE course
(
courseID 		INT 		PRIMARY KEY   	AUTO_INCREMENT,
course_name		VARCHAR(50) 		NOT NULL,
CRN 	INT 		NOT NULL
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
(9, 'Theology', 9, 9, 'Dowling Hall'),
(10, 'Communication Studies', 10, 10, 'Hitchcock'),
(11, 'Cultural and Social Studies', 11, 11, 'Creighton Hall'),
(12, 'Political Science and International Relations', 12, 12, 'Eppley'),
(13, 'Psychological Sciences', 13, 13, 'Hixson-Lied'),
(14, 'Biology', 14, 14, 'Hixson-Lied'),
(15, 'Chemistry and Biochemistry', 15, 15, 'Rigge'),
(16, 'Mathematics', 16, 16, 'Hixson-Lied'),
(17, 'Physics', 17, 17, 'Hixson-Lied');

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
(122, 'Zachary Smith', 'Theology', 9),
(123, 'Marty Birkholt', 'Communication Studies', 10),
(124, 'Erika Dakin-Kirby', 'Communication Studies', 10),
(125, 'Mary-Ann Danielson', 'Communication Studies', 10),
(126, 'Laura Gill', 'Communication Studies', 10),
(127, 'Amanda Holman', 'Communication Studies', 10),
(128, 'James Leighter', 'Communication Studies', 10),
(129, 'Chad McBride', 'Communication Studies', 10),
(130, 'George McHendry', 'Communication Studies', 10),
(131, 'Samantha Senda-Cook', 'Communication Studies', 10),
(132, 'Sherianne Shuler', 'Communication Studies', 10),
(133, 'Sabrina Danielsen', 'Cultural and Social Studies', 11),
(134, 'Daniel DiLeo', 'Cultural and Social Studies', 11),
(135, 'Kevin Estep', 'Cultural and Social Studies', 11),
(136, 'Cathy Fox', 'Cultural and Social Studies', 11),
(137, 'Laura Heinemann', 'Cultural and Social Studies', 11),
(138, 'Dawn Irlbeck', 'Cultural and Social Studies', 11),
(139, 'Eric Meyer', 'Cultural and Social Studies', 11),
(140, 'Rebecca Murray', 'Cultural and Social Studies', 11),
(141, 'Cristina Pop', 'Cultural and Social Studies', 11),
(142, 'Alexander Roedlach', 'Cultural and Social Studies', 11),
(143, 'Susan Walsh', 'Cultural and Social Studies', 11),
(144, 'Monica White', 'Cultural and Social Studies', 11),
(145, 'Ryan Wishart', 'Cultural and Social Studies', 11),
(146, 'Terry Clark', 'Political Science and International Relations', 12),
(147, 'Scott Hendrickson', 'Political Science and International Relations', 12),
(148, 'Christian Janousek', 'Political Science and International Relations', 12),
(149, 'Maorong Jiang', 'Political Science and International Relations', 12),
(150, 'Erika Moreno', 'Political Science and International Relations', 12),
(151, 'Graham Ramsden', 'Political Science and International Relations', 12),
(152, 'Laura Roost', 'Political Science and International Relations', 12),
(153, 'Richard C. Witmer', 'Political Science and International Relations', 12),
(154, 'Amy Brack', 'Psychological Sciences', 13),
(155, 'Jill Brown', 'Psychological Sciences', 13),
(156, 'Thomas Budesheim', 'Psychological Sciences', 13),
(157, 'Joshua Fairchild', 'Psychological Sciences', 13),
(158, 'Laura Finken', 'Psychological Sciences', 13),
(159, 'Corey Guenther', 'Psychological Sciences', 13),
(160, 'Matthew Huss', 'Psychological Sciences', 13),
(161, 'Maya Khanna', 'Psychological Sciences', 13),
(162, 'Alicia Earl', 'Psychological Sciences', 13),
(163, 'Vanessa Minervini', 'Psychological Sciences', 13),
(164, 'Dustin Stairs', 'Psychological Sciences', 13),
(165, 'Amber Witherby', 'Psychological Sciences', 13),
(166, 'Marie Adomako', 'Biology', 14),
(167, 'Charles Austerberry', 'Biology', 14),
(168, 'Charles Brockhouse', 'Biology', 14),
(169, 'Theodore Burk', 'Biology', 14),
(170, 'Ann Cavanaugh', 'Biology', 14),
(171, 'Soochin Cho', 'Biology', 14),
(172, 'Alistair Cullum', 'Biology', 14),
(173, 'Carol Fassbinder-Orth', 'Biology', 14),
(174, 'Gwendalyn King', 'Biology', 14),
(175, 'Christopher Mesnard', 'Biology', 14),
(176, 'Joseph Phillips', 'Biology', 14),
(177, 'Mark Reedy', 'Biology', 14),
(178, 'Angela Rivera', 'Biology', 14),
(179, 'Gabriel Rivera', 'Biology', 14),
(180, 'John Shea', 'Biology', 14),
(181, 'Annemarie Shibata', 'Biology', 14),
(182, 'Hollie Siebler', 'Biology', 14),
(183, 'Mackenzie Taylor', 'Biology', 14),
(184, 'Mary Vinton', 'Biology', 14),
(185, 'Syed Ali', 'Chemistry and Biochemistry', 15),
(186, 'Joel Destino', 'Chemistry and Biochemistry', 15),
(187, 'Angela Devlin', 'Chemistry and Biochemistry', 15),
(188, 'Lynne Dieckman', 'Chemistry and Biochemistry', 15),
(189, 'David Dobberpuhl', 'Chemistry and Biochemistry', 15),
(190, 'James Fletcher', 'Chemistry and Biochemistry', 15),
(191, 'Josef Derek-Franke', 'Chemistry and Biochemistry', 15),
(192, 'Mark Freitag', 'Chemistry and Biochemistry', 15),
(193, 'Clifford Gee', 'Chemistry and Biochemistry', 15),
(194, 'Erin Gross', 'Chemistry and Biochemistry', 15),
(195, 'Stephen Gross', 'Chemistry and Biochemistry', 15),
(196, 'Jess Gunn', 'Chemistry and Biochemistry', 15),
(197, 'Eric Haas', 'Chemistry and Biochemistry', 15),
(198, 'HollyAnn Harris', 'Chemistry and Biochemistry', 15),
(199, 'Martin Hulce', 'Chemistry and Biochemistry', 15),
(200, 'Makenzie Long', 'Chemistry and Biochemistry', 15),
(201, 'Michael Miller', 'Chemistry and Biochemistry', 15),
(202, 'Kayode Oshin', 'Chemistry and Biochemistry', 15),
(203, 'Bradley Parsons', 'Chemistry and Biochemistry', 15),
(204, 'Peter Stone', 'Chemistry and Biochemistry', 15),
(205, 'Juliane Strauss-Soukup', 'Chemistry and Biochemistry', 15),
(206, 'Eric Villa', 'Chemistry and Biochemistry', 15),
(207, 'James Carlson', 'Mathematics', 16),
(208, 'Randall Crist', 'Mathematics', 16),
(209, 'Margaret Doig', 'Mathematics', 16),
(210, 'Joy Doll', 'Mathematics', 16),
(211, 'Alison Kleffner', 'Mathematics', 16),
(212, 'Alexander Kunin', 'Mathematics', 16),
(213, 'Jean Lilly', 'Mathematics', 16),
(214, 'Davender Malik', 'Mathematics', 16),
(215, 'Lance Nielsen', 'Mathematics', 16),
(216, 'Nathan Pennington', 'Mathematics', 16),
(217, 'Andrew Baruth', 'Physics', 17),
(218, 'Gintaras Duda', 'Physics', 17),
(219, 'Andrew Ekpenyong', 'Physics', 17),
(220, 'Jack Gabel', 'Physics', 17),
(221, 'Michael Nichols', 'Physics', 17),
(222, 'Janet Seger', 'Physics', 17),
(223, 'David Sidebottom', 'Physics', 17),
(224, 'Patricia Becerra', 'Physics', 17),
(225, 'Thomas Wong', 'Physics', 17),
(226, 'Jonathan Wrubel', 'Physics', 17);


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
(50, 'Alexander Myers', 4, 'Fine Arts', NULL, 4), 
(51, 'Livie Hiltrud', 1, 'Communication Studies', NULL, 10),
(52, 'Mayson Helene', 2, 'Communication Studies', NULL, 10),
(53, 'Miron Rene', 4, 'Biology' 'Psychological Sciences', NULL, 14),
(54, 'Asta Shaban', 4, 'Political Science and International Relations', NULL, 12),
(55, 'Joukahainen Ramakant', 1, 'Physics', NULL, 17),
(56, 'Joukahainen Ramakant', 2, 'Communication Studies', NULL, 10),
(57, 'Bhim Matthia', 3, 'Mathmatics', NULL, 16),
(58, 'Mael Ivona', 1, 'Psychological Sciences', NULL, 13),
(59, 'Gwawl Birte', 2, 'Cultural and Social Studies', NULL, 11),
(60, 'Filiz Kreskes', 1, 'Chemistry and Biochemistry', 'Mathmatics', 15),
(61, 'Fajr Kallistrate', 3, 'Biology', NULL, 14),
(62, 'Diederik Primula', 2, 'Chemistry and Biochemistry', NULL, 15),
(63, 'Wail Ilshat', 4, 'Physics', NULL, 17),
(64, 'Gamil Alberta', 1, 'Communication Studies', NULL, 10),
(65, 'Firdos Zawadi', 2, 'Chemistry and Biochemistry', NULL, 15),
(66, 'Mukhammad Theodulus', 3, 'Political Science and International Relations', NULL, 12),
(67, 'Dilbert Yentl', 1, 'Biology', NULL, 14),
(68, 'Cedric Esmail', 3, 'Psychological Sciences', NULL, 13),
(69, 'Placidus Noodin', 2, 'Physics', 'Computer Science', 17),
(70, 'Liis Elijah', 4, 'Communication Studies', NULL, 10),
(71, 'Paulus Saule', 1, 'Mathmatics', NULL, 16),
(72, 'Hyun Felicitas', 2, 'Cultural and Social Studies', NULL, 11),
(73, 'Hero Ihar', 2, 'Psychological Sciences', NULL, 13),
(74, 'Hilda Nensi', 1, 'Cultural and Social Studies', NULL, 11),
(75, 'Ashurbanipal Tifawt', 4, 'Physics', NULL, 17),
(76, 'Larissa Davis', 3, 'Fine Arts', NULL, 4),
(77, 'Ismoil Kiana', 3, 'Political Science and International Relations', NULL, 12),
(78, 'Arijana Gnevomir', 4, 'Mathmatics', 'Physics', 16),
(79, 'Frank Dorothea', 2, 'Communication Studies', NULL, 10),
(80, 'Melania Ermengard', 3, 'Physics', 'Biology', 17),
(81, 'Iudris Carrol', 1, 'Physics', "Music", 17),
(82, 'Melania Ermengard', 2, 'Psychological Sciences', NULL, 13),
(83, 'Miroslava Vernon', 3, 'Political Science and International Relations', NULL, 12),
(84, 'Lomman Nirmal', 4, 'Communication Studies', NULL, 10),
(85, 'Naji Laarni', 4, 'Cultural and Social Studies', 'Political Science and International Relations', 11),
(86, 'Bonifaz Andre', 2, 'Physics', NULL, 17),
(87, 'Hazael Fedora', 1, 'Psychological Sciences', NULL, 13),
(88, 'Suibne Ossian', 1, 'Political Science and International Relations', NULL, 12),
(89, 'Asim Susann', 3, 'Communication Studies', NULL, 10),
(90, 'Denis Sylvana', 2, 'Mathmatics', NULL, 16),
(91, 'Kerstin Corynn', 2, 'Chemistry and Biochemistry', NULL, 15),
(92, 'Walerian Noe', 1, 'Psychological Sciences', NULL, 14),
(93, 'Uchenna Mark', 2, 'Cultural and Social Studies', NULL, 11),
(94, 'Silvina Sujay', 3, 'Communication Studies', NULL, 10),
(95, 'Pravin Anastasia', 4, 'Biology', NULL, 4),
(96, 'Peni Muhammad', 4, 'Psychological Sciences', NULL, 13),
(97, 'Boyka Valentina', 2, 'Political Science and International Relations', NULL, 12),
(98, 'Suri Duda', 3, 'Communication Studies', NULL, 10),
(99, 'Philippos Vidya', 1, 'Biology', NULL, 4),
(100, 'Else Carina', 1, 'Mathmatics', 'Fine Arts', 16);

INSERT INTO major VALUES
(1, 'Elementary Education', 'Education'),
(2, 'Secondary Education', 'Education'),
(3, 'Early Childhood Education', 'Education'),
(4, 'Computer Science', 'Computer Science, Design and Journalism'),
(5, 'Creative Writing', 'Computer Science, Design and Journalism'),
(6, 'Data Science', 'Computer Science, Design and Journalism'),
(7, 'Graphic Design and Film', 'Computer Science, Design and Journalism'),
(8, 'Journalism', 'Computer Science, Design and Journalism'),
(9, 'Applied Chemistry', 'Exercise Science and Pre-Health Professions'),
(10, 'Biochemistry', 'Exercise Science and Pre-Health Professions'),
(11, 'Biology', 'Exercise Science and Pre-Health Professions'),
(12, 'Biomedical Physics', 'Exercise Science and Pre-Health Professions'),
(13, 'Chemistry', 'Exercise Science and Pre-Health Professions'),
(14, 'Theatre', 'Fine and Performing Arts'),
(15, 'Exercise Science and Pre-Health Professions Degree', 'Exercise Science and Pre-Health Professions'),
(16, 'Health Administration and Policy', 'Political Science'),
(17, 'Neuroscience', 'Exercise Science and Pre-Health Professions'),
(18, 'Physics', 'Exercise Science and Pre-Health Professions'),
(19, 'Public Health', 'Political Science'),
(20, 'Sociology', 'Political Science'),
(21, 'American Studies', 'History'),
(22, 'Applied Physics and Engineering', 'Natural Science'),
(23, 'Arts History', 'History'),
(24, 'Arts and Science - Law', 'Political Science and International Relations'),
(25, 'Catholic School Leadership', 'Theology'),
(26, 'Communication', 'Social Science'),
(27, 'Mathematics', 'Natural Science'),
(28, 'Christian Spirituality', 'Theology'),
(29, 'Classical and Near Eastern Civilizations', 'Cultural and Social Studies'),
(30, 'Classical Language', 'Modern Language and Literature'),
(31, 'Criminal Justice', 'Cultural and Social Studies'),
(32, 'Cultural Anthropology', 'Cultural and Social Studies'),
(33, 'Economics', 'Social Science'),
(34, 'English as a Second Language', 'English'),
(35, 'English Studies', 'English'),
(36, 'Environmental Science', 'Natural Science'),
(37, 'French and Francophone Studies', 'History'),
(38, 'German Studies', 'History'),
(39, 'History Studies', 'History'),
(40, 'International Relations', 'Political Science'),
(41, 'Justice and Society', 'Social Science'),
(42, 'Philosophy Studies', 'Philosophy');

INSERT INTO minor VALUES
(1, 'African American and Black Diasporic Studies', 'History'),
(2, 'African Studies', 'History'),
(3, 'Asian Studies', 'History'),
(4, 'Biology', 'Natural Science'),
(5, 'Classical and Near Eastern Civilizations', 'Cultural and Social Studies'),
(6, 'Criminal Justice', 'Cultural and Social Studies'),
(7, 'Cultural Anthropology', 'Cultural and Social Studies'),
(8, 'Dance', 'Fine and Performing Arts'),
(9, 'Digital Humanities', 'Computer Science, Design and Journalism'),
(10, 'Film Studies', 'Computer Science, Design and Journalism'),
(11, 'German Studies', 'History'),
(12, 'Global Health Equity', 'Cultural and Social Studies'),
(13, 'Health Administration and Policy', 'Political Science'),
(14, 'Justice and Peace', 'Cultural and Social Studies'),
(15, 'Latin American Studies', 'History'),
(16, 'Medical Anthropology', 'Exercise Science and Pre-Health Professions'),
(17, 'Military Science', 'Military Science'),
(18, 'Public Health', 'Cultural and Social Studies'),
(19, 'Sociology', 'Cultural and Social Studies'),
(20, 'Spanish and Hispanic Studies', 'History'),
(21, 'Studio Art', 'Fine and Performing Art'),
(22, 'Theatre', 'Fine and Performaing Art'),
(23, 'Women and Gender Studies', 'Cultural and Social Studies');

INSERT INTO course VALUES
#CompSci
(121, 'Computers and Scientific Think', '10704'), #Figure out if CRN counts for the instructor ID
(221, 'Intro to Programming', '11501'),
(222, 'Object-Oriented Programming', '11502'),
(321, 'Data Structures', '11503'),
(414, 'Algorithm Design and Analysis', '11504'),
(426, 'Data Visualization', '11505'),
(444, 'Human Computer Interaction', '11506'),
(581, 'Mobile App Development', '11507'),
(599, 'Senior Capstone', '11508'),
#Education
(102, 'Decision Making Strategies', '11111'),
(131, 'Literature For Children', '11112'),
(170, 'Diversity & Justice-Education', '11113'),
(210, 'Child & Adolescent Development', '11114'),
(315, 'World Geography', '11115'),
(442, 'Spec Methods: Teaching of Jour', '11116'),
(470, 'Poverty in America', '11117'),
(507, 'Psychology Of Learning', '11118'),
(510, 'Growth & Development', '11119'),
(692, 'Cultural Issues In Education', '11110'),
#Exercise Science
(111, 'Fund of Human Anatomy', '11120'),
(151, 'Beginning Tennis', '11121'),
(152, 'Intermediate Tennis', '11122'),
(195, 'Intro To Athletic Training', '11123'),
(240, 'Found of Fitness & Wellness', '11124'),
(306, 'Therapeutic Exercise', '11125'),
(331, 'Human Anatomy', '11126'),
(489, 'Lab Methods & Procedures', '11127'),
(492, 'Exercise Science Internship', '11128'),
(495, 'Directed Independent Study', '11129'),
#fine arts (Could only find these 2 on degreeworks)
(101, 'Scheerer Scholars in Arts Sem', '11130'),
(358, 'Business of the Arts', '11131'),

#History
(103, 'The Modern Western World', '11132'),
(106, 'The African World', '11133'),
(107, 'The Middle Eastern World', '11134'),
(272, 'Global Persp:Europe & World', '11135'),
(279, 'Medieval Encounters', '11136'),
(282, 'Reacting to the Past', '11137'), 
(316, 'Intro to Digital Humanities', '11138'),
(352, 'Puerto Rico and the U.S.', '11139'),
(367, 'The Afro-American Experience', '11140'),
(400, 'History, Lit, Envrnmntl Crisis', '11141'),
(402, 'History of Disability', '11142'),
(488, 'Global Environmental History', '11143'),
(565, ' The United States and Canada', '11144');










