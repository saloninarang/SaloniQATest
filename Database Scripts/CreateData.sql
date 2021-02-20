
CREATE TABLE Departments_File (
    department_id int NOT NULL,
    department_name varchar(50) NOT NULL,
    location char(50),
   PRIMARY KEY (department_id)
);
Begin Transaction
Insert into Departments_File
Select '1','Management','London'
Union all 
Select '2','Engineering','Cardiff' 
Union all 
Select '3','Research & Development','Edinburgh' 
Union all
Select '4','Sales','Belfast' 
Commit

CREATE TABLE Employees_File (
    employee_id int NOT NULL PRIMARY KEY,
    employee_name varchar(50) NOT NULL,
    job_title char(50) NOT NULL,
	manager_id int,
	date_hired date NOT NULL,
	salary int NOT NULL,
	department_id int NOT NULL FOREIGN KEY REFERENCES departments_file(department_id)	    
);



/*Create at least 10 sets of test data for the Employee Data table with any
random employee name, salary ranging from 10000-25000, Date hired &
department id between 1-4.*/

Begin Transaction
Insert into Employees_File
Select 90001,'John Smith','CEO',NULL,'01/01/95',28000,1
Union all 
Select 90002,'Jimmy Willis','Manager',90001,'23/SEP/03',15500,4
Union all
Select 90003,'Roxy Jones','Salesperson',90002,'11/FEB/17',14000,4
Union all
Select 90004,'Selwyn Field','Salesperson',90003,'20/MAY/15',9500,4
Union all
Select 90005,'David Hallett','Engineer',90006,'17/APR/18',18000,2
Union all
Select 90006,'Sarah Phelps','Manager',90001,'21/MAR/15',24000,2
Union all
Select 90007,'Louise Harper','Engineer',90006,'01/JAN/13',19000,2
Union all
Select 90008,'Tina Hart','Engineer',90009,'28/JUL/14',18500,3
Union all
Select 90009,'Gus Jones','Manager',90001,'15/MAY/18',25000,3
Union all
Select 90010,'Mildred Hall','Secretary',90001,'12/OCT/96',20000,1
Commit






