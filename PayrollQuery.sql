---uc1--
create database payroll_services
use payroll_services

------UC2 Create a employee payroll table------
create table Employee_Payroll
(
Id int identity primary key,
Name varchar(20),
Salary varchar(10),
StartDate varchar(20)
)
 select * from Employee_Payroll

 --------UC3 insert data in the table------
insert into employee_payroll values 
('Riya',25000,'02-08-2019'),
('Shraddha',20000.20,'22-09-2015'),
('Puja',12000.33,'19-11-2013'),
('Mrunal',22500.200,'13-05-2019'),
('Shreya',36123,'29-02-2020')

-----UC4 Retrive Data into Table---------
select * from Employee_payroll 
