USE ALEXAMARA;

-- SQL question 1
Select MarinaNum, BoatType, SlipNum
From marinaslip
where BoatType like 'Dolphin 28'
Order by MarinaNum;

-- SQL question 2
Select MarinaNum, SlipNum
from marinaslip
where BoatType like 'Sprite 4000' or BoatType like 'Sprite 3000'or BoatType like'Ray 4025'
order by MarinaNum asc, SlipNum desc;

-- SQL question 3
select count(MarinaNum) as MarinaNum, count(BoatType) as Dolphines
from marinaslip
where BoatType like 'Dolphin%'
group by MarinaNum
having count(BoatType);

-- SQL question 4
select slipID, Description, Status
from servicerequest
where categorynum in
(select categorynum from servicecategory where Description like 'Engine repair')
order by slipID;

-- NO question 5

-- SQL question 6 come back

select distinct CategoryNum as Services, NextServiceDate
from servicerequest
where CategoryNum between 3 and 5; 


-- SQL question 7
select sr.Description as RequestDescription, sc.Description as CategoryDescription, sr.status as RequestStatus
from servicecategory  as sc inner join servicerequest as sr
on sc.CategoryNum = sr.CategoryNum;

-- SQL question 8
update marinaslip
set RentalFee = 3900
where RentalFee = 3800;

-- SQL question 9 come back

delete
from marinaslip
where RentalFee = 3600;




