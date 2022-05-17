-- FileName: Target-DDL duon0065.sql
-- Description: Script to create Target database for Assignment 02
-- CST8215 LAB Section 343
-- Author(s) (Student Number(s)): Richard Duong (041042896) & Donna Bactol (041020182)
-- Professor: Siju Philip
-- Term: 2021 Fall Semester

-- Creating tables for Target Database (Richard / Donna Completed 12/10/2021).......................................

DROP TABLE IF EXISTS Employee_T;
DROP TABLE IF EXISTS Person_T;
DROP TABLE IF EXISTS Job_T;
DROP TABLE IF EXISTS Department_T;
DROP TABLE IF EXISTS Store_T;
DROP TABLE IF EXISTS Province_T;
DROP TABLE IF EXISTS District_T;

CREATE TABLE District_T(
   District_id		CHAR( 4 ),
   District_name	VARCHAR( 8 ),
   CONSTRAINT PK_District_id PRIMARY KEY ( District_id )
);

CREATE TABLE Province_T(
   Province_code	CHAR( 2 ),
   Province_name	VARCHAR( 30 ),
   CONSTRAINT PK_Province_code PRIMARY KEY ( Province_code )
);

CREATE TABLE Store_T(
   Store_id		CHAR( 5 ),
   District_id		CHAR( 4 ),
   Store_address	VARCHAR( 30 ),
   Store_city		VARCHAR( 15 ),
   Store_province	CHAR( 2 ),
   Store_zip		CHAR ( 7 ),
   CONSTRAINT PK_Store_id PRIMARY KEY ( Store_id ),
   CONSTRAINT FK_District_id FOREIGN KEY ( District_id ) REFERENCES District_T ( District_id ),
   CONSTRAINT FK_Store_province FOREIGN KEY ( Store_province ) REFERENCES Province_T ( Province_code )
);

CREATE TABLE Department_T(
   Dept_id		CHAR( 2 ),
   Dept_name		VARCHAR( 30 ),
   CONSTRAINT PK_Dept_id PRIMARY KEY ( Dept_id )
);

CREATE TABLE Job_T(
   Job_id		CHAR( 3 ),
   Job_title		VARCHAR( 15 ) NOT NULL,
   Dept_id	 	CHAR( 2 ),
   Job_wage		DECIMAL( 4 ),
   CHECK ( Job_wage >= 15 ),
   CONSTRAINT PK_Job_id PRIMARY KEY ( Job_id ),
   CONSTRAINT FK_Dept_id FOREIGN KEY ( Dept_id ) REFERENCES Department_T ( Dept_id )
);

CREATE TABLE Person_T(
   Person_name		VARCHAR( 40 ),
   Person_age		INTEGER NOT NULL,
   Person_employed	BOOLEAN NOT NULL,
   Person_phone		CHAR( 10 ) NOT NULL,
   CHECK ( Person_age >= 15 ),
   CONSTRAINT PK_Person_name PRIMARY KEY ( Person_name )
);

CREATE TABLE Employee_T(
   Emp_id		CHAR( 6 ),
   Person_name		VARCHAR( 40 ),
   Emp_active		BOOLEAN NOT NULL,
   Job_id		CHAR( 3 ),
   Store_id		CHAR( 5 ),
   Start_date		DATE NOT NULL,
   CONSTRAINT PK_Emp_id PRIMARY KEY (Emp_id),
   CONSTRAINT FK_Person_name FOREIGN KEY ( Person_name ) REFERENCES Person_T ( Person_name ),
   CONSTRAINT FK_Job_id FOREIGN KEY ( Job_id ) REFERENCES Job_T ( Job_id ),
   CONSTRAINT FK_Store_id FOREIGN KEY ( Store_id ) REFERENCES Store_T ( Store_id )
);




-- Creating DYNAMIC VIEW
SELECT * FROM Employee_T;


-- Creating MATERIALIZED VIEW
CREATE MATERIALIZED VIEW Active_Employees
AS 
SELECT * FROM Employee_T
WHERE Emp_Active = true;





-- eof: Target-DDL.sql 