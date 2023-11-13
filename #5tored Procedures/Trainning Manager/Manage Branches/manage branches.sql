USE ITIExaminationSystem
-- USP To Add A New Branch
CREATE PROCEDURE usp_addbranch 
	@branchName VARCHAR(60),
	@userName VARCHAR(20),
	-- Password may be by any language
	@password NVARCHAR(30) 
AS
BEGIN
	if @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		INSERT INTO 
		ITIExaminationSystem.dbo.branches 
		VALUES (@branchName)
	END
	ELSE
	PRINT 'The user name or password is incorrect'
END
-- usp_addbranch execution 
EXEC usp_addbranch 
	@branchName = 'Assiut',
	@userName = 'Eng_Ahmed',
	@password = '456'

-- USP To EDIT Branch
CREATE PROCEDURE usp_editbranches
	@oldName VARCHAR(60),
	@newName VARCHAR(60),
	@userName VARCHAR(20),
	@password NVARCHAR(30)
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		UPDATE ITIExaminationSystem.dbo.branches
		SET [name] = @newName
		WHERE [name] = @oldName
	END
	ELSE 
		PRINT 'The user name or password is incorrect'
END
-- usp_editbranches execution 
EXEC usp_editbranches 
	@oldName = 'Sohag',
	@newName = 'Qena',
	@userName = 'Eng_Ahmed',
	@password = '456'

-- USP To Dlete Branch
CREATE PROCEDURE usp_deletebranche
	@name VARCHAR(60),
	@userName VARCHAR(20),
	@password NVARCHAR(30)
AS
BEGIN
	IF @userName = 'Eng_Ahmed'
	AND @password = '456'
	BEGIN
		DELETE FROM ITIExaminationSystem.dbo.branches
		WHERE [name] = @name
	END
	ELSE 
		PRINT 'The user name or password is incorrect'
END
-- usp_deletebranche execution 
EXEC usp_deletebranche 
	@name = 'Assiut',
	@userName = 'Eng_Ahmed',
	@password = '456'