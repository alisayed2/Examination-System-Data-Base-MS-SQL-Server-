-- USA Allows Instructor To Add Question 
-- In Question Pool To His Courses Only
CREATE PROCEDURE usp_addquestion
	@question_type VARCHAR(10),
	@question_body VARCHAR(max),
	@correct_answer VARCHAR(max),
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
			INSERT INTO question_pool
			VALUES(@question_type, @question_body,
			@correct_answer, @course_id)
		END
	ELSE
		PRINT 'No Access'
END

-- usp_addquestion Execution
EXEC usp_addquestion @question_type = "T/F",
	@question_body = "SQL Stands For Structure Query Language",
	@correct_answer = "T",
	@course_id = 1, @instructor_id = 1