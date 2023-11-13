-- USA Allows Instructor To Deletee Question 
-- From Question Pool In His Courses Only
CREATE PROCEDURE usp_deletequestion
	@question_id INT,
	@course_id INT,
	@instructor_id INT
AS
BEGIN
	DECLARE @check int 
	SELECT @check = COUNT(*)
	FROM [dbo].[instructor_courses]
	WHERE course_id = @course_id 
	and 
	instructor_id = @instructor_id
	IF @check  >= 1
		BEGIN
			DELETE FROM question_pool
			WHERE id = @question_id
		END
	ELSE
		PRINT 'No Access'
END
-- usp_deletequestion Execution
EXEC usp_deletequestion @course_id = 1, 
	@instructor_id = 1 ,@question_id = 2