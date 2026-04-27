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
(select Department from project where MaxHours > 135)