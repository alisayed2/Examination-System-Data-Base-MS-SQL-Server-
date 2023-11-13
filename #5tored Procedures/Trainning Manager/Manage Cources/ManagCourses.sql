USE ITIExaminationSystem
-- USP To Add A New Course
CREATE PROCEDURE usp_addcourse
	@courseName VARCHAR(50),
	@courseDescription VARCHAR(MAX) = NULL,
	@maxDegree FLOAT,
	@minDegree FLOAT,
	@userName VARCHAR(20),
	@password NVARCHAR(30) 
AS
BEGIN
	if @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		INSERT INTO 
		ITIExaminationSystem.dbo.courses
		VALUES (@courseName,@courseDescription,
		@maxDegree,@minDegree
		)
	END
	ELSE
	PRINT 'The user name or password is incorrect'
END
-- usp_addcourse execution 
EXEC usp_addcourse 
	@courseName = 'JavaScript',
	@maxDegree =  100,
	@minDegree = 65,
	@userName = 'Eng_Ahmed',
	@password = '456'

-- USP To EDIT Courses
ALTER PROCEDURE usp_editCourses
	@courseId int,
	@courseName VARCHAR(50),
	@courseDescription VARCHAR(MAX) = NULL,
	@maxDegree FLOAT,
	@minDegree FLOAT,
	@userName VARCHAR(20),
	@password NVARCHAR(30) 
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		UPDATE ITIExaminationSystem.dbo.courses
		SET [name] = @courseName,
			[description] = @courseDescription,
			max_degree = @maxDegree,
			min_degree = @minDegree
		WHERE id = @courseId
	END
	ELSE 
		PRINT 'The user name or password is incorrect'
END
-- usp_editCourses execution 
EXEC usp_editCourses 
	@courseId= 5,
	@courseName = 'SQL',
	@courseDescription = 'Learn About Microsoft SQL Server',
	@maxDegree = 100,
	@minDegree = 65 ,
	@userName ='Eng_Ahmed' ,
	@password = '456'

-- USP To Dlete course
CREATE PROCEDURE usp_deletecourse
	@courseId int,
	@userName VARCHAR(20),
	@password NVARCHAR(30)
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		DELETE FROM ITIExaminationSystem.dbo.courses
		WHERE id = @courseId
	END
	ELSE 
		PRINT 'The user name or password is incorrect'
END
-- usp_deletecourse execution 
EXEC usp_deletecourse 
	@courseId = 5,
	@userName = 'Eng_Ahmed',
	@password = '456'