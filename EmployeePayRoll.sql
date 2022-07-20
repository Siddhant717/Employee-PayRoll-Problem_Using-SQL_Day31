
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