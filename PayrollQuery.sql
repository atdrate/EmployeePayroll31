---uc1--
create database payroll_services
use payroll_services

------UC2 Create a employee payroll table------
create table Employee_Payroll
(
Id int identity primary key,
Name varchar(20),
Salary int,
StartDate varchar(20)
)
 select * from Employee_Payroll
 drop table Employee_Payroll
 delete  Employee_Payroll

 --------UC3 insert data in the table------
insert into Employee_payroll values 
('Riya',25000,'02-08-2019'),
('Shraddha',20000.20,'22-09-2015'),
('Puja',12000.33,'19-11-2013'),
('Mrunal',22500.200,'13-05-2019'),
('Shreya',36123,'29-02-2020')

-----UC4 Retrive Data into Table---------
select * from Employee_payroll 

-------UC5 Retrieve salary data on a condition-----
select Salary from Employee_payroll where Name= 'Puja'
select Salary,Name from Employee_payroll where StartDate between ('20-04-2019') and ('25-04-2016')
select Salary from Employee_payroll where Id=4

-------UC6 Add one row Name as Gender in the table-----
ALTER TABLE Employee_payroll ADD gender varchar(20)
UPDATE Employee_payroll set Gender = 'F' where Name= 'Riya' or Name = 'Shraddha' or name='puja' or Name= 'Shreya'
UPDATE Employee_payroll set Gender = 'M' where Name= 'Mrunal' 

-----UC7 Calcuulate the avg, mim,max,count,sum and number of male and female in employee table----
select MAX(Salary) as MaxvalueforMale  from Employee_payroll where Gender= 'M' Group by Gender
select MAX(Salary) as MaxvalueforFemale from Employee_payroll where Gender = 'F' Group by Gender

select Min(Salary) as MimvalueForMale from Employee_payroll where Gender= 'M' Group by Gender
select Min(Salary) as MimvalueForFemale from Employee_payroll where Gender= 'F' Group by Gender

select AVG(Salary) as AverageforMale from Employee_payroll where Gender= 'M' Group by Gender
select avg(Salary) as AverageforFemale from Employee_payroll where Gender= 'F' Group by Gender

select SUM(Salary) as SumofMale from Employee_payroll where Gender= 'M' Group by Gender
select SUM(Salary) as SumofFemale from Employee_payroll where Gender= 'F' Group by Gender

select COUNt(Salary) as CountforMale  from Employee_payroll where Gender= 'M' Group by Gender
select COUNT(Salary) as COuntForFemale from Employee_payroll where Gender= 'F' Group by Gender
