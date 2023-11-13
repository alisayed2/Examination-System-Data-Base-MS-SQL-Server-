USE ITIExaminationSystem
-- USP To Add A New Intake
CREATE PROCEDURE usp_addintake
	@intakeName VARCHAR(60),
	@userName VARCHAR(20),
	-- Password may be by any language
	@password NVARCHAR(30) 
AS
BEGIN
	if @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		INSERT INTO 
		ITIExaminationSystem.dbo.intake 
		VALUES (@intakeName)
	END
	ELSE
	PRINT 'The user name or password is incorrect'
END
-- usp_addintake execution 
EXEC usp_addintake 
	@intakeName = 'intake 44',
	@userName = 'Eng_Ahmed',
	@password = '456'

-- USP To EDIT Intakes
CREATE PROCEDURE usp_editintakes
	@oldName VARCHAR(60),
	@newName VARCHAR(60),
	@userName VARCHAR(20),
	@password NVARCHAR(30)
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		UPDATE ITIExaminationSystem.dbo.intake
		SET [name] = @newName
		WHERE [name] = @oldName
	END
	ELSE 
		PRINT 'The user name or password is incorrect'
END
-- usp_editintakes execution 
EXEC usp_editintakes 
	@oldName = 'intake 42',
	@newName = 'intake 46',
	@userName = 'Eng_Ahmed',
	@password = '456'

-- USP To Dlete intake
CREATE PROCEDURE usp_deleteintake
	@name VARCHAR(60),
	@userName VARCHAR(20),
	@password NVARCHAR(30)
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		DELETE FROM ITIExaminationSystem.dbo.intake
		WHERE [name] = @name
	END
	ELSE 
		PRINT 'The user name or password is incorrect'
END
-- usp_deleteintake execution 
EXEC usp_deleteintake 
	@name = 'intake 46',
	@userName = 'Eng_Ahmed',
	@password = '456'