/*2. Creating a table */
 CREATE TABLE Employee_Details(
 Emp_ID int NOT NULL PRIMARY KEY,
 Emp_Name varchar(30),
 Job_Name varchar(30),
 Manager_ID int,
 Hire_Date datetime,
 Salary int,
 Dep_ID int
 )