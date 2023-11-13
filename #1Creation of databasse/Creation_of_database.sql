USE master
-- Creation Of ITI Examination System
-- Database With Specific File Group
-- And Log File
CREATE DATABASE ITIExaminationSystem
ON PRIMARY 
  ( 
    NAME='MyDB_Primary',
    FILENAME=
       'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MyDB_Prm.mdf',
    SIZE=8MB,
    MAXSIZE=20MB,
    FILEGROWTH=5MB
	),
FILEGROUP MyDB_FG1
  (
	NAME = 'MyDB_FG1_Dat1',
    FILENAME =
       'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MyDB_FG1_1.ndf',
    SIZE = 1MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB
	),
  ( 
	NAME = 'MyDB_FG1_Dat2',
    FILENAME =
       'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MyDB_FG1_2.ndf',
    SIZE = 1MB,
    MAXSIZE=10MB,
    FILEGROWTH=1MB
	)

LOG ON
  ( 
	NAME='MyDB_log',
    FILENAME =
       'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\DATA\MyDB.ldf',
    SIZE=1MB,
    MAXSIZE=10MB,
    FILEGROWTH=100%
	);


