-- Eng_Ahmed Permissions As A Training Manager
-- Can Add , Edit And Delete ( Brances , Tracks
-- Intack, Students , Instructores , Courses,
-- Instructore_courses) tables
GRANT INSERT,UPDATE,DeLETE ON branches TO Eng_Ahmed;
GRANT INSERT,UPDATE,DeLETE ON tracks TO Eng_Ahmed;
GRANT INSERT,UPDATE,DeLETE ON intake TO Eng_Ahmed;
GRANT INSERT,UPDATE,DeLETE ON students TO Eng_Ahmed;
GRANT INSERT,UPDATE,DeLETE ON instructors TO Eng_Ahmed;
GRANT INSERT,UPDATE,DeLETE ON courses TO Eng_Ahmed;
GRANT INSERT,UPDATE,DeLETE ON instructor_courses TO Eng_Ahmed;

GRANT EXEC ON OBJECT :: [dbo].usp_addbranch  TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_editbranches  TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_deletebranche TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_addcourse TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_editCourses   TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_deletecourse  TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_addinstructor TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_editinstructors TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_deleteinstructor TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_assigninsturctortocourse TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_editinginstructorscourses  TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_unassigninsturctorfromcourse  TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_addintake TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_editintakes  TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_deleteintake   TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_addstudent TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_editstudents  TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_deletestudent   TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_addtrack TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_edittracks  TO Eng_Ahmed;
GRANT EXEC ON OBJECT :: [dbo].usp_deletetrack   TO Eng_Ahmed;


-- Eng_Sarah Permissions As Instructor Can Add , Edit and Delete
-- in ( exam , exam_question , question_pool) Tables , 
GRANT INSERT,UPDATE,DeLETE ON exam TO Eng_sarah;
GRANT INSERT,UPDATE,DeLETE ON exam_question TO Eng_sarah;
GRANT INSERT,UPDATE,DeLETE ON question_pool TO Eng_sarah;
REVOKE INSERT,UPDATE,DeLETE ON SCHEMA::dbo TO Eng_sarah;

-- Eng_Sarah Permissions As Instructor Can Add, Edit , Delete
-- select random question, select question manually 
-- and show questions (To His Courses Onlllly)
GRANT EXEC ON OBJECT :: [dbo].usp_addquestion TO Eng_sarah;
GRANT EXEC ON OBJECT :: [dbo].usp_editquestion TO Eng_sarah;
GRANT EXEC ON OBJECT :: [dbo].usp_deletequestion TO Eng_sarah;
GRANT EXEC ON OBJECT :: [dbo].usp_selectquestionmanually TO Eng_sarah;
GRANT EXEC ON OBJECT :: [dbo].usp_selectrandomquestions  TO Eng_sarah;
GRANT EXEC ON OBJECT :: [dbo].usp_showmyquestions  TO Eng_sarah;

