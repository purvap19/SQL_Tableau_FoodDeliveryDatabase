CREATE DATABASE food_delivery;
USE food_delivery;

/*Customers*/
CREATE TABLE customers (
id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
first_name VARCHAR(25) NOT NULL,
last_name VARCHAR(25) NOT NULL,
city_id INT NOT NULL,
email VARCHAR(50) NOT NULL,
phone_number VARCHAR(10) NOT NULL,
joined_at TIMESTAMP DEFAULT NOW(),
FOREIGN KEY (city_id) 
REFERENCES city(id)
);

/*Restaurants*/
CREATE TABLE restaurants (
restaurant_id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(50) NOT NULL,
address VARCHAR(100) NOT NULL,
city VARCHAR(50) NOT NULL,
state VARCHAR(50) NOT NULL,
zipcode INT NOT NULL,
city_id INT NOT NULL,
FOREIGN KEY (city_id) 
REFERENCES city (id)
);

/*City*/
CREATE TABLE city (
id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
name VARCHAR(25) NOT NULL
);

/*Delivery Orders*/
CREATE TABLE delivery_orders (
order_id INT AUTO_INCREMENT UNIQUE PRIMARY KEY,
order_time TIMESTAMP, 
customer_id INT,
restaurant_id INT,
total_price DECIMAL(5,2),
discount DECIMAL(5,2),
order_status VARCHAR(25),
predicted_time TIMESTAMP,
actual_time TIMESTAMP,
FOREIGN KEY (customer_id)
REFERENCES customers(id),
FOREIGN KEY (restaurant_id)
REFERENCES restaurants (restaurant_id)
);

/* Inserting data*/
INSERT INTO city(name)
 VALUES
('Los Angeles'),
('San Francisco'),
('Chicago'),
('Houston'),
('Fort Lauderdale'),
('Miami'),
('Phoenix'),
('Philadelphia'),
('Raleigh'),
('San Jose'),
('Denver'),
('Nashville'),
('Charlotte'),
('Columbus'),
('Fort Worth'),
('Dallas'),
('San Antonio'),
('San Diego'),
('Las Vegas'),
('Fresno'),
('Boston'),
('Oklahoma City'),
('Sacramento'),
('Atlanta'),
('Baltimore'),
('Tulsa'),
('Arlington'),
('Tampa'),
('New York'),
('Austin'),
('Seattle'),
('Kansas City'),
('Honolulu'),
('Newark'),
('Norfolk'),
('Boise City'),
('Rochester'),
('Detroit'),
('Memphis'),
('Jacksonville'),
('Hartford'),
('New Brunswick'),
('Orlando'),
('Madison'),
('Jersey City'),
('Cedar Rapids'),
('Savannah'),
('Portland'),
('Washington DC'),
('Atlantic City');

/*Inserting data for customer table*/
INSERT INTO customers(first_name,last_name, city_id, email, phone_number, joined_at)
 VALUES
 ('Adison','Turner',6,'a.turner@gmail.com',707412031,'2019-03-30 22:03:45'),
 ('Victor','Hall',16,'victor1@gmail.com',816657737,'2020-06-18 20:15:50'),
 ('Fenton','Rusell',7,'fentonr@yahoo.com',602142150,'2019-01-19 09:23:40'),
 ('Antony','Cooper',19,'atony@gmail.com',877955171,'2020-08-28 14:20:23'),
 ('Melanie','Barnes',8,'melaniebar@gmail.com',270365881,'2019-05-05 23:06:15'),
 ('Carl','Campbell',28,'carl123@gmail.com',515168056,'2020-03-15 12:00:20'),
 ('Victor','Lopez',29,'lopez23@yahoo.com',796510527,'2022-04-29 18:27:15'),
 ('Abraham','Ryan',50,'abryan@gmail.com',018811888,'2023-05-23 16:30:19'),
 ('Kevin','Ross',23,'sunshine213@gmail.com',861552248,'2022-09-12 19:25:10'),
 ('Samantha','Dixon',1,'dixonsam@gmail.com',236215639,'2021-08-12 10:34:12'),
 ('Kimberly','Brooks',16,'kimbrooks@gmail.com',906596821,'2019-04-23 09:18:45'),
 ('Ryan','Cunningham',17,'ryancgam@yahoo.com',135939268,'2019-06-28 14:12:56'),
 ('Paige','Cole',29,'paigecole23@yahoo.com',212477012,'2020-10-12 17:34:21'),
 ('Paul','Stewart',15,'paul342@gmail.com',923219708,'2022-05-04 18:16:23'),
 ('Chloe','Hamilton',38,'chloe09@gmail.com',081075777,'2023-01-12 14:06:18'),
 ('Melanie','Lloyd',45,'memlloyd98@gmail.com',585664379,'2021-10-12 09:02:34'),
 ('David','Chapman',47,'davidchap56@yahoo.com',899612735,'2019-01-10 15:18:34'),
 ('Kevin','Mason',27,'kevin34536@yahoo.com',066587478,'2023-03-27 02:23:43'),
 ('Sam','Chang',2,'samchang76@gmail.com',072138890,'2020-02-19 14:34:54'),
 ('Ada','Mithcell', 21,'adamit34@yahoo.com',18757905,'2021-12-23 13:05:38'),
 ('John','Harris',37,'harris109@gmail.com',770725508,'2022-09-10 15:43:32'),
 ('Ted','Walker',48,'ted4636@gmail.com',612658536,'2022-12-04 22:37:54'),
 ('Lily','Miller',28,'lily43@gmail.com',429559522,'2019-06-21 15:56:23'),
 ('Heather','Stevens',19,'heather.stevens21@gmail.com',162256559,'2020-10-23 17:12:37'),
 ('Sienna','Anthony',30,'sienn445@yahoo.com',5642354787,'2022-09-23 14:45:53'),
 ('Jordan','Parker',38,'parkjordan34@gmail.com',727223345,'2021-07-15 18:12:32'),
 ('Sawyer','Johnson',47,'sawyear.johnson35@yahoo.com',466542104,'2022-04-12 12:34:01'),
 ('Eric','Mason',14,'ericmason1034@yahoo.com',496466078,'2019-02-28 16:19:34'),
 ('Adison','Perkins',10,'perkinsad396@gmail.com',965826105,'2019-05-12 14:45:05'),
 ('Penelope','Adams',25,'penelope.adams4535@gmail.com',756764525,'2020-07-13 09:56:34'),
 ('Myra','Craig',16,'myracraig5462@yahoo.com',616217554,'2022-07-19 23:15:54'),
 ('Charlotte','Hill',9,'hill123charlotte@gmail.com',025572624,'2021-11-23 19:54:59'),
 ('Adele','Smith',42,'adele1032@gmail.com',96548045,'2022-10-17 22:45:12'),
 ('Keagan','Richards',49,'keagan231@gmail.com',204283047,'2021-04-21 15:43:51'),
 ('Tiana','Davis',33,'davis19tianna@yahoo.com',57936479,'2019-10-04 12:23:40'),
 ('Eddy','Jones',35,'eddyjones4641@gmail.com',453028394,'2023-02-28 14:33:23'),
 ('Derek','Nelson',21,'derek101@yahoo.com',242559460,'2021-04-23 10:05:35'),
 ('Vanesa','Allen',10,'vanessallen532@gmail.com',615663987,'2022-05-12 14:43:25'),
 ('Nicholas','Zhang',5,'zhangnick83@gmail.com',352984554,'2021-11-08 17:08:13'),
 ('Arianna','Russell',16,'ariannaruss3784@gmail.com',541400329,'2020-06-03 13:12:43'),
 ('Ella','Santiago',43,'ellasan743@gmail.com',597624115,'2022-09-23 15:07:18'),
 ('Ronald','Fowler',6,'ronaldfowler33@gmail.com',283156919,'2021-09-25 18:10:23'),
 ('Max','Harrison',39,'max.harry653@yahoo.com',463579802,'2019-05-29 19:21:53'),
 ('James','McKinley',11,'mckinley.james930@gmail.com',335135034,'2021-10-12 12:26:43'),
 ('Michelle','Larry',25,'michelle101@gmail.com',281531408,'2020-03-29 18:23:32');

/*Inserting data into restaurants table*/
INSERT INTO restaurants (name,address,city,state,zipcode,city_id)
VALUES 
('Del Taco','4376 Sunset Boulevard', 'Los Angeles', 'California',90027,1),
('Jack in the Box','4407 S Central Avenue', 'Los Angeles','California',90011,1),
("McDonald's",'2810 S Figueroa Street', 'Los Angeles','California', 90007,1),
('Subway','1728 S Western Avenue', 'Los Angeles', 'California', 90006,1),
('Chipotle','2595 Hoover Street B', 'Los Angeles', 'California', 90007,1),
('Taco Bell','3029 W 8th Street', 'Los Angeles', 'California', 90005, 1),
('In-N-Out','9245 Venice Boulevard', 'Los Angeles', 'California', 900034,1),
('In-N-Out',' 333 Jefferson Street', 'San Francisco','California', 94133,2),
("McDonald's",'1100 Fillmore Street', 'San Francisco', 'California', 94115,2),
('Taco Bell','4285 Mission Street', 'San Francisco', 'California', 94112, 2),
('Jack in the Box','4649 Geary Boulevard', 'San Francisco', 'California', 94118,2),
('Subway','425 Bush Street', 'San Francisco','California', 94108,2),
('Chipotle','2675 Geary Boulevard', 'San Francisco', 'California', 94118,2),
('Royal Indian Cuisine','1740 Fillmore Street', 'San Francisco', 'California', 94115,2),
('Dumpling House','298 Gough Street', 'San Francisco', 'California', 94102,2),
('Subway','1762 N Clybourn Avenue', 'Chicago', 'Illinois',60614,3),
('Taco Bell','500 W Madison Street', 'Chicago', 'Illinois',60661,3),
('Chipotle','1733 N Damen Avenue', 'Chicago', 'Illinois',60647,3),
("Chicago's Pizza",'3114 N Lincoln Avenue', 'Chicago', 'Illinois', 60657,3),
("McDonald's",'1035 W Randolph Street', 'Chicago', 'Illinois', 60607,3),
('Burger King','2803 Yale Street', 'Houston', 'Texas', 77008,4),
('Taco Bell','3356 Scott Street', 'Houston','Texas', 77004,4),
('Chipotle','8401 Westheimer Road', 'Houston', 'Texas', 77063,4),
("Halal Jasmin's Indian Cuisine",'12086 Veterans Memorial Drive', 'Houston', 'Texas', 77067,4),
("Mcdonald's", '3025 Ella Boulevard', 'Houston', 'Texas', 77018,4),
("McDonald's",'2700 Davie Boulevard', 'Fort Lauderdale', 'Florida', 33312,5),
('Chipotle','4850 N Federal Highway', 'Fort Lauderdale', 'Florida', 33308,5),
('Taco Bell','3500 W Broward Boulevard', 'Fort Lauderdale', 'Florida', 33312,5),
('Tijuana Flats','1619 E Sunrise Boulevard', 'Fort Lauderdale', 'Florida', 33304,5),
('Burger King','1445 W Sunrise Boulevard', 'Fort Lauderdale', 'Florida', 33311,5),
('Burger King','2801 SW 27th Avenue', 'Miami', 'Florida', 33133,6),
('Taco Bell','966 SW 8th Street', 'Miami', 'Florida', 33130,6),
('Chipotle','2235 SW 37th Avenue', 'Miami', 'Florida', 33145,6),
("Mcdonald's", '1016 W Flagler Street', 'Miami', 'Florida', 33130,6),
("Wendy's",'200 SW 8th Street', 'Miami', 'Florida', 33130,6),
("Mcdonald's", '3455 W Peoria Avenue', 'Phoenix','Arizona' , 85029,7),
('Burger King', '13635 N 35th Avenue', 'Phoenix', 'Arizona', 85029,7),
('Taco Bell', '3507 W Peoria Avenue', 'Phoenix', 'Arizona', 85029,7),
('Chipotle','3039 W Peoria Ave C105', 'Phoenix', 'Arizona', 85029,7),
('Taco Boys','620 E Roosevelt Street', 'Phoenix', 'Arizona', 85004,7),
('Burger King','1521 S Christopher Columbus Boulevard', 'Philadelphia', 'Pennsylvania',19147,8),
("Mcdonald's",'2nd Lehigh Avenue', 'Philadelphia', 'Pennsylvania', 19133,8),
('Taco Bell','4001 N 5th Street', 'Philadelphia', 'Pennsylvania', 19140,8),
('Wood Street Pizza','325 N 12th Street', 'Philadelphia', 'Pennsylvania',19107,8),
("McDonald's",'4212 Wake Forest Road', 'Raleigh', 'North Carolina', 27609,9),
('Taco Bell','4004 Capital Boulevard', 'Raleigh', 'North Carolina', 27604,9),
('Chipotle','2316 Hillsborough Street', 'Raleigh', 'North Carolina', 27607,9),
('Royal India','3901 Capital Boulevard Suite 103', 'Raleigh', 'North Carolina', 27604,9),
('Burger King','2532 Channing Avenue', 'San Jose', 'California', 95131,10),
('Taco Bell', '720 Story Road', 'San Jose', 'California', 95122,10),
('Kenji Sushi','385 S Winchester Boulevard', 'San Jose', 'California', 95128,10),
('Chipotle','140 Steele Street', 'Denver', 'Colorado', 80206,11),
("McDonald's", '300 S Broadway', 'Denver', 'Colorado', 80209,11),
('Thai Basil','1400 E 18th Avenue', 'Denver','Colorado', 80218,11),
('Burger King','2011 8th Avenue', 'Nashville', 'Tennessee', 37204,12),
("Jack's Bar-B-Que",'416 Broadway', 'Nashville', 'Tennessee', 37203,12),
('Five Points Pizza East','1012 Woodland Street', 'Nashville', 'Tennessee', 37206,12),
("Wendy's ",'2603 West End Avenue', 'Nashville', 'Tennessee', 37203,12),
('Taco Bell','4601 N Tryon Street', 'Charlotte', 'North Carolina', 28213,13),
('Chipotle','239 S Kings Drive B', 'Charlotte', 'North Carolina', 28204,13),
('Pizza Rustica','17 S High Street', 'Columbus', 'Ohio', 43215,14),
('Chick-fil-A','807 W 3rd Avenue', 'Columbus', 'Ohio', 43212,14),
('Taco Bell','2553 N High Street', 'Columbus', 'Ohio', 43202,14),
('Salsa Limon','550 Throckmorton Street', 'Fort Worth', 'Texas', 76102,15),
('Chipotle','3000 W 7th Street', 'Fort Worth', 'Texas', 76107,15),
('Chipotle','4330 Lemmon Avenue', 'Dallas', 'Texas', 75219,16),
("McDonald's", '10720 Preston Road', 'Dallas', 'Texas', 75230, 16),
('Jack in the Box','7940 Lyndon B Johnson Freeway', 'Dallas', 'Texas', 75251,16),
('Chick-fil-A','3820 W Northwest Highway', 'Dallas', 'Texas', 75220,16),
('Whataburger','412 E Commerce Street', 'San Antonio', 'Texas', 78205,17),
('Chipotle','849 E Commerce Street','San Antonio', 'Texas', 78205,17),
('Chipotle','3680 Rosecrans Street', 'San Diego', 'California', 92100,18),
('Jack in the Box','1619 Pacific Highway', 'San Diego', 'California', 92101,18),
('In-N-Out','2910 Damon Avenue', 'San Diego', 'California', 92109,18),
('Chipotle','2540 S Decatur Boulevard', 'Las Vegas', 'Nevada', 89102,19),
('Saffron Flavors of India','4450 N Tenaya Way', 'Las Vegas', 'Nevada', 89129,19),
('Jack in the Box','3110 Tulare Street', 'Fresno', 'California', 93702,20),
('Sushi Day','7745 N First Street', 'Fresno', 'California',93720,20),
('Picco','513 Tremont Street', 'Boston', 'Massachusetts', 02116,21),
('Taco Bell','449 W Broadway', 'Boston', 'Massachusetts', 02127,21),
('Thai Kitchen','327 Dean A McGee Avenue', 'Oklahoma City', 'Oklahoma', 73102,22),
('Jalapenos Restaurant','1413 21st Street', 'Sacramento', 'California', 95811,23),
('Chipotle','1831 Capitol Avenue', 'Sacramento', 'California', 95811,23),
('Jack in the Box','4601 Broadway', 'Sacramento', 'California', 95820,23),
('Taco Bell','2420 N Druid Hills Road', 'Atlanta', 'Georgia', 30329,24),
('KFC','3901 Buford Highway NE', 'Atlanta', 'Georgia',30329,24),
('Canton Cooks','5984 Roswell Road NE', 'Atlanta', 'Georgia', 30328,24),
('Maiwand Grill','324 W Baltimore Street','Baltimore', 'Maryland', 21201,25),
('Nacho Bangers','26 W Read Street', 'Baltimore', 'Maryland', 21202,25),
('Jack in the Box','10861 E 41st Street', 'Tulsa', 'Oklahoma',74146,26),
('Taco Bell','2039 Wilson Boulevard', 'Arlington', 'Virginia', 22201,27),
('Tijuana Flats','1617 W Platt Street','Tampa', 'Florida', 33606,28),
('The Hungry Greek','808 N Franklin Street','Tampa', 'Florida',33602,28),
('Taco Holic','500 N Florida Avenue', 'Tampa', 'Florida', 33602,28),
('Wei West','235 Murray Street', 'New York', 'New York', 10282,29),
('JR Sushi','86 W Broadway', 'New York', 'New York',10007,29),
('DomoDomo','140 W Houston Street', 'New York', 'New York',10012,29),
('Taco Bell','9504 N Lamar Boulevard', 'Austin', 'Texas',78753,30),
('Whataburger','6205 N Lamar Boulevard', 'Austin', 'Texas', 78752,30),
('Tacodeli','301 Congress Avenue', 'Austin', 'Texas', 78701,30),
('Five Guys','1500 NW Market Street','Seattle', 'Washington', 98107,31),
('Jack in the Box','1904 4th Avenue S', 'Seattle','Washington', 98134,31),
('Jets Local Fast Food','2957 Koapaka Street A', 'Honolulu', 'Hawaii', 96819,33),
("Carl's Jr.",'2140 N Nimitz Highway', 'Honolulu', 'Hawaii', 96819,33),
('Hamburgao','288 Lafayette Street', 'Newark', 'New Jersey', 07105,34),
('Sonic Drive-In','189-237 Springfield Avenue', 'Newark', 'New Jersey',07103,34),
('Taco Bell','350 Broad Street','Newark','New Jersey',07104,34),
('Pokey','215 Granby Street', 'Norfolk', 'Virginia',23510,35),
('Subway','1100 E Main Street','Boise City', 'Oklahoma',73933,36),
('Peppa Pot','522 E Main Street', 'Rochester', 'New York',14604,37),
('Chipotle','1495 East Ridge Road','Rochester', 'New York',14621,37),
('Checkers','17620 Grand River Avenue', 'Detroit', 'Michigan', 48227,38),
('Burger King','6251 Vernon Highway', 'Detroit', 'Michigan',48209,38),
("McDonald's",'3149 Thomas Street', 'Memphis', 'Tennessee', 38127,39),
('Taverna','1986 San Marco Boulevard','Jacksonville', 'Florida', 32207,40),
('Whataburger','8840 Beach Boulevard','Jacksonville','Florida',32216,40),
('Tijuana Flats','9942 Old Baymeadows Road', 'Jacksonville', 'Florida', 32256,40),
('Mofongo Restaurant','1400 Park Street', 'Hartford', 'Connecticut', 06106,41),
('Chipotle','387 George Street','New Brunswick', 'New Jersey',08901,42),
("Bubbakoo's Burritos",'53 Easton Avenue', 'New Brunswick', 'New Jersey',08901,42),
('Stuff Yer Face','49 Easton Avenue', 'New Brunswick', 'New Jersey',08901,42),
('Tijuana Flats','2914 E Colonial Drive', 'Orlando', 'Florida',32803,43),
('Thai Island Orlando','2522 S Semoran Boulevard', 'Orlando', 'Florida',32822,43),
('DomoDomo','200 Greene Street','Jersey City','New Jersey',07311,45),
('Taqueria Downtown','236 Grove Street','Jersey City','New Jersey',07302,45),
('Five Guys','157 Collins Road NE', 'Cedar Rapids','Iowa',52402,46),
("Taco John's",'223 Collins Road NE','Cedar Rapids','Iowa',52402,46),
('Checkers','2510 Skidaway Road', 'Savannah', 'Georgia',31404,47),
("Arby's",'2635 Skidaway Road', 'Savannah', 'Georgia',31404,47),
('All About Burger','1101 4th Street SW','Washington','DC',20024,49),
('Checkers','2300 New York Avenue NE', 'Washington', 'DC', 20002,49),
("Mcdonald's",'1235 New York Avenue NW', 'Washington','DC',20005,49),
('Johnny Rockets','1900 Pacific Avenue','Atlantic City','New Jersey',08401,50),
('Chef King','2320 Artic Avenue', 'Atlantic City', 'New Jersey',08401,50),
('Mr.Taco','3101 Atlantic Avenue', 'Atlantic City', 'New Jersey',08401,50),
('Pizza Hut','1501 Atlantic Avenue', 'Atlantic City', 'New Jersey',08401,50);

/*Making changes to delivery_orders table*/
ALTER TABLE delivery_orders
DROP COLUMN order_status;
ALTER TABLE delivery_orders MODIFY predicted_time TIME;
ALTER TABLE delivery_orders MODIFY actual_time TIME;

/*Inserting data into delivery_orders table */
INSERT INTO delivery_orders (order_time,customer_id,restaurant_id,total_price,discount,predicted_time,actual_time)
VALUES 
('2020-06-12 12:04:32',1,31,25.80,0.00,'12:25:00','12:23:00');
INSERT INTO delivery_orders (order_time,customer_id,restaurant_id,total_price,discount,predicted_time,actual_time)
VALUES 
('2020-06-18 20:20:19',2,68,35.75,5.00,'20:55:00','20:53:00'),
('2020-03-15 15:53:45',3,39,30.65,0.00,'16:33:00','16:30:00'),
('2021-01-13 20:15:32',4,75,20.95,10.00,'20:42:00','20:40.00'),
('2022-07-23 17:45:24',4,75,32.45,0.00,'18:23:00','18:22:00'),
('2019-05-06 11:03:12',5,43,20.65,0.00,'11:35:00','11:33:00'),
('2020-03-25 18:23:45',6,92,40.55,0.00,'19:03:00','18:55:00'),
('2022-04-29 18:40:21',7,96,50.75,2.00,'19:20:00','19:21:00'),
('2023-05-24 01:10:09',8,133,25.44,0.00,'01:33:00','01:30:00'),
('2022-12-17 14:17:12',9,84,15.75,2.00,'14:55:00','15:01:00'),
('2021-08-12 10:40:30',10,7,23.55,0.00,'11:23:00','11:19:00'),
('2022-09-12 16:23:16',10,2,27.96,0.00,'16:59:00','17:01:00'),
('2019-04-27 13:28:21',11,67,34.28,0.00,'14:04:00','13:56:00'),
('2019-06-30 17:32:56',12,70,35.75,5.00,'18:10:00','18:07:00'),
('2020-10-13 12:05:43',13,96,65.32,10.00,'12:43:00','12:40:00'),
('2022-05-10 13:19:10',14,65,32.30,0.00,'14:01:00','13:58:00'),
('2023-01-12 14:10:27',15,112,26.71,0.00,'14:50:00','14:51:00'),
('2021-10-12 11:45:12',16,125,42.65,0.00,'12:25:00','12:22:00'),
('2019-05-14 13:02:56',17,129,39.53,0.00,'13:40:00','13:39:00'),
('2020-07-26 17:12:47',17,129,25.95,0.00,'17:59:00','18:02:00'),
('2023-03-29 18:24:16',18,91,20.75,2.00,'18:57:00','19:01:00'),
('2020-02-20 14:56:06',19,11,41.58,0.00,'15:43:00','15:41:00'),
('2021-08-12 19:32:45',19,14,72.96,25.00,'20:05:00','20:05:00'),
('2021-12-28 10:11:53',20,80,26.37,0.00,'10:49:00','10:50:00'),
('2022-09-10 15:56:03',21,111,32.95,0.00,'16:35:00','16:32:00'),
('2022-12-05 17:21:09',23,92,41.25,2.00,'17:59:00','17:54:00'),
('2023-05-01 13:16:24',23,94,47.56,0.00,'14:01:00','14:01:00'),
('2020-10-29 14:32:23',24,76,75.45,0.00,'15:16:00','15:13:00'),
('2022-10-17 13:10:21',25,99,25.70,0.00,'13:50:00','13:50:00'),
('2021-07-15 18:15:52',26,112,15.25,2.00,'18:47:00','18:46:00'),
('2022-04-15 11:13:28',27,128,36.52,0.00,'11:59:00','11:58:00'),
('2019-02-28 16:21:18',28,62,40.79,0.00,'16:59:00','17:01:00'),
('2019-05-16 16:32:56',29,51,45.88,0.00,'17:05:00','17:10:00'),
('2020-01-18 12:05:34',29,52,31.25,0.00,'12:47:00','12:45:00'),
('2020-07-14 16:48:12',30,88,53.05,0.00,'17:29:00','17:28:00'),
('2022-07-20 20:13:45',31,68,23.56,0.00,'20:50:00','20:49:00'),
('2022-12-09 12:01:23',31,66,41.78,0.00,'12:55:00','12:54:00'),
('2021-12-06 18:23:54',32,48,63.95,0.00,'19:05:00','19:07:00'),
('2021-04-24 12:01:20',34,132,36.12,0.00,'12:40:00','12:35:00'),
('2019-10-07 19:21:45',35,104,30.25,0.00,'20:01:00','19:59:00'),
('2023-03-02 14:19:34',36,108,25.89,2.00,'14:52:00','14:53:00'),
('2021-07-20 13:31:54',37,80,42.75,0.00,'14:10:00','14:12:00'),
('2023-04-21 19:26:12',37,80,25.95,0.00,'20:01:00','19:58:00'),
('2022-05-20 12:05:56',38,50,39.47,0.00,'12:45:00','12:43:00'),
('2021-12-07 11:32:45',39,29,35.95,0.00,'12:15:00','12:15:00'),
('2020-06-30 13:45:26',40,66,17.95,0.00,'14:27:00','14:25:00'),
('2022-09-29 18:34:51',41,122,35.63,0.00,'19:15:00','19:19:00'),
('2022-04-12 11:52:19',42,32,42.95,2.00,'12:25:00','12:24:00'),
('2019-09-11 12:15:54',43,114,25.41,0.00,'12:45:00','12:46:00'),
('2021-10-19 14:36:35',44,52,35.75,0.00,'15:25:00','15:23:00'),
('2020-04-01 22:17:43',45,89,25.74,0.00,'22:57:00','22:55:00');
------------------------------------------------------------------------------
/* 1. Query first 10 customers in alphabetical order */
SELECT first_name, last_name FROM CUSTOMERS
ORDER BY first_name ASC
LIMIT 10;

/* 2. Query total  number of customers */
SELECT COUNT(id) FROM customers;

/* 3. Query total number of inactive users*/
SELECT COUNT(customers.id) FROM customers
LEFT JOIN delivery_orders ON customers.id = delivery_orders.customer_id
WHERE customer_id IS NULL;

/* 4. Query total number of orders for each customer */
SELECT  customers.first_name,customers.last_name, COUNT(*) AS number_of_orders
FROM customers 
INNER JOIN delivery_orders
ON customers.id = delivery_orders.customer_id
GROUP BY customers.first_name,customers.last_name
HAVING COUNT(*) > 0;

/*5. Determine the most popular restaurant for delivery orders */
SELECT restaurants.name, COUNT(*) AS popular_restaurant
FROM restaurants
INNER JOIN delivery_orders 
ON restaurants.restaurant_id = delivery_orders.restaurant_id
GROUP BY restaurants.name
HAVING COUNT(*) > 0
ORDER BY popular_restaurant DESC
LIMIT 1;

/* 6. Percent of users who have never ordered */ 
SELECT (FORMAT((SELECT  count(id)
FROM customers
WHERE id NOT IN (select customer_id FROM delivery_orders))/(count(id)) * 100,2)) AS 'Percent of users who never ordered'
FROM customers;

