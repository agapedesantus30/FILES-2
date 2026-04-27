create schema empdb;

create table Employee
(EmployeeID int Primary key not null,
EmployeeFirstName varchar(25) not null,
EmployeeLastName varchar(25) not null,
EmployeeEmail char(12) not null,
EmployeePhone char(10) not null,
EmployeeTitle varchar(30) not null,
EmployeeDateHire date not null,
EmployeeSalary decimal(8,2) not null);

#single line comment
/* multi line coment*/