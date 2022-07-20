
--UC1-Ability to create a payroll service database
create database payroll_service

--For switching to database from master
use payroll_service

--UC2-create a employee payroll table in the payroll service database
create table employee_payroll(
Id int  primary key identity,
Name varchar(20) not null,
Salary int not null,
StartDate date not null
)
--To retrieve data from table
select * from employee_payroll

--UC3 Inserting Data into Table
insert into employee_payroll values('Siddhant',50000,'2020-01-01'),('Emma',30000,'2020-01-01'),('Aniket',45000,'2021-01-01'),('Vipul',25000,'2022-01-01')

--UC4 retrieve data from table 
select * from employee_payroll


--UC5 Retrieve salary data from particular employee
select Salary from employee_payroll
where Name='Siddhant'

--UC5 Retrieve Names from the selected date to present date
select Name from employee_payroll
where startdate BETWEEN CAST('2020-01-01' AS DATE) AND GETDATE();
