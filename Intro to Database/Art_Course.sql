use art_db;

-- Q1
select *
from course
where courseName like 'Adv Pastels';

-- Q2
select C.CourseNumber, C.CourseName, C.Fee
from course as C inner join enrollment as E
on C.CourseNumber = E.CourseNumber
where E.amountPaid > 250;

-- Q3
select Cu.CustomerNumber, Cu.LastName, Cu.FirstName, Cu.Phone, Co.CourseNumber, En.AmountPaid
from Customer as Cu inner join Enrollment as En inner join course as Co
on Cu.CustomerNumber = En.CustomerNumber and En.CourseNumber = Co.CourseNumber;

-- Q4
Select Co.CourseName, Co.CourseDate, Fee, Cu.LastName, Cu.FirstName, Cu.Phone
from Customer as Cu inner join Enrollment as En inner join course as Co
on Cu.CustomerNumber = En.CustomerNumber and En.CourseNumber = Co.CourseNumber
where Co.CourseName like 'Adv Pastels' and  Co.CourseDate like '2013-10-01';

-- Q5
select count(CourseNumber), CourseName
from course
group by CourseName
Having count(CourseNumber);

-- Q6
Alter Table Enrollment
Add FullFeePaid boolean 
after AmountPaid;

-- Q7
Alter table Enrollment
Drop column FullFeePaid;



