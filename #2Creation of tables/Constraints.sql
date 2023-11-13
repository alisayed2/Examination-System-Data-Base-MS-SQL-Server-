-- Email constriant to check if it is a valid email for students table
ALTER TABLE students 
ADD CONSTRAINT Student_CHK_ValidEmail CHECK (email LIKE '%@%.%_')

-- Email constriant to check if it is a valid email for instructors table
ALTER TABLE instructors 
ADD CONSTRAINT  Instructor_CHK_ValidEmail CHECK (email LIKE '%@%.%_')

--  Exam degree constraint to check that exam degree  must not exceed the course Max Degree(100)
ALTER TABLE exam 
ADD CONSTRAINT  Exam_CHK_ValidDEGREE CHECK (degree < 100)

