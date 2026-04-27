CREATE DATABASE IBORO_HONG_FINAL_PROJECT;
USE IBORO_HONG_FINAL_PROJECT;

-- CREATING DATABASE AND TABLES

CREATE TABLE LIBRARY (
Library_ID INT PRIMARY KEY ,
Name VARCHAR(50), 
City VARCHAR(50), 
Street VARCHAR(50),
State CHAR,
Zip_Code INT,
Email VARCHAR(50),
Phone VARCHAR(50),
Hours_of_Operation datetime
);

CREATE TABLE COLLECTIONS (
COL_ID INT,
Title VARCHAR(50),
Author VARCHAR(50),
Genre VARCHAR(50),
Page_Numbers INT,
Year_Published YEAR(4),
Publisher VARCHAR(50),
Library_ID INT,
CONSTRAINT Col_PK_CompositekEY PRIMARY KEY (COL_ID, Library_ID),
CONSTRAINT LIB_ID FOREIGN KEY (Library_ID) REFERENCES LIBRARY (Library_ID)
);

CREATE TABLE MEMBERS (
Member_ID int Primary key,
First_Name VARCHAR(45),
Last_Name VARCHAR(45),
Street VARCHAR(45),
City VARCHAR(45),
Zip_Code VARCHAR(10),
Email VARCHAR(45),
Phone VARCHAR(20)
);

CREATE TABLE BOOKS_CHECK_OUT (
BCO_ID int PRIMARY KEY,
Date_Checked_Out date,
Date_to_be_Returned DATE,
Date_Returned DATE, 
Title varchar(45),
MemberID int,
CONSTRAINT Members_memberID FOREIGN KEY (MemberID) REFERENCES MEMBERS (Member_ID)
);

CREATE TABLE BOOKS_FOR_SALE (
BFS_ID INT PRIMARY KEY,
Price DECIMAL(8,2),
Title varchar(45),
MemberID INT,
CONSTRAINT Member_memberID FOREIGN KEY (MemberID) REFERENCES MEMBERS (Member_ID)
);

CREATE TABLE PENALTY (
Penalty_ID INT,
Fee DECIMAL(8,2),
Type_of_Penalty VARCHAR(45),
BCO_ID INT,
CONSTRAINT bco_ID_pk_composite PRIMARY KEY (Penalty_ID, BCO_ID),
CONSTRAINT bco_ID FOREIGN KEY (BCO_ID) REFERENCES BOOKS_CHECK_OUT (BCO_ID)
);

CREATE TABLE COLLECTONS_HAS_BOOKS_CHECK_OUT (
Collec_ID INT,
Collec_Lib_Lib_ID INT,
Bks_Chk_out_BCO_ID INT,
CONSTRAINT Collections_ID foreign key (Collec_ID) REFERENCES COLLECTIONS (COL_ID),
CONSTRAINT Collections_Library_Library_ID foreign key (Collec_Lib_Lib_ID) references COLLECTIONS (Library_ID),
CONSTRAINT Books_Check_out_BCO_ID foreign key (Bks_Chk_out_BCO_ID) references BOOKS_CHECK_OUT (BCO_ID)
);

CREATE TABLE COLLECTIONS_HAS_BOOKS_FOR_SALE (
Collect_ID int,
Collect_Libr_Libr_ID int,
Bks_for_sale_BFS_ID int,
constraint Collection_ID foreign key (Collect_ID) references COLLECTIONS (COL_ID),
constraint Collection_Library_Library_ID foreign key (Collect_Libr_Libr_ID) references COLLECTIONS (Library_ID),
constraint Book_for_sale_BFS_ID foreign key (Bks_for_sale_BFS_ID) references BOOKS_FOR_SALE (BFS_ID)
);

-- INSERT INTO TABLES

USE IBORO_HONG_FINAL_PROJECT;
 INSERT INTO LIBRARY 
VALUES (1, 'New York Public Library', 'Manhattan', 'cave', 'NYC', 914, 'newyork@gmail.com', '878-322-4434', '09:00:00'),
	(2, 'Public Library of Cincinnati and Hamilton County', 'Hamilton County', '', '', , '', '', ''),
	(3, '', '', '', '', , '', '', ''),
	(4, '', '', '', '', , '', '', ''),
	(5, '', '', '', '', , '', '', ''),
	(6, '', '', '', '', , '', '', ''),
	(7, '', '', '', '', , '', '', ''),
	(8, '', '', '', '', , '', '', ''),
	(9, '', '', '', '', , '', '', ''),
	(10, '', '', '', '', , '', '', '');

INSERT INTO COLLECTIONS 
VALUES (101),
	(102),
	(103),
	(104),
	(105),
	(106),
	(107),
	(108),
	(109),
	(110);

INSERT INTO MEMBERS 
VALUES (50),
	(51),
	(52),
	(53),
	(54),
	(55),
	(56),
	(57),
	(58),
	(59),
	(60);

INSERT INTO BOOKS_CHECK_OUT 
VALUES (1001),
	(1002),
	(1003),
	(1004),
	(1005),
	(1006),
	(1007),
	(1008),
    (1009),
    (1010);

INSERT INTO BOOKS_FOR_SALE 
VALUES (1051),
	(1052),
    (1053),
    (1054),
    (1055),
    (1056),
    (1057),
    (1058),
    (1059),
    (1060);

INSERT INTO PENALTY 
VALUES (2001),
	(2002),
    (2003),
    (2004),
    (2005),
    (2006),
    (2007),
    (2009),
    (2010);

INSERT INTO COLLECTONS_HAS_BOOKS_CHECK_OUT 
VALUES (101, 1, 1001),
		(102, 2, 1002),
        (103, 3, 1003),
        (104, 4, 1004),
        (105, 5, 1005),
        (106, 6, 1006),
        (107, 7, 1007),
        (108, 8, 1008),
        (109, 9, 1009),
        (110, 10, 1010);        
        
INSERT INTO COLLECTIONS_HAS_BOOKS_FOR_SALE 
VALUES (101, 1, 1051),
		(102, 2, 1052),
        (103, 3, 1053),
        (104, 4, 1054),
        (105, 5, 1055),
        (106, 6, 1056),
        (107, 7, 1057),
        (108, 8, 1058),
        (109, 9, 1059),
        (110, 10, 1060);

-- SELECT STATEMENTS

USE IBORO_HONG_FINAL_PROJECT;
-- QUERY 1 AND, OR
-- QUERY 2 sort
-- QUERY 3 SUM, AVG, MIN, MAX, COUNT built in fuctions
-- QUERY 4 subquery with two or more levels
-- QUERY 5 join of two or more tables
-- QUERY 6 computed field
-- QUERY 7 group by

