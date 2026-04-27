-- First Task
-- 1
select FirstName, LastName, Department, Position, Supervisor, OfficePhone, EmailAddress
from employee;

-- 2
select FirstName, LastName, Department
from employee;

-- 3
select FirstName, LastName, Department
from employee
where department = 'infoSystems';

-- 4
select Department
from employee;

-- 5
select Distinct Department
from employee;

-- 6
select *
from employee
where firstname = 'G%' or department = 'production';

-- 7
select *
from employee
where LastName not like '%one%';

-- 8
use wpc;
select  Department, LastName, FirstName
from employee
order by department, lastName asc;

-- second task
-- 1
use empdb;
select CustomerFirstname, CustomerLastName, CustomerRewards, CustomerMembership
from customer
where CustomerMembership = 'Gold';

-- 2
use empdb;
select EmployeeFirstName, EmployeeLastName, EmployeeTitle, EmployeeSalary
from employee
where EmployeeSalary between 60000 and 65000;

-- 3
use empdb;
select ServiceID, ServiceDate, ServiceType, ServiceMedium, duration
from service
where ServiceMedium = 'phone' or duration > 120;

-- 4
select ServiceDate, ServiceType, ServiceMedium, duration
from service
where ServiceDate > '2019-09-01';

-- 5
-- use equal(=) when looking for an exact value
-- use like (like) when not looking for an exact value
select ServiceType, ServiceMedium, Duration
from service
where ServiceType like 'L%';

-- 6
use empdb;
select distinct ServiceType
from service;