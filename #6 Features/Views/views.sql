----------view display student information-----------
create view students_personal_data as
select * from students
go
select * from students_personal_data

create view instrucrors_personal_data as
select * from students
go
select * from instrucrors_personal_data

create view show_all_instrucrors_courses  as
select first_name,last_name,name  ,[description]
from instructors ,instructor_courses b,courses
where instructor_id=b.course_id
go
select * from show_all_instrucrors_courses
order by first_name;

drop view show_all_instrucrors_courses



