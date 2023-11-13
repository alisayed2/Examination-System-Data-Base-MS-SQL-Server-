USE ITIExaminationSystem
-- USP To Add A New Instructor
CREATE PROCEDURE usp_addinstructor
	@instructorFirstName VARCHAR(10),
	@instructorLasstName VARCHAR(10),
	@instructorPassword NVARCHAR(20),
	@instructorEmail VARCHAR(30),
	@userName VARCHAR(20),
	@password NVARCHAR(30) 
AS
BEGIN
	if @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		INSERT INTO 
		ITIExaminationSystem.dbo.instructors 
		VALUES (@instructorFirstName,@instructorLasstName,
		@instructorEmail,@instructorPassword
		)
	END
	ELSE
	PRINT 'The user name or password is incorrect'
END
-- usp_addinstructor execution 
EXEC usp_addinstructor 
	@instructorFirstName = 'Mariam',
	@instructorLasstName =  'Mohamed',
	@instructorPassword = '123',
	@instructorEmail = 'mariam56@iti.gov',
	@userName = 'Eng_Ahmed',
	@password = '456'

-- USP To EDIT Instructors
CREATE PROCEDURE usp_editinstructors
	@instructorId int ,
	@instructorFirstName VARCHAR(10),
	@instructorLasstName VARCHAR(10),
	@instructorPassword NVARCHAR(20),
	@instructorEmail VARCHAR(30),
	@userName VARCHAR(20),
	@password NVARCHAR(30) 
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		UPDATE ITIExaminationSystem.dbo.instructors
		SET first_name = @instructorFirstName,
			last_name = @instructorLasstName,
			email = @instructorEmail,
			[password] = @instructorPassword
		WHERE id = @instructorId
	END
	ELSE 
		PRINT 'The user name or password is incorrect'
END
-- usp_editinstructors execution 
EXEC usp_editinstructors 
	@instructorId = '3',
	@instructorFirstName = 'Mahmoud',
	@instructorLasstName = 'Abd Elkhaleq',
	@instructorPassword = '321',
	@instructorEmail = 'mahmoud13@iti.gov' ,
	@userName ='Eng_Ahmed' ,
	@password = '456'

-- USP To Dlete instructor
CREATE PROCEDURE usp_deleteinstructor
	@id int,
	@userName VARCHAR(20),
	@password NVARCHAR(30)
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		DELETE FROM ITIExaminationSystem.dbo.instructors
		WHERE id = @id
	END
	ELSE 
		PRINT 'The user name or password is incorrect'
END
-- usp_deleteinstructor execution 
EXEC usp_deleteinstructor 
	@id = 3,
	@userName = 'Eng_Ahmed',
	@password = '456'