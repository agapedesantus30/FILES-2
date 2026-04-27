CREATE DATABASE IBORO_HONG_FINAL_PROJECT;
USE IBORO_HONG_FINAL_PROJECT;

-- CREATING DATABASE AND TABLES
-- LIBRARY
create table Library (
	Library_ID INT primary key,
	name VARCHAR(50),
	city VARCHAR(50),
	street VARCHAR(50),
	State VARCHAR(50),
	Zip_Code VARCHAR(50),
	email VARCHAR(50),
	phone VARCHAR(50),
	HoursOfOperation VARCHAR(50)
);
insert into Library (Library_ID, name, city, street, State, Zip_Code, email, phone, HoursOfOperation) values (1, 'Torp-Hermiston', 'Madison', 'Bartelt', 'WI', '52888', 'mwaplinton0@xinhuanet.com', '608-259-8172', '12:55 AM');
insert into Library (Library_ID, name, city, street, State, Zip_Code, email, phone, HoursOfOperation) values (2, 'Sanford Group', 'Houston', 'Granby', 'TX', '25262', 'jshinfield1@shareasale.com', '713-962-2359', '1:30 AM');
insert into Library (Library_ID, name, city, street, State, Zip_Code, email, phone, HoursOfOperation) values (3, 'Moen Group', 'Raleigh', 'Farragut', 'NC', '99601', 'nconachie2@un.org', '919-995-5483', '9:06 AM');
insert into Library (Library_ID, name, city, street, State, Zip_Code, email, phone, HoursOfOperation) values (4, 'Erdman Inc', 'Omaha', 'Corben', 'NE', '42', 'rsuch3@clickbank.net', '402-199-5253', '2:49 PM');
insert into Library (Library_ID, name, city, street, State, Zip_Code, email, phone, HoursOfOperation) values (5, 'Monahan, Schmitt and Mayert', 'Washington', 'Summerview', 'DC', '341', 'dbonniface4@twitpic.com', '202-769-6643', '3:48 PM');
insert into Library (Library_ID, name, city, street, State, Zip_Code, email, phone, HoursOfOperation) values (6, 'Jaskolski-Howe', 'Washington', 'Kenwood', 'DC', '19', 'amarshland5@psu.edu', '202-469-2048', '3:49 PM');
insert into Library (Library_ID, name, city, street, State, Zip_Code, email, phone, HoursOfOperation) values (7, 'Skiles, Koss and Schuster', 'San Diego', 'Bonner', 'CA', '511', 'educhesne6@sakura.ne.jp', '619-521-0774', '7:48 PM');
insert into Library (Library_ID, name, city, street, State, Zip_Code, email, phone, HoursOfOperation) values (8, 'Rogahn, Monahan and Powlowski', 'Henderson', 'Atwood', 'NV', '01034', 'rvanderhoog7@livejournal.com', '702-249-0172', '1:46 PM');
insert into Library (Library_ID, name, city, street, State, Zip_Code, email, phone, HoursOfOperation) values (9, 'Macejkovic-Robel', 'Chula Vista', 'Sundown', 'CA', '0', 'adavidavidovics8@webs.com', '619-726-3373', '6:25 PM');
insert into Library (Library_ID, name, city, street, State, Zip_Code, email, phone, HoursOfOperation) values (10, 'Harber, Adams and Wilderman', 'Anaheim', 'Esker', 'CA', '2323', 'iporteous9@digg.com', '714-158-8108', '7:53 PM');

-- COLLECTIONS
create table COLLECTIONS (
	Col_ID INT,
	Title VARCHAR(80),
	Author VARCHAR(50),
	Genre VARCHAR(50),
	Page_Numbers INT,
	Year_Published VARCHAR(50),
	Publisher VARCHAR(50),
	Library_ID INT,
    CONSTRAINT Col_PK_CompositekEY PRIMARY KEY (Col_ID, Library_ID),
	CONSTRAINT LIB_ID FOREIGN KEY (Library_ID) REFERENCES Library (Library_ID)
);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (1, 'Sanatorium', 'Tammie Westrey', 'Thriller', 581, 1998, 'Gaylord LLC', 9);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (2, 'Volunteers', 'Magdalena Hovell', 'Comedy', 495, 1990, 'Mitchell Group', 6);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (3, 'Merchant of Venice, The', 'Jordain Shird', 'Drama', 602, 1993, 'Cummerata, Hauck and Wolf', 10);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (4, 'Report on the Party and the Guests, A (O slavnosti a hostech)', 'Dorree Dienes', 'Drama', 654, 2000, 'Mills-Sawayn', 8);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (5, 'Whoopi Goldberg Presents Moms Mabley', 'Salaidh Krug', 'Documentary', 488, 1994, 'Jones Group', 9);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (6, 'Rachel Getting Married', 'Thoma Bilsford', 'Drama|Romance', 690, 1985, 'Harris, King and Bartell', 3);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (7, 'Shadow Dancer, The (Shadows in the Sun)', 'Nerte McMahon', 'Comedy|Drama|Romance', 570, 2012, 'Medhurst Group', 3);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (8, 'China Seas', 'Blancha Proby', 'Action|Adventure|Drama|Romance', 674, 2002, 'Gottlieb-Harber', 2);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (9, 'One Way Boogie Woogie', 'Aurelie Crispe', 'Documentary', 548, 1992, 'Fisher, Thompson and McGlynn', 2);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (10, 'Wicked City (Yôjû toshi)', 'Andy Fishleigh', 'Animation|Fantasy|Horror|Sci-Fi', 739, 1994, 'Ferry-MacGyver', 10);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (11, 'Tracker, The', 'Antons Georgeson', 'Drama', 745, 1995, 'McCullough-Ritchie', 9);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (12, 'Forklift Driver Klaus: The First Day on the Job', 'Brucie Blumire', 'Comedy|Horror', 643, 1960, 'Boehm-Carter', 8);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (13, 'Enforcer, The', 'Marius Trevear', 'Crime', 753, 2012, 'Davis-Considine', 3);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (14, 'Pawn', 'Walt Giacomello', 'Crime|Thriller', 480, 1999, 'Hane and Sons', 7);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (15, 'Beverly Hills Cop', 'Cherye Efford', 'Action|Comedy|Crime|Drama', 653, 1997, 'Robel Inc', 8);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (16, 'Breaking the Girls ', 'Dianne Doudney', 'Crime|Thriller', 753, 2012, 'Welch-Klocko', 7);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (17, 'Hour of the Furnaces, The (Hora de los hornos, La)', 'Timotheus Tookey', 'Documentary|War', 543, 2001, 'Stoltenberg, Greenfelder and Bartell', 2);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (18, 'Earth Trembles, The (Terra trema: Episodio del mare, La)', 'Rik Tickel', 'Drama', 568, 1994, 'Konopelski, Bechtelar and Howell', 8);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (19, 'Phantasm IV: Oblivion', 'Alida Arkle', 'Horror', 604, 2004, 'Carter Group', 2);
insert into COLLECTIONS (Col_ID, Title, Author, Genre, Page_Numbers, Year_Published, Publisher, Library_ID) values (20, 'Collector, The (La collectionneuse)', 'Sigismondo Fick', 'Drama', 738, 2002, 'Harvey-Barton', 8);

-- MEMBERS
create table Members (
	Member_ID INT PRIMARY KEY,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	Street VARCHAR(50),
	City VARCHAR(50),
	Zip_code VARCHAR(50),
	Email VARCHAR(50),
	Phone VARCHAR(50)
);
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (1, 'Kathie', 'Quartley', 'Novick', 'Canala', '895', 'kquartley0@wordpress.com', '796-170-7820');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (2, 'Desiree', 'Barkly', 'Nova', 'Kalangan', '8', 'dbarkly1@mtv.com', '887-905-3157');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (3, 'Filide', 'Wellbeloved', 'Rusk', 'Kiamba', '883', 'fwellbeloved2@jigsy.com', '548-160-1426');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (4, 'Charleen', 'Macauley', 'Warner', 'Kuala Lumpur', '19', 'cmacauley3@cyberchimps.com', '647-316-9506');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (5, 'Vivyan', 'Ramsted', 'Declaration', 'San Bernardino', '62993', 'vramsted4@aol.com', '257-575-6512');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (6, 'Dav', 'Ghent', 'Hudson', 'Mỹ Tho', '5662', 'dghent5@amazon.com', '272-646-9040');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (7, 'Carlynne', 'Muslim', 'Namekagon', 'Wolmaransstad', '41389', 'cmuslim6@shinystat.com', '229-849-2191');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (8, 'Sascha', 'Pfeffel', 'Merchant', 'Kandava', '8679', 'spfeffel7@sciencedirect.com', '489-808-5402');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (9, 'Lilly', 'Kemson', 'Coolidge', 'Krajan Tanjungrejo', '6246', 'lkemson8@unicef.org', '195-675-8520');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (10, 'Chas', 'Calbrathe', 'Hoard', 'Laon', '66890', 'ccalbrathe9@statcounter.com', '995-472-9166');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (11, 'Tracie', 'Jarad', 'Atwood', 'Angered', '38', 'tjarada@tripod.com', '453-362-7082');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (12, 'Filide', 'Boxill', 'Westridge', 'Huangyang', '7', 'fboxillb@lulu.com', '183-777-8244');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (13, 'Sada', 'Sibyllina', 'Kenwood', 'Bhola', '57', 'ssibyllinac@latimes.com', '573-827-1470');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (14, 'Arabella', 'de Clerk', 'Forster', 'Sovetakan', '76059', 'adeclerkd@sbwire.com', '822-586-1118');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (15, 'Lindi', 'Cardnell', 'Hoffman', 'Moville', '8828', 'lcardnelle@youtube.com', '680-415-2845');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (16, 'Anni', 'Smaile', 'East', 'Luziânia', '9432', 'asmailef@umn.edu', '636-612-0999');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (17, 'Thadeus', 'Whitlock', 'Bultman', 'Chişinău', '65740', 'twhitlockg@cam.ac.uk', '900-122-2917');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (18, 'Britt', 'Iorio', 'Delladonna', 'Zhuping', '95', 'biorioh@studiopress.com', '602-570-6078');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (19, 'Ashly', 'Huskisson', 'Myrtle', 'La Goulette', '67', 'ahuskissoni@bing.com', '644-224-0761');
insert into Members (Member_ID, first_name, last_name, Street, City, Zip_code, Email, Phone) values (20, 'Rora', 'Badcock', 'Messerschmidt', 'Mamurras', '0071', 'rbadcockj@oaic.gov.au', '636-893-7682');

-- BOOKS_CHECK_OUT
create table BOOKS_cHECK_OUT (
	BCO_id INT PRIMARY KEY,
	Date_Checked_Out DATE,
	Date_to_be_Returned DATE,
	Date_Returned DATE,
	Title VARCHAR(80),
	MemberID INT,
    CONSTRAINT Members_memberID FOREIGN KEY (MemberID) REFERENCES Members (Member_ID)
);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (1, '2019/8/15', '2019/3/10', '2019/2/18', 'Belle and Sebastien (Belle et Sébastien)', 12);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (2, '2019/8/26', '2019/5/16', '2019/8/9', 'Arn: The Kingdom at Road''s End (Arn: Riket vid vägens slut)', 8);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (3, '2018/12/4', '2019/4/5','2019/1/17', 'The Big Sleep', 6);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (4, '2019/10/25','2019/11/20','2019/7/12', 'Cloudburst', 1);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (5, '2019/4/7', '2019/9/12','2019/7/10', '36th Chamber of Shaolin, The (Shao Lin san shi liu fang) (Master Killer)', 1);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (6, '2018/12/23', '2019/10/8','2019/10/3', 'Squall, The', 19);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (7, '2019/4/13','2019/3/30','2018/12/16', 'Before Midnight', 4);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (8, '2019/7/2', '2018/12/7', '2019/9/19', 'Art of the Steal, The', 19);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (9, '2019/3/14', '2019/10/26','2019/6/8', 'Ragnarok', 6);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (10, '2019/6/23', '2019/3/19','2019/9/5', 'Victor Sjöström: Ett porträtt', 11);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (11, '2019/11/3','2019/4/23','2019/10/2', 'Revenant, The', 4);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (12, '2019/2/26','2019/11/1','2019/5/7', 'Villain, The (Le Vilain)', 10);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (13, '2019/9/9', '2019/6/18', '2019/5/1', 'Riot On!', 12);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (14, '2019/11/8', '2018/12/12', '2019/4/20', 'Children of Glory (Szabadság, szerelem)', 14);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (15, '2019/9/2', '2019/10/12', '2019/2/6', 'Back to the Future Part II', 2);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (16, '2019/6/27', '2019/10/29', '2019/8/12', 'Whity', 10);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (17, '2019/3/21', '2019/9/13', '2019/1/29', 'Dog Day (Canicule)', 20);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (18, '2019/2/7', '2019/5/6', '2019/9/21', 'Magnum Cop', 19);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (19, '2019/11/16', '2019/6/25', '2019/5/22', 'Sound and the Fury, The', 8);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (20, '2019/10/10', '2018/11/26', '2019/2/13', 'Threads', 4);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (21, '2019/1/2', '2019/11/8', '2019/8/18', 'Very Long Engagement, A (Un long dimanche de fiançailles)', 14);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (22, '2019/7/1', '2018/12/5', '2019/9/22', 'Colorado Avenue', 9);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (23, '2019/3/4', '2019/3/3', '2019/5/17', 'Loving You', 11);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (24, '2018/12/9', '2019/11/21', '2019/5/20', 'End of the Century: The Story of the Ramones', 20);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (25, '2019/3/18', '2018/12/2', '2019/4/2', 'Minnie and Moskowitz', 11);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (26, '2019/7/5', '2019/4/14', '2019/10/21', 'The Wild Bunch: An Album in Montage', 9);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (27, '2019/3/14', '2019/5/31', '2018/12/10', 'Bunnyman', 15);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (28, '2019/10/15', '2019/1/11', '2019/9/16', 'Koyaanisqatsi (a.k.a. Koyaanisqatsi: Life Out of Balance)', 20);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (29, '2019/9/4', '2019/3/22', '2019/9/2', 'Eddie and the Cruisers II: Eddie Lives!', 1);
insert into BOOKS_cHECK_OUT (BCO_id, Date_Checked_Out, Date_to_be_Returned, Date_Returned, Title, MemberID) values (30, '2019/8/8', '2019/1/19', '2019/5/5', 'Night of the Zombies (a.k.a. Batallion of the Living Dead)', 12);

-- BOOKS_FOR_SALE
create table BOOKS_FOR_SALE (
	BFS_id INT PRIMARY KEY,
	Price decimal(15,2),
	Title VARCHAR(80),
	MemberID INT,
    CONSTRAINT Member_memberID FOREIGN KEY (MemberID) REFERENCES Members (Member_ID)
);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (1, 2.20, 'Hybrid', 20);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (2, 3.07, 'City in the Sea', 11);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (3, 7.28, '18 Years Later (Diciotto anni dopo)', 4);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (4, 6.45, 'External Affairs', 13);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (5, 8.91, 'Sisters, The', 2);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (6, 2.04, 'Biker Boyz', 7);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (7, 4.69, '4', 8);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (8, 5.60, 'Androcles and the Lion', 1);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (9, 4.09, 'Dirty Dozen, The: The Fatal Mission', 9);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (10, 5.34, 'High School High', 7);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (11, 3.02, 'Witches, The', 9);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (12, 0.62, 'Thrill of It All, The', 19);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (13, 3.36, 'When Dinosaurs Ruled the Earth', 8);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (14, 6.46, 'Cardcaptor Sakura: The Sealed Card', 7);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (15, 9.10, 'Son of the Pink Panther', 11);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (16, 9.93, 'Opera', 10);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (17, 5.02, 'Genghis Khan', 12);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (18, 6.84, 'Always Leave Them Laughing', 10);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (19, 9.72, 'Guy', 19);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (20, 0.49, 'Caller, The', 18);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (21, 0.46, 'Kings of the Road (Im Lauf der Zeit)', 14);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (22, 9.01, 'Mike Birbiglia: My Girlfriend''s Boyfriend', 20);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (23, 7.86, 'Street Without End (Kagirinaki hodo)', 5);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (24, 0.67, 'Neil Young: Human Highway', 7);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (25, 0.46, 'Platform (Zhantai)', 12);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (26, 3.57, 'How to Survive a Plague', 15);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (27, 5.90, 'Bouncing Babies', 1);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (28, 9.73, 'Still Mine', 3);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (29, 1.24, 'In Between Days', 9);
insert into BOOKS_FOR_SALE (BFS_id, Price, Title, MemberID) values (30, 1.73, 'Stone Angel, The', 15);

-- PENALTY
create table PENALTY (
	Penalty_id INT,
	Fee decimal(15,2),
	BCO_ID INT,
    CONSTRAINT bco_ID_pk_composite PRIMARY KEY (Penalty_id, BCO_ID),
	CONSTRAINT bco_ID FOREIGN KEY (BCO_ID) REFERENCES BOOKS_cHECK_OUT (BCO_id)
);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (1, 84.65, 14);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (2, 55.25, 18);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (3, 72.18, 7);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (4, 78.38, 13);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (5, 27.99, 23);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (6, 47.84, 9);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (7, 60.82, 26);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (8, 22.06, 1);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (9, 87.96, 27);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (10, 47.02, 14);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (11, 21.31, 27);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (12, 31.09, 2);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (13, 69.48, 11);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (14, 51.40, 3);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (15, 24.53, 28);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (16, 60.80, 30);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (17, 67.42, 22);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (18, 64.99, 16);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (19, 83.24, 30);
insert into PENALTY (Penalty_id, Fee, BCO_ID) values (20, 58.38, 11);

-- COLLECTONS_HAS_BOOKS_CHECK_OUT
create table COLLECTION_HAS_BOOK_CHECK_OUT (
	Collec_id INT,
	Collec_Lib_Lib_ID INT,
	Bks_Chk_out_BCO_ID INT,
    CONSTRAINT Collections_ID foreign key (Collec_id) REFERENCES COLLECTIONS (Col_ID),
	CONSTRAINT Collections_Library_Library_ID foreign key (Collec_Lib_Lib_ID) references Library (Library_ID),
	CONSTRAINT Books_Check_out_BCO_ID foreign key (Bks_Chk_out_BCO_ID) references BOOKS_cHECK_OUT (BCO_id)
);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (3, 7, 23);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (13, 7, 3);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (17, 8, 6);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (6, 10, 13);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (5, 3, 29);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (7, 7, 7);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (7, 9, 26);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (20, 10, 8);

insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (13, 4, 16);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (11, 1, 12);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (10, 5, 29);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (15, 6, 22);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (13, 3, 17);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (15, 9, 1);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (19, 5, 8);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (5, 4, 23);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (1, 7, 19);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (16, 5, 24);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (13, 5, 3);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (2, 7, 12);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (14, 4, 3);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (5, 6, 11);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (1, 4, 14);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (15, 3, 23);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (9, 1, 7);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (1, 4, 8);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (3, 5, 18);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (4, 1, 23);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (9, 4, 4);
insert into COLLECTION_HAS_BOOK_CHECK_OUT (Collec_id, Collec_Lib_Lib_ID, Bks_Chk_out_BCO_ID) values (19, 3, 7);

-- COLLECTIONS_HAS_BOOKS_FOR_SALE
create table COLLECTION_HAS_BOOKS_FOR_SALE (
	Collect_id INT,
	Collect_Libr_Libr_ID INT,
	Bks_for_sale_BFS_ID INT,
    constraint Collection_ID foreign key (Collect_id) references COLLECTIONS (Col_ID),
	constraint Collection_Library_Library_ID foreign key (Collect_Libr_Libr_ID) references Library (Library_ID),
	constraint Book_for_sale_BFS_ID foreign key (Bks_for_sale_BFS_ID) references BOOKS_FOR_SALE (BFS_id)
);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (17, 6, 26);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (8, 8, 11);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (5, 6, 23);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (20, 3, 18);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (5, 9, 2);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (1, 2, 10);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (4, 1, 13);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (15, 6, 23);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (18, 4, 9);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (8, 10, 15);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (12, 6, 30);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (1, 5, 14);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (2, 4, 8);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (10, 2, 2);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (1, 1, 1);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (18, 2, 17);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (14, 3, 28);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (9, 3, 25);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (12, 4, 14);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (9, 2, 6);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (16, 2, 16);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (10, 6, 25);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (14, 10, 10);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (17, 7, 23);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (19, 9, 8);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (6, 10, 28);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (4, 10, 18);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (3, 2, 3);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (5, 8, 19);
insert into COLLECTION_HAS_BOOKS_FOR_SALE (Collect_id, Collect_Libr_Libr_ID, Bks_for_sale_BFS_ID) values (8, 2, 21);

-- SELECT STATEMENTS

USE IBORO_HONG_FINAL_PROJECT;
-- QUERY 1
SELECT Title, Genre, Page_Numbers
FROM COLLECTIONS
WHERE Genre like 'Drama' and Page_Numbers > 500;

-- QUERY 2
SELECT *
FROM library
ORDER BY name ASC;

-- QUERY 3
SELECT Title, max(price) as Most_Expensive
FROM books_for_sale;

-- QUERY 4
SELECT Member_ID, first_name, last_name, Phone
FROM members
WHERE Member_ID in 
(SELECT MemberID FROM books_check_out WHERE Date_Checked_Out Like '2019%' AND MemberID IN
(SELECT MemberID FROM books_for_sale WHERE Price > 9.00));

-- QUERY 5
SELECT M.first_name, M.last_name, B.Date_to_be_Returned, B.Date_Returned
FROM Members as M inner join Books_check_out as B
on M.Member_ID = B.MemberID;

-- QUERY 6
SELECT Title, Price, (Price + 5.00) as New_Price
from books_for_sale;

-- QUERY 7
SELECT M.first_name, M.last_name, count(*) as Books_they_Have
FROM Members as M inner join Books_check_out as B
on M.Member_ID = B.MemberID
GROUP BY B.MemberID
ORDER BY Books_they_Have DESC;
