create schema empdb;

use empdb;
create table EMPLOYEE(
	EmployeeID int primary key not null,
	EmployeeFirstName varchar(25) not null,
	EmployeeLastName varchar(25) not null,
	EmployeeEmail char(12) not null,
	EmployeePhone char(10) not null,
	EmployeeTitle varchar(30) not null,
	EmployeeDateHire date not null,
	EmployeeSalary decimal(8, 2) not null
);

use empdb;
create table CUSTOMER(
	CustomerID int primary key auto_increment,
    CustomerFirstName varchar(25) not null,
    CustomerLastName varchar(25) not null,
    CustomerEmail char(12) not null,
    CustomerPhone char(10),
    CustomerCity varchar(25),
    CustomerMembership char(10),
    CustomerRewards int,
    CustomerZipCode int
);

use empdb;
create table SERVICE(
	ServiceID int primary key not null,
    ServiceDate date not null,
    EmployeeID int,
    CustomerID int,
    ServiceType char(10),
    ServiceMedium char(10),
    Duration int,
    CONSTRAINT Employee_FK FOREIGN KEY(EmployeeID)
    references EMPLOYEE(EmployeeID)
    on update cascade,
    CONSTRAINT Customer_FK FOREIGN KEY(CustomerID)
    references CUSTOMER(CustomerID)
);

INSERT INTO EMPLOYEE VALUES(100001, 'John', 'Smith', 'jsmi@ggc.edu', '6784075000', 'Dir. Call Center', '2007-08-01', 60000.00);
INSERT INTO EMPLOYEE VALUES(100002, 'Daniel', 'Wright', 'dwri@ggc.edu', '6784075001', 'VR HR', '2010-08-01', 65000.00);
INSERT INTO EMPLOYEE VALUES(100010, 'Rachel', 'Homes', 'rhol@ggc.edu', '6784075762', 'AVP HR', '2010-08-01', 62000.00);
INSERT INTO EMPLOYEE VALUES(100020, 'Dana', 'Wright', 'dwri@ggc.edu', '6784075763', 'AVP HR', '2007-01-01', 60000.00);
INSERT INTO EMPLOYEE VALUES(101001, 'Luis', 'Johnson', 'ljoh@ggc.edu', '6784074765', 'Chair of Faculty', '2007-01-01', 80000.00);
INSERT INTO EMPLOYEE VALUES(102002, 'Margaret', 'Smith', 'msmi@ggc.edu', '6784074230', 'Chair of Studies', '2012-08-01', 80000.00);
INSERT INTO EMPLOYEE VALUES(120301, 'Dany', 'Mitchell', 'dmit@ggc.edu', '6784077896', 'Asst Dean', '2012-08-01', 105000.00);
INSERT INTO EMPLOYEE VALUES(103004, 'Ramy', 'Francis', 'rfra@ggc.edu', '6784071234', 'Lab coordiantor', '2016-08-01', 58000.00);
INSERT INTO EMPLOYEE VALUES(130508, 'Joseph', 'Moon', 'jmoo@ggc.edu', '6784072345', 'Lab coordiantor', '2016-01-01', 63000.00);

INSERT INTO CUSTOMER(CustomerFirstName, CustomerLastName, CustomerEmail, CustomerPhone, CustomerCity, CustomerMembership, CustomerRewards, CustomerZipCode)
values ('Evelyn', 'Brannock', 'ebra@ggc.edu', '7704044568', 'Atlanta', 'Gold', 10000, 30308);
INSERT INTO CUSTOMER(CustomerFirstName, CustomerLastName, CustomerEmail, CustomerPhone, CustomerCity, CustomerMembership, CustomerRewards, CustomerZipCode)
values ('David', 'Kerven', 'dker@ggc.edu', '6458761234', 'San Diego', 'Silver', 5000, 23416);
INSERT INTO CUSTOMER(CustomerFirstName, CustomerLastName, CustomerEmail, CustomerPhone, CustomerCity, CustomerMembership, CustomerRewards, CustomerZipCode)
values ('Richard', 'Price', 'rpri@ggc.edu', '6458766754', 'San Diego', 'Gold', 13000, 23416);
INSERT INTO CUSTOMER(CustomerFirstName, CustomerLastName, CustomerEmail, CustomerPhone, CustomerCity, CustomerMembership, CustomerRewards, CustomerZipCode)
values ('Richard', 'Nicklas', 'rnic@ggc.edu', '7704041289', 'Atlanta', 'Platnium', 55000, 30306);
INSERT INTO CUSTOMER(CustomerFirstName, CustomerLastName, CustomerEmail, CustomerPhone, CustomerCity, CustomerMembership, CustomerRewards, CustomerZipCode)
values ('Wei', 'Jin', 'wjin@ggc.edu', '7658976789', 'Chicago', 'Gold', 18760, 67548);
INSERT INTO CUSTOMER(CustomerFirstName, CustomerLastName, CustomerEmail, CustomerPhone, CustomerCity, CustomerMembership, CustomerRewards, CustomerZipCode)
values ('Wei', 'Liu', 'wliu@ggc.edu', '6458764577', 'San Diego', 'Platnium', 89000, 23416);
INSERT INTO CUSTOMER(CustomerFirstName, CustomerLastName, CustomerEmail, CustomerPhone, CustomerCity, CustomerMembership, CustomerRewards, CustomerZipCode)
values ('Xin', 'Xu', 'xxu1@ggc.edu', '7658971256', 'Chicago', 'Platnium', 76453, 67556);
INSERT INTO CUSTOMER(CustomerFirstName, CustomerLastName, CustomerEmail, CustomerPhone, CustomerCity, CustomerMembership, CustomerRewards, CustomerZipCode)
values ('Shuting', 'Xu', 'sxu2@ggc.edu', '7704045634', 'Atlanta', 'Gold', 25678, 30302);
INSERT INTO CUSTOMER(CustomerFirstName, CustomerLastName, CustomerEmail, CustomerPhone, CustomerCity, CustomerMembership, CustomerRewards, CustomerZipCode)
values ('Sonal', 'Dekhane', 'sdek@ggc.edu', '7658977865', 'Chicago', 'Silver', 8200, 67547);
INSERT INTO CUSTOMER(CustomerFirstName, CustomerLastName, CustomerEmail, CustomerPhone, CustomerCity, CustomerMembership, CustomerRewards, CustomerZipCode)
values ('Lissa', 'Pollacia', 'lpol@ggc.edu', '6458764358', 'San Diego', 'Gold', 30789, 23416);

INSERT INTO SERVICE VALUES(100, '2018-12-23', 100001, 1, 'Login', 'Phone', 5);
INSERT INTO SERVICE VALUES(101, '2019-01-06', 100002, 2, 'Payroll', 'Email', 20);
INSERT INTO SERVICE VALUES(102, '2019-03-02', 103004, 8, 'Supplies', 'Email', 120);
INSERT INTO SERVICE VALUES(103, '2019-03-03', 103004, 1, 'Supplies', 'Email', 130);
INSERT INTO SERVICE VALUES(104, '2019-05-20', 100001, 6, 'Login', 'Phone', 40);
INSERT INTO SERVICE VALUES(105, '2019-05-20', 130508, 3, 'Lab Prep', 'Phone', 60);
INSERT INTO SERVICE VALUES(106, '2019-05-20', 101001, 2, 'Appeal', 'Email', 1200);
INSERT INTO SERVICE VALUES(107, '2019-07-16', 130508, 2, 'Lab Prep', 'Phone', 30);
INSERT INTO SERVICE VALUES(108, '2019-08-06', 130508, 8, 'Lab Prep', 'Phone', 30);
INSERT INTO SERVICE VALUES(109, '2019-09-29', 100001, 1, 'Login', 'Phone', 6);
INSERT INTO SERVICE VALUES(110, '2019-10-18', 103004, 4, 'Supplies', 'Email', 36);
INSERT INTO SERVICE VALUES(111, '2019-10-12', 101001, 5, 'Appeal', 'Email', 120);
INSERT INTO SERVICE VALUES(112, '2019-10-26', 101001, 10, 'Appeal', 'Email', 45);
INSERT INTO SERVICE VALUES(113, '2019-11-02', 100001, 9, 'Login', 'Phone', 90);