USE ITIExaminationSystem
-- USP To Add A New Track
CREATE PROCEDURE usp_addtrack
	@trackName VARCHAR(60),
	@userName VARCHAR(20),
	@password NVARCHAR(30) 
AS
BEGIN
	if @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		INSERT INTO 
		ITIExaminationSystem.dbo.tracks
		VALUES (@trackName)
	END
	ELSE
	PRINT 'The user name or password is incorrect'
END
-- usp_addtrack execution 
EXEC usp_addtrack 
	@trackName = 'DevOps',
	@userName = 'Eng_Ahmed',
	@password = '456'


-- USP To EDIT Tracks
CREATE PROCEDURE usp_edittracks
	@oldName VARCHAR(60),
	@newName VARCHAR(60),
	@userName VARCHAR(20),
	@password NVARCHAR(30)
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		UPDATE ITIExaminationSystem.dbo.tracks
		SET [name] = @newName
		WHERE [name] = @oldName
	END
	ELSE 
		PRINT 'The user name or password is incorrect'
END
-- usp_edittracks execution 
EXEC usp_edittracks 
	@oldName = 'DevOps',
	@newName = 'AWS',
	@userName = 'Eng_Ahmed',
	@password = '456'

-- USP To Dlete track
CREATE PROCEDURE usp_deletetrack
	@name VARCHAR(60),
	@userName VARCHAR(20),
	@password NVARCHAR(30)
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		DELETE FROM ITIExaminationSystem.dbo.tracks
		WHERE [name] = @name
	END
	ELSE 
		PRINT 'The user name or password is incorrect'
END
-- usp_deletetrack execution 
EXEC usp_deletetrack 
	@name = 'AWS',
	@userName = 'Eng_Ahmed',
	@password = '456'