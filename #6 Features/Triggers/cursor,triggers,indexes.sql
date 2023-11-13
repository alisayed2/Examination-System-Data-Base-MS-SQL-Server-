----------------------- none clustered indexes----------------------------------
----------------index by student name---------------

create nonclustered index stud_index_byfname
on students(first_name)

----------------index by instructor name---------------
create nonclustered index  instructor_index_byfname
on instructors(first_name)

----------------index by exam type---------------
create nonclustered index exam_index_bytype
on exam(type)


--------------------------------------------------------------------------------------------------
---------------creating trigggers-----

-------prevent student table from modifying----
 create trigger prevent_stud_from_modifying
 on students
 for update,delete,insert
 declare @current_login_name varchar(max)
 set @current_login_name=substring(suser_sname(),charindex('\'suser_sname())+1,len(suser_sname()));
  declare @count int
  select @count = count (instructor.id)
  from instructors
  where instructors.fname= @current_login_name
 if count=0
 print ' not allowed for modifying' 
 rollback;

 update students
set first_name='hassan'
where id=1;
 
 -------prevent student table from modifying----
 create trigger  prevent_instructor_from_modifying
 on instructors
 instead of update,insert,delete
 as
 print 'not allowed for modifying'

update instructors
set first_name='hassan'
where id=1;
-------------------------------------------------------
------cursor------------
----  display all questions body using cursor cursor-----
declare dislay_qustionbody cursor

for select question_body
from question_pool
where question_body is not null
for read only
declare @body varchar(max),@all_questbody varchar(max)=''
open dislay_qustionbody
fetch dislay_qustionbody into @body
while @@FETCH_STATUS=0
begin
set @all_questbody=concat(@all_questbody,',',@body) 
fetch dislay_qustionbody into @body
end
select  @all_questbody
close dislay_qustionbody
deallocate dislay_qustionbody
------------------------------------------------------
----drop index------------
drop index  stud_index_byfname on students
drop index  instructor_index_byfname on instructors
drop index exam_index_bytype on exam
--------------------------------------------------------
-------drop trigger-----
 drop  trigger  prevent_instructor_from_modifying
