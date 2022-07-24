


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

--UC6 add Gender to Employee Payroll Table and Update the Rows
alter table employee_payroll
add Gender char

update employee_payroll
set Gender ='M' where Name='Siddhant' or Name='Aniket' or Name='Vipul'

update employee_payroll
set Gender = 'F' where Name='Emma'

select * from employee_payroll

--Add Gender field after Name field
select Id,Name,Gender,StartDate,Salary from employee_payroll

--Adding 1 more data
insert into employee_payroll values('Chetna',45000,'2020-05-01','F');

--UC7 use of Database functions with GroupBy
Select SUM(Salary) From employee_payroll Where Gender='M' Group by Gender
Select SUM(Salary) From employee_payroll Where Gender='F' Group by Gender

Select AVG(Salary) From employee_payroll Where Gender='M' Group by Gender
Select AVG(Salary) From employee_payroll Where Gender='F' Group by Gender

Select MIN(Salary) From employee_payroll Where Gender='M' Group by Gender
Select MIN(Salary) From employee_payroll Where Gender='F' Group by Gender

Select MAX(Salary) From employee_payroll Where Gender='M' Group by Gender
Select MAX(Salary) From employee_payroll Where Gender='F' Group by Gender

Select COUNT(Salary) From employee_payroll Where Gender='M' Group by Gender
Select COUNT(Salary) From employee_payroll Where Gender='F' Group by Gender


--UC8 extend employee_payroll data and save more details
alter table employee_payroll
add PhoneNumber bigint, Address varchar(20) default 'Indore',Department varchar(30) not null, 



update employee_payroll
set PhoneNumber = 9090997799, Address = 'Ajmer', Department = 'Marketing' where Name = 'Siddhant'

update employee_payroll
set PhoneNumber = 8845457257, Address = 'Surat', Department = 'Sales' where Name = 'Emma'

update employee_payroll
set PhoneNumber = 7845667267, Address = 'Pune', Department = 'Accounts' where Name = 'Aniket'

update employee_payroll
set PhoneNumber = 9845767297, Address = 'Mumbai', Department = 'Sales' where Name = 'Vipul'

update employee_payroll
set PhoneNumber = 7746547279, Address = 'Mumbai', Department = 'Marketing' where Name = 'Chetna'

select * from employee_payroll

--UC9 extend employee_payroll table to have Basic Pay, Deductions, Taxable Pay, Income Tax, Net Pay
alter table
employee_payroll
add BasicPay float, Deductions float, TaxablePay float, IncomeTax float, NetPay float

--updating the phone, address and department field 
update employee_payroll
set BasicPay = 32000, Deductions = 2000, TaxablePay = 1000, IncomeTax = 550, NetPay= 28500 where Name = 'Siddhant'

update employee_payroll
set BasicPay = 10000, Deductions = 1000, TaxablePay = 1000, IncomeTax = 200, NetPay= 8000 where Name = 'Emma'

update employee_payroll
set BasicPay = 50000, Deductions = 2500, TaxablePay = 1500, IncomeTax = 200, NetPay= 47000 where Name = 'Aniket'

update employee_payroll
set BasicPay = 15000, Deductions = 500, TaxablePay = 500, IncomeTax = 150, NetPay= 13000 where Name = 'Vipul'

update employee_payroll
set BasicPay = 25000, Deductions = 1000, TaxablePay = 500, IncomeTax = 1500, NetPay= 22000 where Name = 'Chetna'


