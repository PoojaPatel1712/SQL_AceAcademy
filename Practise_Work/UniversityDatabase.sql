-- Create the University database
CREATE DATABASE University;

-- Use the University database
USE University;

-- Create the Students table
CREATE TABLE Students (
    student_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    date_of_birth DATE,
    email VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255)
);

-- Create the Departments table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(50),
    department_code VARCHAR(10)
);

-- Create the Instructors table
CREATE TABLE Instructors (
    instructor_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone_number VARCHAR(15)
);

-- Create the Courses table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(100),
    course_code VARCHAR(20),
    credit_hours INT,
    department_id INT,
    instructor_id INT,
    FOREIGN KEY (department_id) REFERENCES Departments(department_id),
    FOREIGN KEY (instructor_id) REFERENCES Instructors(instructor_id)
);

-- Create the Enrollments table
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    enrollment_date DATE,
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (course_id) REFERENCES Courses(course_id)
);

-- Create the Grades table
CREATE TABLE Grades (
    grade_id INT PRIMARY KEY,
    enrollment_id INT,
    grade VARCHAR(2), -- Assuming grades like 'A', 'B', 'C', etc.
    FOREIGN KEY (enrollment_id) REFERENCES Enrollments(enrollment_id)
);

-- Inserting Values in the database
-- Insert values into the Students table 
INSERT INTO Students (student_id, first_name, last_name, date_of_birth, email, phone_number, address)
VALUES
    (1, 'John', 'Doe', '1990-05-15', 'john.doe@email.com', '+1234567890', '123 Main St'),
    (2, 'Jane', 'Smith', '1992-09-20', 'jane.smith@email.com', '+9876543210', '456 Elm St'),
    (3, 'Bob', 'Johnson', '1991-03-10', 'bob.johnson@email.com', '+1122334455', '789 Oak St'),
    (4, 'Priya', 'Verma', '1995-07-22', 'priya.verma@email.com', '+911234567890', '456 Gandhi Rd'),
    (5, 'Rahul', 'Sharma', '1993-12-10', 'rahul.sharma@email.com', '+919876543210', '789 Tagore St'),
    (6, 'Amit', 'Patel', '1994-04-05', 'amit.patel@email.com', '+917788990011', '123 Nehru Ave'),
    (7, 'Deepak', 'Kumar', '1996-03-18', 'deepak.kumar@email.com', '+919876543210', '234 Reddy Rd'),
    (8, 'Neha', 'Singh', '1997-11-05', 'neha.singh@email.com', '+918765432109', '567 Sengupta St'),
    (9, 'Sarika', 'Jha', '1995-08-25', 'sarika.jha@email.com', '+917788990011', '890 Banerjee Ave'),
    (10, 'Alok', 'Mishra', '1998-06-12', 'alok.mishra@email.com', '+919988877766', '345 Dey Rd'),
	(11, 'Rajesh', 'Gupta', '1997-02-25', 'rajesh.gupta@email.com', '+916666666666', '678 Prasad Rd'),
    (12, 'Kavita', 'Shah', '1999-08-15', 'kavita.shah@email.com', '+912345678901', '789 Joshi St'),
    (13, 'Amita', 'Rao', '1996-05-20', 'amita.rao@email.com', '+911111111111', '567 Reddy Rd'),
    (14, 'Ravi', 'Verma', '1998-12-01', 'ravi.verma@email.com', '+917777777777', '123 Sharma Ave'),
    (15, 'Preeti', 'Singh', '1997-09-08', 'preeti.singh@email.com', '+918989898989', '890 Reddy St');

-- Insert values into the Departments table 
INSERT INTO Departments (department_id, department_name, department_code)
VALUES
    (1, 'Computer Science', 'CS'),
    (2, 'Mathematics', 'MATH'),
    (3, 'History', 'HIST'),
    (4, 'Electrical Engineering', 'EE'),
    (5, 'Economics', 'ECON'),
    (6, 'English Literature', 'ENGL'),
    (7, 'Mechanical Engineering', 'MECH'),
    (8, 'Chemistry', 'CHEM'),
    (9, 'Philosophy', 'PHIL'),
    (10, 'Commerce', 'COM'),
	(11, 'Civil Engineering', 'CE'),
    (12, 'Physics', 'PHYS'),
    (13, 'Political Science', 'POLSC'),
    (14, 'Management', 'MGMT'),
    (15, 'Psychology', 'PSYCH');

-- Insert values into the Instructors table 
INSERT INTO Instructors (instructor_id, first_name, last_name, email, phone_number)
VALUES
    (1, 'Professor', 'Smith', 'prof.smith@email.com', '+5555555555'),
    (2, 'Professor', 'Johnson', 'prof.johnson@email.com', '+6666666666'),
    (3, 'Professor', 'Gupta', 'prof.gupta@email.com', '+918888888888'),
    (4, 'Professor', 'Chatterjee', 'prof.chatterjee@email.com', '+919999999999'),
    (5, 'Professor', 'Chopra', 'prof.chopra@email.com', '+918888888888'),
    (6, 'Professor', 'Malhotra', 'prof.malhotra@email.com', '+919999999999'),
    (7, 'Professor', 'Banerjee', 'prof.banerjee@email.com', '+919988877755'),
	(8, 'Professor', 'Kulkarni', 'prof.kulkarni@email.com', '+918888888888'),
    (9, 'Professor', 'Mukherjee', 'prof.mukherjee@email.com', '+919999999999'),
    (10, 'Professor', 'Sinha', 'prof.sinha@email.com', '+919988877755'),
    (11, 'Professor', 'Rajput', 'prof.rajput@email.com', '+917777777700');

-- Insert values into the Courses table 
INSERT INTO Courses (course_id, course_name, course_code, credit_hours, department_id, instructor_id)
VALUES
    (101, 'Introduction to Programming', 'CS101', 3, 1, 1),
    (201, 'Calculus I', 'MATH201', 4, 2, 2),
    (301, 'World History', 'HIST301', 3, 3, 2),
    (401, 'Power Systems', 'EE401', 4, 4, 3),
    (501, 'Macroeconomics', 'ECON501', 3, 5, 4),
    (601, 'Indian Literature', 'ENGL601', 3, 6, 4),
    (701, 'Thermodynamics', 'MECH701', 4, 7, 5),
    (801, 'Organic Chemistry', 'CHEM801', 3, 8, 6),
    (901, 'Ethics in Philosophy', 'PHIL901', 3, 9, 7),
    (1001, 'Financial Accounting', 'COM1001', 3, 10, 5),
	(1101, 'Structural Engineering', 'CE1101', 4, 11, 8),
    (1201, 'Quantum Mechanics', 'PHYS1201', 4, 12, 9),
    (1301, 'International Relations', 'POLSC1301', 3, 13, 10),
    (1401, 'Marketing Management', 'MGMT1401', 3, 14, 11),
    (1501, 'Clinical Psychology', 'PSYCH1501', 3, 15, 9);

-- Insert values into the Enrollments table
INSERT INTO Enrollments (enrollment_id, student_id, course_id, enrollment_date)
VALUES
    (1001, 1, 101, '2023-09-01'),
    (1002, 2, 201, '2023-09-02'),
    (1003, 3, 301, '2023-09-03'),
    (1004, 4, 401, '2023-09-04'),
    (1005, 5, 501, '2023-09-05'),
    (1006, 6, 601, '2023-09-06'),
    (1007, 7, 701, '2023-09-07'),
    (1008, 8, 801, '2023-09-08'),
    (1009, 9, 901, '2023-09-09'),
    (1010, 10, 1001, '2023-09-10'),
	(1011, 11, 1101, '2023-09-11'),
    (1012, 12, 1201, '2023-09-12'),
    (1013, 13, 1301, '2023-09-13'),
    (1014, 14, 1401, '2023-09-14'),
    (1015, 15, 1501, '2023-09-15');

-- Insert values into the Grades table 
INSERT INTO Grades (grade_id, enrollment_id, grade)
VALUES
    (5001, 1001, 'A'),
    (5002, 1002, 'B'),
    (5003, 1003, 'C'),
    (5004, 1004, 'B+'),
    (5005, 1005, 'A-'),
    (5006, 1006, 'B'),
    (5007, 1007, 'B-'),
    (5008, 1008, 'A+'),
    (5009, 1009, 'A'),
    (5010, 1010, 'B+'),
	(5011, 1011, 'B-'),
    (5012, 1012, 'A+'),
    (5013, 1013, 'A'),
    (5014, 1014, 'B+'),
    (5015, 1015, 'A-');


