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