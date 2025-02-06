--create database Test

--SELECT * FROM employees;

--select emp_id, emp_name,  dept_id 
--from employees 
--where  location = 'Cairo';

--SELECT DISTINCT dept_id
--FROM employees;
Drop table students;

CREATE TABLE students (
   std_ID INT PRIMARY KEY identity(1,1),
   First_Name VARCHAR(50) NOT NULL,
   Last_Name VARCHAR(50) DEFAULT 'Unknown',
   std_address VARCHAR(100) DEFAULT 'N/A',
   City VARCHAR(50) DEFAULT 'N/A',
   Birth_Date DATE
);

insert into students (First_Name,Last_Name,std_address,City,Birth_Date)
values ('Ahmed', 'Ali', 'Downtown', 'Cairo', '1995-01-01');
  
UPDATE students
SET std_address = 'Garden City'
WHERE Last_Name = 'Ahmed';

BEGIN TRANSACTION;
delete from students
where City='Cairo';
rollback;