USE ITIExaminationSystem

-- Insertion to students table
INSERT INTO students (first_name,last_name,email,[password])
VALUES('Ali','Sayed','ali@iti.gov','123456'),
('Ahmed','Eid','ahmed@iti.gov','13579'),
('Ebtisam','Gomaa','ebtisam@iti.gov','2468')

INSERT INTO Instructors (first_name,last_name,email,[password])
VALUES ('Mrihan','Mohamed','mrihan@iti.gov','hamza'),
('Mohamed','Abosehly','abosehly@iti.gov','789')

INSERT INTO branches ([name])
VALUES ('Minia'),('Sohag'),
('Alexanderia'),('aswan')

INSERT INTO intake ([name])
VALUES ('intake 42'),('intake 43'),
('intake 44'),('intake 45')

INSERT INTO tracks ([name])
VALUES ('Full stack web developer using .NET'),
('Full stack web developer using MEARN'),
('Full stack web developer using PHP'),
('Full stack web developer using Python')

INSERT INTO courses ([name],[description],max_degree,min_degree)
VALUES ('HTML','Learn about web page structure','100','65'),
('CSS','Learn about web page Style','100','65'),
('Network','Learn about computer networks','100','65'),
('OOP','programming paradigm','100','65')

INSERT INTO exam ([type],start_time,end_time,degree,instructor_id)
VALUES ('MCQ',2023-11-23-12-00,2023-11-23-13-00,20,1),
('T|F',2023-11-12-12-00,2023-11-12-12-00,20,2),
('MCQ',2023-10-16-09-00,2023-10-16-10-00,30,1),
('Text',2023-11-23-12-00,2023-11-23-13-00,20,2)

INSERT INTO
class (branche_id,student_id,instructor_id,track_id,intake_id)
VALUES (1,5,1,5,4),(1,10,1,5,4),(1,11,2,5,4)

INSERT INTO instructor_courses(instructor_id,course_id)
VALUES (1,1),(2,3)




