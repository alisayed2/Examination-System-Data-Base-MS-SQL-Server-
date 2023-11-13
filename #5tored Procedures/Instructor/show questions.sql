-- USP To Show To Instructor His Courses Questions Only
CREATE PROCEDURE usp_showmyquestions 
	@instructor_id INT
As
BEGIN
	SELECT Q.id, Q.question_type, Q.question_body,
	Q.correct_answer , Q.course_id
	FROM question_pool Q INNER JOIN courses C
	ON Q.course_id = C.id 
	INNER JOIN instructor_courses I
	ON I.course_id = C.id 
	INNER JOIN instructors
	ON I.instructor_id = instructors.id
	WHERE instructors.id = @instructor_id
END

-- usp_showmyquestions execution 
EXEC	usp_showmyquestions @instructor_id = 1