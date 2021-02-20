
/*Diplaying at least 10 sets of test data for the Employee Data table with any
random employee name, salary ranging from 10000-25000, Date hired &
department id between 1-4.*/

-- Random Test Queries to enquire employee details
Select employee_id, employee_name, job_title, manager_id, date_hired,salary, department_id from Employees_File  where employee_name ='john smith'
Select employee_id, employee_name, job_title, manager_id, date_hired,salary, department_id  from Employees_File where employee_id =90001;
Select employee_id, employee_name, job_title, manager_id, date_hired,salary, department_id  from Employees_File where job_title='CEO'
Select employee_id, employee_name, job_title, manager_id, date_hired,salary, department_id  from Employees_File where manager_id is NOT NULL;
Select employee_id, employee_name, job_title, manager_id, date_hired,salary, department_id  from Employees_File where date_hired='01/01/95'
Select employee_id, employee_name, job_title, manager_id, date_hired,salary, department_id  from Employees_File where salary=10000;
Select employee_id, employee_name, job_title, manager_id, date_hired,salary, department_id  from Employees_File;
Select employee_name,salary, date_hired,salary from Employees_File
Select employee_name,salary, date_hired,salary from Employees_File where salary between 10000 AND 25000;

/*Join employees_file and departments_file table:

Boundary testing is the process of testing between extreme ends or boundaries between partitions of the input values.
•	So these extreme ends like Start- End, Lower- Upper, Maximum-Minimum, Just Inside-Just Outside values are called boundary values and the testing is called "boundary testing".
•	The basic idea in normal boundary value testing is to select input variable values at their:
	1.	Minimum
	2.	Just above the minimum
	3.	A nominal value
	4.	Just below the maximum
	5.	Maximum
*/

/*For individual table Employee File:*/
Select * from Employees_File;
Select employee_name,salary,date_hired from Employees_File;
Select employee_name,salary,date_hired from Employees_File where salary between 10000 AND 25000;

/*For individual table Department File:*/
Select * from Departments_File;
Select department_id, department_name,location from Departments_File;
Select department_id from Departments_File where department_id between 1 AND 4 


--Here we are checking test boundaries and in-between the boundaries value analysis

-- Negative Case : Testing the record of Employees whose Salary is NOT equals 10,000 AND 25,000 AND Department is not between 1 to 4
Select e.employee_name,e.salary, e.job_title, d.department_id,d.department_name 
from Employees_File e inner join Departments_File d on e.department_id=d.department_id 
where (e.salary<>10000 AND e.salary<>25000) AND (d.department_id NOT IN (1,2,3,4))

-- Negative Case : Testing the record of Employees whose Salary is NOT equals 10,000 OR 25,000 OR Department is not between 1 to 4
Select e.employee_name,e.salary,e.job_title, d.department_id,d.department_name 
from Employees_File e inner join Departments_File d on e.department_id=d.department_id 
where (e.salary<>10000 OR e.salary<>25000) OR (d.department_id NOT IN (1,2,3,4))

-- Negative Case : Testing the record of Employees whose Salary is NOT equals 10,000 OR 25,000 AND Department is not between 1 to 4
Select e.employee_name,e.salary, e.job_title, d.department_id,d.department_name 
from Employees_File e inner join Departments_File d on e.department_id=d.department_id 
where (e.salary<>10000 OR e.salary<>25000) AND (d.department_id NOT IN (1,2,3,4))

-- Negative Case : Testing the record of Employees whose Salary is NOT equals 10,000 AND 25,000 OR Department is not between 1 to 4
Select e.employee_name,e.salary, e.job_title, d.department_id,d.department_name 
from Employees_File e inner join Departments_File d on e.department_id=d.department_id 
where (e.salary<>10000 AND e.salary<>25000) OR (d.department_id NOT IN (1,2,3,4))


-- Here we are checking Test boundaries, one is lesser and another is greater 
Select e.employee_name,e.salary, e.job_title, d.department_id,d.department_name 
from Employees_File e inner join Departments_File d on e.department_id=d.department_id 
where (e.salary<=9999 OR e.salary>=25001) OR (d.department_id IN (1,2,3,4));

Select e.employee_name,e.salary,e.job_title, d.department_id,d.department_name 
from Employees_File e inner join Departments_File d on e.department_id=d.department_id 
where (e.salary<=9999 AND e.salary>=25001) AND (d.department_id IN (1,2,3,4));

Select e.employee_name,e.salary, e.job_title, d.department_id,d.department_name  
from Employees_File e inner join Departments_File d on e.department_id=d.department_id 
where (e.salary<=9999 OR e.salary>=25001) AND (d.department_id IN (1,2,3,4));

Select e.employee_name,e.salary,e.job_title, d.department_id,d.department_name 
from Employees_File e inner join Departments_File d on e.department_id=d.department_id 
where (e.salary<=9999 AND e.salary>=25001) OR (d.department_id IN (1,2,3,4));


--//Here we are checking boundaries value analysis method 

Select e.employee_name,e.salary,e.job_title, d.department_id,d.department_name 
from Employees_File e inner join Departments_File d on e.department_id=d.department_id 
where(e.salary=10000 OR e.salary=25000) OR (d.department_id IN (1,2,3,4));

Select e.employee_name,e.salary, e.job_title, d.department_id,d.department_name 
from Employees_File e inner join Departments_File d on e.department_id=d.department_id 
where(e.salary=10000 AND e.salary=25000) AND (d.department_id IN (1,2,3,4));

Select e.employee_name,e.salary, e.job_title, d.department_id,d.department_name 
from Employees_File e inner join Departments_File d on e.department_id=d.department_id 
where(e.salary=10000 OR e.salary=25000) AND (d.department_id IN (1,2,3,4));

Select e.employee_name,e.salary,e.job_title, d.department_id,d.department_name 
from Employees_File e inner join Departments_File d on e.department_id=d.department_id 
where(e.salary=10000 AND e.salary=25000) OR (d.department_id IN (1,2,3,4));

