-- USA Allows Instructor To Edit Question 
-- In Question Pool In His Courses Only
CREATE PROCEDURE usp_editquestion
	@question_type VARCHAR(10),
	@question_body VARCHAR(max),
	@correct_answer VARCHAR(max),
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
			UPDATE question_pool
			SET question_type = @question_type , 
			question_body =  @question_body,
			correct_answer = @correct_answer
			WHERE course_id = @course_id
		END
	ELSE
		PRINT 'No Access'
END
-- usp_editquestion Execution
EXEC usp_editquestion  @question_type = "T/F",
	@question_body = "SQL Stands For Structure Query Language",
	@correct_answer = "T", @course_id = 1, 
	@instructor_id = 1 ,@question_id = 2