USE ITIExaminationSystem
-- Create the tables of database
-- Create students table
CREATE TABLE students 
(
	id int IDENTITY(1, 1) PRIMARY KEY,
	first_name VARCHAR(10) NOT NULL ,
	last_name VARCHAR(10),
	email VARCHAR(30) UNIQUE NOT NULL,
	[password] VARCHAR(20) NOT NULL,
)


-- Create instructors table 
create table instructors
(
 id int IDENTITY(1,1) PRIMARY KEY,
 first_name VARCHAR(10) NOT NULL,
 last_name VARCHAR(10),
 email VARCHAR(30) UNIQUE ,
 [password] VARCHAR(20) 
)


-- Create branches table
CREATE TABLE branches 
(
	id int IDENTITY(1,1) PRIMARY KEY,
	[name] VArCHAR(20)
)

-- Create intake table
CREATE TABLE intake
(
	id int IDENTITY(1, 1) PRIMARY KEY,
	[name] VARCHAR(10) NOT NULL
)

-- Create trackes table
CREATE TABLE tracks
(
	id int IDENTITY PRIMARY KEY,
	track_name VARCHAR(20)
)

-- Create courses table  
CREATE TABLE courses 
(
	id int IDENTITY(1,1) PRIMARY KEY,
	[name] VARCHAR(15) NOT NULL ,
	[description] VARCHAR(max),
	max_degree float NOT NULL,
	min_degree float NOT NULL,
)

-- Create exam table
CREATE TAble exam 
(
	id int IDENTITY(1,1) PRIMARY KEY,
	[type] VARCHAR(10) NOT NULL,
	start_time DATETIME NOT NULL,
	end_time DATETIME NOT NULL,
	total_time AS end_time -  start_time,
	degree FLOAT NOT NULL,
	instructor_id int FOREIGN KEY 
	REFERENCES instructors(id)
)

-- Create question pool table 
CREATE TAble question_pool
(
	id int IDENTITY(1,1) PRIMARY KEY,
	question_type VARCHAR(10) ,
	question_body VARCHAR(max),
	correct_answer VARCHAR(max),
	course_id int FOREIGN KEY 
	REFERENCES courses(id)
)

-- Create exam question table
CREATE TAble exam_question 
(
	question_id int
	PRIMARY KEY REFERENCES question_pool(id),
	exam_id int FOREIGN KEY REFERENCES exam(id)
)

-- Create student exam table
CREATE TAble student_exam
(
	student_id int,
	exam_id int,
	student_answer varchar(max),
	student_score float 
	CONSTRAINT student_exam_pk PRIMARY KEY(student_id,exam_id),
	CONSTRAINT student_id_fk FOREIGN KEY(student_id) references students(id),
	CONSTRAINT exam_id_fk FOREIGN KEY(exam_id) references exam(id)
);


-- Create class table
CREATE TABLE class 
(
	branche_id int FOREIGN KEY REFERENCES branches(id),
	student_id int FOREIGN KEY REFERENCES students(id),
	intake_id int FOREIGN KEY REFERENCES intake(id),
	track_id int FOREIGN KEY REFERENCES tracks(id),
	instructor_id int FOREIGN KEY REFERENCES instructors(id),
	CONSTRAINT class_PK PRIMARY KEY (branche_id,student_id)
)

-- Create instructor_courses table
CREATE TABLE instructor_courses 
(
	instructor_id int FOREIGN KEY REFERENCES instructors(id),
	course_id int FOREIGN KEY REFERENCES courses(id),
	CONSTRAINT instructor_courses_PK PRIMARY KEY (instructor_id)
)
