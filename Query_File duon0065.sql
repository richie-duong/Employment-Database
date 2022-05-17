-- FileName: Query_File duon0065.sql
-- Description: Script for queries for Assignment 02
-- CST8215 LAB Section 343
-- Author (Student Number): Richard Duong (041042896) & Donna Bactol (041020182)
-- Professor: Siju Philip
-- Term: 2021 Fall Semester


-- METADATA Query
SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE
TABLE_NAME = 'department_t' OR
TABLE_NAME = 'district_t' OR
TABLE_NAME = 'employee_t' OR
TABLE_NAME = 'job_t' OR
TABLE_NAME = 'person_t' OR
TABLE_NAME = 'province_t' OR
TABLE_NAME = 'store_t';



-- Insert new applicant into Person_T
INSERT INTO Person_T( Person_name, Person_age, Person_employed, Person_phone )
VALUES ( 'Tony Stark', 35, false, 7704520086 );



-- Use SELECT and WHERE to search for applicants that are not yet employed.
SELECT person_name FROM Person_T WHERE person_employed = false



-- Writing JOIN statements

-- Combine Employee_T and Person_T to see more personal information on the employee
SELECT * FROM Employee_T
LEFT JOIN Person_T ON Employee_T.person_name = Person_T.person_name


-- Combine Employee_T and Job_T to see what positions are not filled
SELECT * FROM Employee_T
RIGHT JOIN Job_T ON Employee_T.job_id = Job_T.job_id



-- Creating a UNION (List All Current Employees and Applicants who are not yet employed)
SELECT person_name
FROM Employee_T
	UNION
SELECT person_name
FROM Person_T;


-- Writing Subqueries
-- Listing employees whose wages are less than the a manager's wages ($25)
SELECT person_name FROM Employee_T
WHERE job_id < (SELECT Job_id FROM Job_T WHERE Job_wage = 25);

-- Listing employees who are working under the Merivale store
SELECT emp_ID, person_name FROM employee_T 
WHERE emp_ID IN (SELECT emp_ID FROM employee_T WHERE store_ID = 'Mer01')



-- eof: Query_File.sql 
