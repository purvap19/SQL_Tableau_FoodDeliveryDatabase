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
name VARCHAR(25) NOT NULL,
address VARCHAR(50) NOT NULL,
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
total_price DECIMAL(3,2),
discount DECIMAL(3,2),
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
  


