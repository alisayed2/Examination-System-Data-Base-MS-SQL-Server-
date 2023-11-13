USE ITIExaminationSystem
-- USP To Add A New Student
CREATE PROCEDURE usp_addstudent
	@studentFirstName VARCHAR(10),
	@studentLasstName VARCHAR(10),
	@studentPassword NVARCHAR(20),
	@studentEmail VARCHAR(30),
	@userName VARCHAR(20),
	@password NVARCHAR(30) 
AS
BEGIN
	if @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		INSERT INTO 
		ITIExaminationSystem.dbo.students
		VALUES (@studentFirstName,@studentLasstName,
		@studentEmail,@studentPassword
		)
	END
	ELSE
	PRINT 'The user name or password is incorrect'
END
-- usp_addstudent execution 
EXEC usp_addstudent 
	@studentFirstName = 'Ali',
	@studentLasstName =  'Sayed',
	@studentPassword = '987',
	@studentEmail = 'ali98@iti.gov',
	@userName = 'Eng_Ahmed',
	@password = '456'

-- USP To EDIT Students
CREATE PROCEDURE usp_editstudents
	@studentId int ,
	@studentFirstName VARCHAR(10),
	@studentLasstName VARCHAR(10),
	@studentPassword NVARCHAR(20),
	@studentEmail VARCHAR(30),
	@userName VARCHAR(20),
	@password NVARCHAR(30) 
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		UPDATE ITIExaminationSystem.dbo.students
		SET first_name = @studentFirstName,
			last_name = @studentLasstName,
			email = @studentEmail,
			[password] = @studentPassword
		WHERE id = @studentId
	END
	ELSE 
		PRINT 'The user name or password is incorrect'
END
-- usp_editstudents execution 
EXEC usp_editstudents 
	@studentId = '12',
	@studentFirstName = 'Alaa',
	@studentLasstName = 'Mohamed',
	@studentPassword = '234',
	@studentEmail = 'all@iti.gov' ,
	@userName ='Eng_Ahmed' ,
	@password = '456'

-- USP To Dlete Student
CREATE PROCEDURE usp_deletestudent
	@id int,
	@userName VARCHAR(20),
	@password NVARCHAR(30)
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		DELETE FROM ITIExaminationSystem.dbo.students
		WHERE id = @id
	END
	ELSE 
		PRINT 'The user name or password is incorrect'
END
-- usp_deletestudent execution 
EXEC usp_deletestudent 
	@id = 12,
	@userName = 'Eng_Ahmed',
	@password = '456'