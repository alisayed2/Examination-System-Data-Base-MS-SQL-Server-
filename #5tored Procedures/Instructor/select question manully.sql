-- USP To Allows Instructor	To Select Questions 
--Manually From His Course Only
CREATE PROCEDURE usp_selectquestionmanually
	@instructor_id INT,
	@course_id INT,
	@question_id INT
As
BEGIN
	SET NOCOUNT ON

	SELECT Q.id, Q.question_type,
	Q.question_body,Q.correct_answer , Q.course_id
	FROM question_pool Q INNER JOIN courses C
	ON Q.course_id = C.id 
	INNER JOIN instructor_courses I
	ON I.course_id = C.id 
	INNER JOIN instructors
	ON I.instructor_id = instructors.id
	WHERE instructors.id = @instructor_id
	And C.id = @course_id 
	AND Q.id = @question_id
END
-- usp_selectquestionmanually execution 
EXEC usp_selectquestionmanually @instructor_id = 1,
	@course_id = 1 ,@question_id = 3