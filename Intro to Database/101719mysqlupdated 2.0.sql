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

use art_db;
Insert into customer (LastName, FirstName, Phone) values('johnson', 'Ariel', '206-567-1234');
Insert into customer (LastName, FirstName, Phone) values('Green', 'Robin', '425-678-8765');
Insert into customer (LastName, FirstName, Phone) values('jackson', 'charles', '360-789-3456');
Insert into customer (LastName, FirstName, Phone) values('pearson', 'Jeffery', '206-567-2345');
Insert into customer (LastName, FirstName, Phone) values('Sears', 'Miguel', '360-7894-567');
Insert into customer (LastName, FirstName, Phone) values('Kyle', 'Leah', '425-678-7654');
Insert into customer (LastName, FirstName, Phone) values('Myers', 'Lynda', '360-789-5678');
            
Insert into course (CourseName, CourseDate, Fee) values('Adv Pastels', '2014-10-1', 500.00);
Insert into course (CourseName, CourseDate, Fee) values('Beg Oils', '2013-9-15', 350.00);
Insert into course (CourseName, CourseDate, Fee) values('Int Pastels', '2013-3-15', 350.00);
Insert into course (CourseName, CourseDate, Fee) values('Beg Oils', '2013-10-15', 350.00);
Insert into course (CourseName, CourseDate, Fee) values('Adv Pastels', '2013-11-15', 500.00);
            
Insert into enrollment values(1, 1, 250.00);
Insert into enrollment values(1, 3, 350.00);
Insert into enrollment values(2, 2, 350.00);
Insert into enrollment values(3, 1, 500.00);
Insert into enrollment values(4, 1, 500.00);
Insert into enrollment values(5, 2, 350.00);
Insert into enrollment values(6, 5, 250.00);
Insert into enrollment values(7, 5, 0.00);
Insert into enrollment values(3, 3, 0.00);