-- 1
use wpc;
select count(Department)
from project;

-- 2
select count(distinct department) as DistinctDepartment
from project;

-- 3
select employeeNumber, min(HoursWorked), max(HoursWorked), avg(HoursWorked)
from assignment
group by employeeNumber;

-- 4
select avg(HoursWorked), ProjectID
from assignment
group by ProjectID;

-- 5
select avg(HoursWorked), ProjectID
from assignment
group by ProjectID
having avg(HoursWorked) > 40;

-- 6
select DepartmentName, BudgetCode, MaxHours
from department as D inner join Project as P
on D.DepartmentName = P.Department
where MaxHours > 135;
-- SUBQUERY
select DepartmentName, BudgetCode
from department
where DepartmentName in
(select Department from project where MaxHours > 135);

-- 7
select departmentName, BudgetCode, ProjectName
from department as D inner join Project as P
on D.DepartmentName = P.Department
where maxHours > 135;


-- TASK 2
-- 1
select *
from customer
where CustomerID in
(select CustomerID from service where ServiceType like 'Login');

-- 2
select CustomerFirstName, CustomerLastName, EmployeeFirstName, EmployeeLastName, ServiceDate, ServiceType
from Customer as C inner join service as S inner join Employee as E
on C.CustomerID = S.CustomerID and S.EmployeeID = E.EmployeeID
where ServiceType like 'Login';

-- 3
select count(CustomerID) as Numberofmember, CustomerMembership
from Customer
group by CustomerMembership 
having CustomerMembership in ('Silver', 'Gold', 'Platnium');

-- 4
select count(CustomerID) as Numberofmember, CustomerMembership
from Customer
group by CustomerMembership 
having CustomerMembership in ('Silver', 'Gold', 'Platnium') and count(CustomerID) >= 3;

-- 5
select EmployeeTitle, avg(EmployeeSalary) as AverageSalary
from employee
group by EmployeeTitle;

-- 6
select ServiceID, ServiceDate, EmployeeID, CUstomerID, ServiceType, ServiceMedium, (duration / 60) as DurationHour
from service;