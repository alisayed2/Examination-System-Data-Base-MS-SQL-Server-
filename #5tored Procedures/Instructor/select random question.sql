-- USP To Allows Instructor	To Select Questions Randomly
--From His Course Only
CREATE PROCEDURE usp_selectrandomquestions 
	@instructor_id INT, @course_id INT,
	@Question_type VARCHAR(10), @number_of_questions INT
As
BEGIN
	SET NOCOUNT ON

	SELECT TOP(@number_of_questions) Q.id, Q.question_type,
	Q.question_body,Q.correct_answer , Q.course_id
	FROM question_pool Q INNER JOIN courses C
	ON Q.course_id = C.id 
	INNER JOIN instructor_courses I
	ON I.course_id = C.id 
	INNER JOIN instructors
	ON I.instructor_id = instructors.id
	WHERE instructors.id = @instructor_id
	AND Q.question_type = @Question_type
	And C.id = @course_id ORDER BY NEWID()
END
-- usp_selectrandomquestions execution 
EXEC usp_selectrandomquestions @instructor_id = 1,
	@course_id = 1 , @Question_type = "T/F",
	@number_of_questions = 2