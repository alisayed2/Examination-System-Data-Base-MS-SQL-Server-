USE ITIExaminationSystem
-- USP To Add Assign Instructor To Course
ALTER PROCEDURE usp_assigninsturctortocourse
	@instructorId INT,
	@courseId INT ,
	@userName VARCHAR (20),
	@password NVARCHAR(30)
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		INSERT INTO dbo.instructor_courses
		VALUES(@instructorId,@courseId)
	END
	ELSE 
	PRINT 'The user name or password is incorrect'
END
-- usp_assigninsturctortocourse execution 
EXEC usp_assigninsturctortocourse 
	@instructorId = 2,
	@courseId = 2,
	@userName = 'Eng_Ahmed',
	@password = '456'

-- USP To  Editing Instructors Courses
ALTER PROCEDURE usp_editinginstructorscourses
	@oldInstructorId INT,
	@oldCourseId INT,
	@newInstructorId INT,
	@newCourseId INT,
	@userName VARCHAR (20),
	@password NVARCHAR(30)
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		UPDATE dbo.instructor_courses
		SET instructor_id = @newInstructorId,
		course_id = @newCourseId
		WHERE instructor_id = @oldInstructorId 
		and course_id = @oldCourseId
	END
	ELSE 
	PRINT 'The user name or password is incorrect'
END
-- usp_editinginstructorscourses execution 
EXEC usp_editinginstructorscourses 
	@oldInstructorId = 2,
	@oldCourseId = 3,
	@newInstructorId = 1,
	@newCourseId = 3,
	@userName = 'Eng_Ahmed',
	@password = '456'

-- USP To Add Unassign Instructor From Course
Create PROCEDURE usp_unassigninsturctorfromcourse
	@instructorId INT,
	@courseId INT ,
	@userName VARCHAR (20),
	@password NVARCHAR(30)
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		DELETE FROM dbo.instructor_courses
		WHERE instructor_id = @instructorId
		AND course_id = @courseId
	END
	ELSE 
	PRINT 'The user name or password is incorrect'
END
-- usp_unassigninsturctorfromcourse execution 
EXEC usp_unassigninsturctorfromcourse 
	@instructorId = 1,
	@courseId = 3,
	@userName = 'Eng_Ahmed',
	@password = '456'


