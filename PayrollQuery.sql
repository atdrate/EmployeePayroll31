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
