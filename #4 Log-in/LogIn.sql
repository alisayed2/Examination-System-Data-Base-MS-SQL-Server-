-- Create A Training Manger LogIn.  
CREATE LOGIN Eng_Ahmed  
WITH PASSWORD = '456';  
-- Creates a database user for the login created above.
USE ITIExaminationSystem
CREATE USER Eng_Ahmed FOR LOGIN Eng_Ahmed;  
GO

-- Create An Instructor LogIn.  
CREATE LOGIN Eng_Sarah  
WITH PASSWORD = '456';  
-- Creates a database user for the login created above.
USE ITIExaminationSystem
CREATE USER Eng_Sarah FOR LOGIN Eng_Sarah;  

-- Create A Student LogIn.  
CREATE LOGIN ALi  
WITH PASSWORD = '456';  
-- Create a database user for the login created above.
USE ITIExaminationSystem
CREATE USER ALi FOR LOGIN ALi;  