select ProjectName, department, MaxHours
from project;

select distinct department
from project;

select *
from project
where department = 'finance';

select *
from project
where maxhours > 135;

select *
from project
where department = 'finance' and maxhours > 135;

select FirstName, LastName, OfficePhone, Department
from employee
where department = 'accounting' or OfficePhone = '360-285-8410';

select FirstName, LastName, OfficePhone, Department
from employee
where department in ('accounting', 'finance', 'sales and marketing');

-- SAME RESULT AS ABOVE
select FirstName, LastName, OfficePhone, Department
from employee
where department = 'accounting' or department = 'finance' or department = 'sales and marketing';

select FirstName, LastName, OfficePhone, Department
from employee
where department not in ('accounting', 'finance', 'sales and marketing');

select EmployeeNumber, FirstName, LastName, OfficePhone, Department
from employee
where EmployeeNumber between 2 and 5;
-- SAME AS ABOVE
select EmployeeNumber, FirstName, LastName, OfficePhone, Department
from employee
where EmployeeNumber >= 2 and EmployeeNumber <= 5;

-- _ (one character) % (multiple characters)
-- anything in beginning and after Q4
select *
from project
where ProjectName like '%Q4%';

select *
from project
where ProjectName like 'Q4%';

select *
from project
where ProjectName like 'Q4__';

select *
from employee
where department like '%ing';

select *
from employee
where department not like ('%ing');

select *
from employee
where OfficePhone is null;

select *
from employee
where OfficePhone is not null;

-- Assumes assending and ORDERS by contents in COLUMN
select *
from employee 
order by department;

select *
from employee 
order by department desc;

select *
from employee 
order by department desc, LastName Asc;

select *
from project
where department = 'sales and marketing'
order by MaxHours desc;
