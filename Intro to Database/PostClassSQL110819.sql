Create database PostClassActivity;

use PostClassActivity;

create table CUSTOMER
(Customer_ID int Primary Key AUTO_INCREMENT, 
Lastname varchar(50),
FirstName varchar(50),
Address varchar(50),
City varchar(50),
State varchar(50),
ZIP varchar(50),
Phone varchar(50),
Email varchar(50)
);
create table EMPLOYEE
(Employee_ID int Primary Key AUTO_INCREMENT,
LastName varchar(50), 
FirstName varchar(50),
Phone varchar(50),
Email varchar(50)
);
create table SALE
(SaleID int Primary Key AUTO_INCREMENT not null,
CustomerID int not null,
constraint Cust_fk FOREIGN KEY (CustomerID) REFERENCES CUSTOMER (Customer_ID),
EmployeeID int not null, 
constraint Emp_fk FOREIGN KEY (EmployeeID) REFERENCES EMPLOYEE (Employee_ID),
SaleDate Date not null, 
SubTotal decimal(10,2) not null, 
Tax decimal(10,2) not null, 
Total decimal(10,2) not null
);
create table ITEM
(Item_ID int Primary Key AUTO_INCREMENT, 
ItemDescription varchar(50), 
PurchaseDate date, 
ItemCost decimal(10,2), 
ItemPrice decimal(10,2), 
VendorID int
);
create table SALE_iTEM
(
SaleID int,
constraint Emp_sk FOREIGN KEY (SaleID) REFERENCES SALE (SaleID),
SaleItem_ID int,
constraint pk Primary Key (SaleID, SaleItem_ID),
Item_ID int,
constraint Emp_ik FOREIGN KEY (Item_ID) REFERENCES ITEM (Item_ID),
ItemPrice decimal(10,2)
);
create table VENDOR
(Vendor_ID int Primary Key AUTO_INCREMENT,
CompanyName varchar(50), 
ContactLastName varchar(50), 
ContactFirstName varchar(50),
Address varchar(50),
City varchar(50),
State char(5), 
ZIP varchar(20),
Phone varchar(20),
Fax varchar(20), 
Email varchar(50)
);


-- Query 1
select Item_ID, ItemDescription
from Item
where ItemCost >= 3000;

-- Query 2
select Item_ID, ItemDescription 
from item
where ItemCost >= 1000 and ItemDescription like 'Antique%';

-- Query 3
select CompanyName, Address, Phone
from vendor
where CompanyName not like 'null';

-- Query 4
Select LastName, FirstName, Phone, Email 
from employee
where Email like '%Stuart%'
order by FirstName asc;

-- Query 5
select Item_ID, PurchaseDate, ItemCost, ItemPrice, (ItemPrice - ItemCost) as PriceMarkup
from item;

-- Query 6
select FirstName, LastName, Phone
from customer
where Customer_ID
in
(select distinct CustomerID
from sale
where SubTotal >= 500);

-- Query 7
select E.FirstName, E.LastName, E.Phone, S.SaleDate, S.Subtotal
from employee as E inner join sale as S
on E.Employee_ID = S.EmployeeID
where S.Subtotal = 3000;

-- Query 8
Select Item_Id, ItemDescription, ItemPrice, CompanyName
from item as I inner join vendor as V
on I.VendorID = V.Vendor_ID
where Item_Id = 1;

-- Query 9
select LastName, FirstName, Phone, count(Total) as NumberSalesTransactions, sum(Total) as TotalSalesAmount
from customer as C inner join sale as S
on C.Customer_ID = S.CustomerID;

-- Query 10
Select Item_ID, ItemDescription
from item as I left outer join sale_item as S
on I.Item_ID = S.Item_ID



