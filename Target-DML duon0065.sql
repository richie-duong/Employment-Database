-- FileName: Target-DML duon0065.sql
-- Description: Script to manipulate Target database for Assignment 02
-- CST8215 LAB Section 343
-- Author (Student Number): Richard Duong (041042896) & Donna Bactol (041020182)
-- Professor: Siju Philip
-- Term: 2021 Fall Semester

-- Enter Initial Data to Tables (Richard & Donna Completed 12/10/2021)...............................................

-- Insert initial District_T data
INSERT INTO District_T( District_id, District_name ) VALUES( 'C-TC', 'Central');
INSERT INTO District_T( District_id, District_name ) VALUES( 'E-TC', 'Eastern');
INSERT INTO District_T( District_id, District_name ) VALUES( 'W-TC', 'Western');



-- Insert initial Province_T data
INSERT INTO Province_T( Province_code, Province_name ) VALUES( 'AB', 'Alberta' );
INSERT INTO Province_T( Province_code, Province_name ) VALUES( 'BC', 'British Columbia' );
INSERT INTO Province_T( Province_code, Province_name ) VALUES( 'MB', 'Manitoba' );
INSERT INTO Province_T( Province_code, Province_name ) VALUES( 'NB', 'New Brunswick' );
INSERT INTO Province_T( Province_code, Province_name ) VALUES( 'NL', 'Newfoundland & Labrador' );
INSERT INTO Province_T( Province_code, Province_name ) VALUES( 'NT', 'Northwest Territories' );
INSERT INTO Province_T( Province_code, Province_name ) VALUES( 'NS', 'Nova Scotia' );
INSERT INTO Province_T( Province_code, Province_name ) VALUES( 'NU', 'Nunavut' );
INSERT INTO Province_T( Province_code, Province_name ) VALUES( 'ON', 'Ontario' );
INSERT INTO Province_T( Province_code, Province_name ) VALUES( 'PE', 'Prince Edward Island' );
INSERT INTO Province_T( Province_code, Province_name ) VALUES( 'QC', 'Quebec' );
INSERT INTO Province_T( Province_code, Province_name ) VALUES( 'SK', 'Saskatchewan' );
INSERT INTO Province_T( Province_code, Province_name ) VALUES( 'YT', 'Yukon' );



-- Insert initial Store_T data
INSERT INTO Store_T( Store_id, District_id, Store_address, Store_city, Store_province, Store_zip ) 
VALUES( 'Mer01', 'C-TC', '1234 Merivale Road', 'Nepean', 'ON', 'K2G 123');

INSERT INTO Store_T( Store_id, District_id, Store_address, Store_city, Store_province, Store_zip ) 
VALUES( 'Ter01', 'C-TC', '5678 Teron Road', 'Kanata', 'ON', 'K2K 456');

INSERT INTO Store_T( Store_id, District_id, Store_address, Store_city, Store_province, Store_zip ) 
VALUES( 'Ken01', 'W-TC', '55 Kensington Road', 'Calgary', 'AB', 'T0H 213');

INSERT INTO Store_T( Store_id, District_id, Store_address, Store_city, Store_province, Store_zip ) 
VALUES( 'Rob01', 'W-TC', '220 Robson Avenue', 'Vancouver', 'BC', 'V6B 987');

INSERT INTO Store_T( Store_id, District_id, Store_address, Store_city, Store_province, Store_zip ) 
VALUES( 'Sea01', 'E-TC', '4126 Seaside Circle', 'Digby', 'NS', 'B0V 228');

INSERT INTO Store_T( Store_id, District_id, Store_address, Store_city, Store_province, Store_zip ) 
VALUES( 'Lau01', 'E-TC', '100 Avenue Laurier Est.', 'Montreal', 'QC', 'H1G 546');


-- Insert initial Department_T data
INSERT INTO Department_T( Dept_id, Dept_name ) VALUES( '01', 'Service');
INSERT INTO Department_T( Dept_id, Dept_name ) VALUES( '02', 'Grocery');
INSERT INTO Department_T( Dept_id, Dept_name ) VALUES( '03', 'Health & Beauty');
INSERT INTO Department_T( Dept_id, Dept_name ) VALUES( '04', 'Clothing');
INSERT INTO Department_T( Dept_id, Dept_name ) VALUES( '05', 'Electronics');
INSERT INTO Department_T( Dept_id, Dept_name ) VALUES( '06', 'Security');



-- Insert initial Job_T data
INSERT INTO Job_T( Job_id, Job_title, Job_wage, Dept_id ) VALUES( 'CAS', 'Cashier', 15, '01');
INSERT INTO Job_T( Job_id, Job_title, Job_wage, Dept_id ) VALUES( 'CSR', 'CS Rep', 17, '01');
INSERT INTO Job_T( Job_id, Job_title, Job_wage, Dept_id ) VALUES( 'MAN', 'Manager', 25, '01');
INSERT INTO Job_T( Job_id, Job_title, Job_wage, Dept_id ) VALUES( 'DEL', 'Deli', 18, '02');
INSERT INTO Job_T( Job_id, Job_title, Job_wage, Dept_id ) VALUES( 'PHA', 'Pharmacist', 35, '03');
INSERT INTO Job_T( Job_id, Job_title, Job_wage, Dept_id ) VALUES( 'KEY', 'Key Holder', 16, '04');
INSERT INTO Job_T( Job_id, Job_title, Job_wage, Dept_id ) VALUES( 'TEC', 'Tech Specialist', 19, '05');
INSERT INTO Job_T( Job_id, Job_title, Job_wage, Dept_id ) VALUES( 'SEC', 'Sec Officer', 28, '06');



-- Insert initial Person_T data
INSERT INTO Person_T( Person_name, Person_age, Person_employed, Person_phone ) 
VALUES( 'Richard Duong', 25, True, '6131231234');

INSERT INTO Person_T( Person_name, Person_age, Person_employed, Person_phone ) 
VALUES( 'Donna Bactol', 16, True, '6133332210');

INSERT INTO Person_T( Person_name, Person_age, Person_employed, Person_phone ) 
VALUES( 'Daniel Glinberg', 21, True, '6139876543');

INSERT INTO Person_T( Person_name, Person_age, Person_employed, Person_phone ) 
VALUES( 'Jessica Tan', 26, True, '6135468799');

INSERT INTO Person_T( Person_name, Person_age, Person_employed, Person_phone ) 
VALUES( 'Jacqueline Tan', 19, False, '6132938764');

INSERT INTO Person_T( Person_name, Person_age, Person_employed, Person_phone ) 
VALUES( 'Eel Antib', 99, True, '6132938764');

INSERT INTO Person_T( Person_name, Person_age, Person_employed, Person_phone ) 
VALUES( 'Bimmy Bim', 25, True, '6139227463');



-- Insert initial Employee_T data
INSERT INTO Employee_T( Emp_id, Person_name, Emp_active, Job_id, Store_id, Start_date ) 
VALUES( '100101', 'Richard Duong', True, 'MAN', 'Mer01', '2021-11-07');

INSERT INTO Employee_T( Emp_id, Person_name, Emp_active, Job_id, Store_id, Start_date ) 
VALUES( '100201', 'Donna Bactol', True, 'PHA', 'Ter01', '2021-11-16');

INSERT INTO Employee_T( Emp_id, Person_name, Emp_active, Job_id, Store_id, Start_date ) 
VALUES( '100305', 'Daniel Glinberg', True, 'TEC', 'Ken01', '2021-11-20');

INSERT INTO Employee_T( Emp_id, Person_name, Emp_active, Job_id, Store_id, Start_date ) 
VALUES( '100999', 'Jessica Tan', True, 'CSR', 'Sea01', '2021-11-01');

INSERT INTO Employee_T( Emp_id, Person_name, Emp_active, Job_id, Store_id, Start_date ) 
VALUES( '100001', 'Eel Antib', False, 'DEL', 'Lau01', '2021-11-01');

INSERT INTO Employee_T( Emp_id, Person_name, Emp_active, Job_id, Store_id, Start_date ) 
VALUES( '200055', 'Bimmy Bim', True, 'SEC', 'Mer01', '2021-11-09');



-- Update several data (below)

-- Eel Antib's age is incorrectly recorded. Change to 30 years old instead of 99
UPDATE Person_T SET person_age = 30 WHERE person_name = 'Eel Antib'

-- Donna has failed pharmaceutical training and is therefore fired. Her active status must be changed.
UPDATE Employee_T SET emp_active = false WHERE emp_id = '100201'

-- Richard did a terrible job as a manager and was therefore demoted to cashier status.
UPDATE Employee_T SET job_id = 'CAS' WHERE emp_id = '100101'




-- eof: Target-DML.sql 