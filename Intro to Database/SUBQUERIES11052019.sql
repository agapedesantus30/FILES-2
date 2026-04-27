use wpc;
select projectID, ProjectName, maxHours, (18.5*MaxHours) as ProjectCost
from project;

-- Group BY: groups the contents of a column
select count(EmployeeNumber), Department
from employee
group by department;

-- HAVING: use when you can't use aggregate functions in WHERE CLAUSE
select count(EmployeeNumber) as NumOfEmployees, Department
from employee
group by department having count(EmployeeNumber) > 1;

select department, count(EmployeeNumber) as NumOfEmp
from employee
where EmployeeNumber <= 6
group by department having count(EmployeeNumber) >= 2;

select EmployeeNumber
from Assignment
where Hoursworked > 40;

select FirstName, LastName
from employee
where employeeNumber in (4,10,16,17,7,12,14,15,3,20,23);

-- A different way of join multiple tables (SUB QUERY)
select FirstName, LastName, employeeNumber
from employee
where employeeNumber in (select distinct EmployeeNumber from Assignment where hoursworked > 40);

select employee.FirstName, employee.LastName, asignment.hoursWorked
from employee inner join assignment
on employee.employeeNumber = assignment.employeenumber;
-- first same as second, without specifying inner defaults to inner
select assignment.employeenumber, employee.FirstName, employee.LastName, assignment.hoursWorked
from employee, assignment
where employee.employeeNumber = assignment.employeenumber;

select assignment.employeenumber, employee.FirstName, employee.LastName, assignment.hoursWorked, assignment.projectID
from employee, assignment
where employee.employeeNumber = assignment.employeenumber
order by assignment.projectid desc, employee.employeenumber asc;

select employee.FirstName, employee.LastName, Sum(Assignment.HoursWOrked) as TotalHoursWorked
from employee inner join Assignment
on employee.EmployeeNumber = Assignment.EmployeeNumber
group by Assignment.EmployeeNumber;

select E.FirstName, E.LastName, A.HoursWOrked
from employee as E inner join Assignment as A
on E.EmployeeNumber = A.EmployeeNumber
where  A.HoursWOrked > 40;

