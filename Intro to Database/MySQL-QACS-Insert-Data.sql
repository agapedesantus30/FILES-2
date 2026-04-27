/********************************************************************************/
/*												                                      */
/*	Kroenke and Auer - Database Concepts (7th Edition) Chapter 03		         	  */
/*												                                      */
/*	The Queen Anne Curiousity Shop [QACS] Database Data					           	  */
/*														                              */
/*	These are the MySQL 5.6 SQL code solutions							           	*/
/*																				                                      */
/********************************************************************************/

/*****   CUSTOMER DATA   ********************************************************/

/*****   These are based on data in Figure 3-35 ***********/

INSERT INTO CUSTOMER (Lastname, FirstName, Address, City, State, ZIP, Phone, Email)
  VALUES(
	'Shire', 'Robert', '6225 Evanston Ave N', 'Seattle', 'WA', '98103',
	'206-524-2433', 'Robert.Shire@somewhere.com');
INSERT INTO CUSTOMER (Lastname, FirstName, Address, City, State, ZIP, Phone, Email)
  VALUES(
	'Goodyear', 'Katherine', '7335 11th Ave NE', 'Seattle', 'WA', '98105',
	'206-524-3544', 'Katherine.Goodyear@somewhere.com');
INSERT INTO CUSTOMER (Lastname, FirstName, Address, City, State, ZIP, Phone, Email)
  VALUES(
	'Bancroft', 'Chris', '12605 NE 6th Street', 'Bellevue', 'WA', '98005',
	'425-635-9788', 'Chris.Bancroft@somewhere.com');
INSERT INTO CUSTOMER (Lastname, FirstName, Address, City, State, ZIP, Phone, Email)
  VALUES(
	'Griffith', 'John', '335 Aloha Street', 'Seattle', 'WA', '98109',
	'206-524-4655', 'John.Griffith@somewhere.com');
INSERT INTO CUSTOMER (Lastname, FirstName, Address, City, State, ZIP, Phone, Email)
  VALUES(
	'Tierney', 'Doris', '14510 NE 4th Street', 'Bellevue', 'WA', '98005',
	'425-635-8677', 'Doris.Tierney@somewhere.com');
INSERT INTO CUSTOMER (Lastname, FirstName, Address, City, State, ZIP, Phone, Email)
  VALUES(
	'Anderson', 'Donna', '1410 Hillcrest Parkway', 'Mt. Vernon', 'WA', '98273',
	'360-538-7566', 'Donna.Anderson@elsewhere.com');
INSERT INTO CUSTOMER (Lastname, FirstName, Address, City, State, ZIP, Phone, Email)
  VALUES(
	'Svane', 'Jack', '3211 42nd Street', 'Seattle', 'WA', '98115',
	'206-524-5766', 'Jack.Svane@somewhere.com');
INSERT INTO CUSTOMER (Lastname, FirstName, Address, City, State, ZIP, Phone, Email)
  VALUES(
	'Walsh', 'Denesha', '6712 24th Avenue NE', 'Redmond', 'WA', '98053',
	'425-635-7566', 'Denesha.Walsh@somewhere.com');
INSERT INTO CUSTOMER (Lastname, FirstName, Address, City, State, ZIP, Phone, Email)
  VALUES(
	'Enquist', 'Craig', '534 15th Street', 'Bellingham', 'WA', '98225',
	'360-538-6455', 'Craig.Enquist@elsewhere.com');
INSERT INTO CUSTOMER (Lastname, FirstName, Address, City, State, ZIP, Phone, Email)
  VALUES(
	'Anderson', 'Rose', '6823 17th Ave NE', 'Seattle', 'WA', '98105',
	'206-524-6877', 'Rose.Anderson@elsewhere.com');


/*****   EMPLOYEE DATA   ********************************************************/

/*****   These items are based on Figure 3-36 ********/

INSERT INTO EMPLOYEE (LastName, FirstName, Phone, Email)
  VALUES('Stuart', 'Anne', '206-527-0010', 'Anne.Stuart@QACS.com');
INSERT INTO EMPLOYEE (LastName, FirstName, Phone, Email)
  VALUES('Stuart', 'George', '206-527-0011', 'George.Stuart@QACS.com');
INSERT INTO EMPLOYEE (LastName, FirstName, Phone, Email)
  VALUES('Stuart', 'Mary', '206-527-0012', 'Mary.Stuart@QACS.com');
INSERT INTO EMPLOYEE (LastName, FirstName, Phone, Email)
  VALUES('Orange', 'William', '206-527-0013', 'William.Orange@QACS.com');
INSERT INTO EMPLOYEE (LastName, FirstName, Phone, Email)
  VALUES('Griffith', 'John', '206-527-0014', 'John.Griffith@QACS.com');


/*****   VENDOR DATA   **********************************************************/

/*****   These are based on data in Figure 3-37 ***********/

INSERT INTO VENDOR
  (CompanyName, ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Fax, Email)
  VALUES(
	'Linens and Things', 'Huntington', 'Anne', '1515 NW Market Street',
	'Seattle', 'WA', '98107', '206-325-6755', '206-329-9675', 'LAT@business.com');
INSERT INTO VENDOR
  (CompanyName, ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Fax, Email)
  VALUES(
	'European Specialties', 'Tadema', 'Ken', '6123 15th Avenue NW',
  'Seattle', 'WA', '98107', '206-325-7866', '206-329-9786', 'ES@business.com');
INSERT INTO VENDOR
  (CompanyName, ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Fax, Email)
  VALUES(
	'Lamps and Lighting', 'Swanson', 'Sally', '506 Prospect Street',
  'Seattle', 'WA', '98109', '206-325-8977', '206-329-9897', 'LAL@business.com');
INSERT INTO VENDOR
	(ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Email)
	VALUES(
	'Lee', 'Andrew', '1102 3rd Street',
	'Kirkland', 'WA', '98033', '425-746-5433', 'Andrew.Lee@somewhere.com');
INSERT INTO VENDOR
	(ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Email)
	VALUES(
	'Harrison', 'Denise', '533 10th Avenue',
	'Kirkland', 'WA', '98033', '425-746-4322', 'Denise.Harrison@somewhere.com');
INSERT INTO VENDOR
  (CompanyName, ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Fax, Email)
  VALUES(
	'New York Brokerage', 'Smith', 'Mark', '621 Roy Street',
	'Seattle', 'WA', '98109', '206-325-9088', '206-329-9908', 'NYB@business.com');
INSERT INTO VENDOR
	(ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Email)
	VALUES(
	'Walsh', 'Denesha', '6712 24th Avenue NE',
	'Redmond', 'WA', '98053', '425-635-7566', 'Denesha.Walsh@somewhere.com');
INSERT INTO VENDOR
	(ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Fax, Email)
	VALUES(
	'Bancroft', 'Chris', '12605 NE 6th Street',
	'Bellevue', 'WA', '98005', '425-635-9788', '425-639-9978', 'Chris.Bancroft@somewhere.com');
INSERT INTO VENDOR
  (CompanyName, ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Fax, Email)
  VALUES(
	'Specialty Antiques', 'Nelson', 'Fred', '2512 Lucky Street',
	'San Francisco', 'CA', '94110', '415-422-2121', '415-429-9212', 'SA@business.com');
INSERT INTO VENDOR
  (CompanyName, ContactLastName, ContactFirstName, Address, City, State, ZIP, Phone, Fax, Email)
  VALUES(
	'General Antiques', 'Garner', 'Patty', '2515 Lucky Street',
	'San Francisco', 'CA', '94110', '415-422-3232', '415-429-9323', 'GA@business.com');


/*****   ITEM DATA   ************************************************************/

/*****   ITEM Table As Used in Figure 3-38   **************************************/

INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Antique Desk', '2013-11-07', 1800.00, 3000.00, 2);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Antique Desk Chair', '2013-11-10', 300.00, 500.00, 4);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Dining Table Linens', '2013-11-14', 600.00, 1000.00, 1);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Candles', '2013-11-14', 30.00, 50.00, 1);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Candles', '2013-11-14', 27.00, 45.00, 1);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Desk Lamp', '2013-11-14', 150.00, 250.00,  3);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Dining Table Linens', '2013-11-14', 450.00, 750.00, 1);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Book Shelf', '2013-11-21', 150.00, 250.00, 5);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Antique Chair', '2013-11-21', 750.00, 1250.00, 6);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Antique Chair', '2013-11-21', 1050.00, 1750.00, 6);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Antique Candle Holders', '2013-11-28', 210.00, 350.00, 2);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Antique Desk', '2014-01-05', 1920.00, 3200.00, 2);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Antique Desk', '2014-01-05', 2100.00, 3500.00, 2);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Antique Desk Chair', '2014-01-06', 285.00, 475.00, 9);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Antique Desk Chair', '2014-01-06', 339.00, 565.00, 9);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Desk Lamp', '2014-01-06', 150.00, 250.00, 10);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Desk Lamp', '2014-01-06', 150.00, 250.00, 10);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Desk Lamp', '2014-01-06', 144.00, 240.00, 3);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Antique Dining Table', '2014-01-10', 3000.00, 5000.00, 7);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Antique Sideboard', '2014-01-11', 2700.00, 4500.00, 8);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Dining Table Chairs', '2014-01-11', 5100.00, 8500.00, 9);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Dining Table Linens', '2014-01-12', 450.00, 750.00, 1);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Dining Table Linens', '2014-01-12', 480.00, 800.00, 1);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Candles', '2014-01-17', 30.00, 50.00, 1);
INSERT INTO ITEM (ItemDescription, PurchaseDate, ItemCost, ItemPrice, VendorID)
  VALUES(
	'Candles', '2014-01-17', 36.00, 60.00, 1);


/*****   SALE DATA   ************************************************************/

/*****   These items are based on data in Figure 3-39 ***********/

INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  1, 1, '2013-12-14', 3500.00, 290.50, 3790.50);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  2, 1, '2013-12-15', 1000.00, 83.00, 1083.00);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  3, 1, '2013-12-15', 50.00, 4.15, 54.15);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  4, 3, '2013-12-23', 45.00, 3.74, 48.74);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  1, 5, '2014-01-05', 250.00, 20.75, 270.75);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  5, 5,	'2014-01-10', 750.00, 62.25, 812.25);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  6, 4, '2014-01-12', 250.00, 20.75, 270.75);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  2, 1, '2014-01-15', 3000.00, 249.00, 3249.00);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  5, 5, '2014-01-25', 350.00, 29.05, 379.05);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  7, 1, '2014-02-04', 14250.00, 1182.75, 15432.75);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  8, 5, '2014-02-04', 250.00, 20.75, 270.75);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  5, 4, '2014-02-07', 50.00, 4.15, 54.15);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  9, 2, '2014-02-07', 4500.00, 373.50, 4873.50);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  10,	3, '2014-02-11', 3675.00, 305.03, 3980.03);
INSERT INTO SALE (CustomerID, EmployeeID, SaleDate, SubTotal, Tax, Total)
  VALUES(
  2, 2, '2014-02-11', 800.00, 66.40, 866.40);

/*****   SALE_ITEM DATA   *******************************************************/

/*****   SALE_ITEM Table As Used in Figure 3-40   *********************************/

INSERT INTO SALE_ITEM VALUES(1, 1, 1, 3000.00);
INSERT INTO SALE_ITEM VALUES(1, 2, 2, 500.00);
INSERT INTO SALE_ITEM VALUES(2, 1, 3, 1000.00);
INSERT INTO SALE_ITEM VALUES(3, 1, 4, 50.00);
INSERT INTO SALE_ITEM VALUES(4, 1, 5, 45.00);
INSERT INTO SALE_ITEM VALUES(5, 1, 6, 250.00);
INSERT INTO SALE_ITEM VALUES(6, 1, 7, 750.00);
INSERT INTO SALE_ITEM VALUES(7, 1, 8, 250.00);
INSERT INTO SALE_ITEM VALUES(8, 1, 9, 1250.00);
INSERT INTO SALE_ITEM VALUES(8, 2, 10, 1750.00);
INSERT INTO SALE_ITEM VALUES(9, 1, 11, 350.00);
INSERT INTO SALE_ITEM VALUES(10, 1, 19, 5000.00);
INSERT INTO SALE_ITEM VALUES(10, 2, 21, 8500.00);
INSERT INTO SALE_ITEM VALUES(10, 3, 22, 750.00);
INSERT INTO SALE_ITEM VALUES(11, 1, 17, 250.00);
INSERT INTO SALE_ITEM VALUES(12, 1, 24, 50.00);
INSERT INTO SALE_ITEM VALUES(13, 1, 20, 4500.00);
INSERT INTO SALE_ITEM VALUES(14, 1, 12, 3200.00);
INSERT INTO SALE_ITEM VALUES(14, 2, 14, 475.00);
INSERT INTO SALE_ITEM VALUES(15, 1, 23, 800.00);

/********************************************************************************/