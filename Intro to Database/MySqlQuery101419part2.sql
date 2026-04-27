Create Database ART_DB;
Use ART_DB;
CREATE TABLE CUSTOMER(
	CustomerNumber Int Primary Key AUTO_INCREMENT not null,
	LastName varchar(30) not null,
    FirstName varchar(30) not null,
	Phone char(12) not null);
Create Table COURSE(
	CourseNumber Int Primary Key AUTO_INCREMENT not null,
	CourseName varchar(30) not null,
	CourseDate date not null,
	Fee decimal(6,2) not null);    
Create Table ENROLLMENT(
	CustomerNumber INT NOT NULL,
	constraint Enroll_Cust_fk FOREIGN KEY (CustomerNumber) REFERENCES CUSTOMER (CustomerNumber),
	CourseNumber INT NOT NULL,
	constraint Enroll_Course_fk FOREIGN KEY (CourseNumber) REFERENCES COURSE (CourseNumber) ON DELETE CASCADE,
    constraint Enroll_pk Primary Key (CustomerNumber, CourseNumber),
	AmountPaid decimal(8,2) not null);
    
use empdb;
Create table Customer (
	CustomerID Int Primary key Auto_increment,
    CustomerFirstName Varchar(25)not null,
    CustomerLastName Varchar(25) not null,
    CustomerEmail Char(12) not null,
    CustomerPhone Char(10),
    CustomerCity Varchar(25),
    CustomerMembership Char(10),
    CustomerRewards Int,
    CustomerZipCode Int
);

use empdb;
Create table Service (
	ServiceID int primary key not null,
    ServiceDate date not null,
    EmployeeID int,
    CustomerID int,
    SeriveceType char(10),
    ServiceMedium char(10),
    Duration int,
    constraint SERV_EMP_FK foreign key (EmployeeID) References Employee(EmployeeID) on Update Cascade,
    Constraint SERV_CUST_FK foreign key (CustomerID) References Customer(CustomerID));

use empdb;
Create table Employee (
	EmployeeID Int Primary Key not null,
	EmployeeFirstName Varchar(25) not null,
	EmployeeLastName Varchar(25) not null,
    EmployeeEmail Char(12) not null,
    EmployeePhone Char(10) not null,
	EmployeeTitle Varchar(30) not null,
    EmployeeDateHire Date not null,
    EmployeeSalary Decimal(8,2) not null
);
    
INSERT INTO employee VALUES
	(100001, 'John', 'Smith', 'jsmith@ggc.edu', 6784075000, 'Director call center', '2007-08-01', 6000.00);
INSERT INTO employee VALUES
	(100002, 'Daniel', 'Wright', 'dwri@ggc.edu', 6784075001, 'VP Hr', '2010-08-01', 6500.00);
INSERT INTO employee VALUES
	(100010, 'Rachel', 'Homes', 'rhol@ggc.edu', 6784075762, 'AVP Hr', '2010-08-01', 6200.00);
